KEY_ACTION_ESCAPE        = 0x00000091; -- Escape
KEY_ACTION_TOGGLE_HUD    = 0x100000B3; -- F12
KEY_ACTION_REPOSITION_UI = 0x1000007B; -- Ctrl + \

function DrawMainWin()

    local tempWidth = MainWindowWidth;
    local tempHeight = MainWindowHeight;

    -- Main Parent window to hold all the elements
    wMainWinParent = Turbine.UI.Lotro.Window();
    wMainWinParent:SetSize(tempWidth,tempHeight);
    wMainWinParent:SetPosition(SETTINGS.MAINWIN.X,SETTINGS.MAINWIN.Y);
    wMainWinParent:SetText(PLUGIN_NAME);
    wMainWinParent:SetVisible(SETTINGS.MAINWIN.VISIBLE);

    Onscreen(wMainWinParent); -- Makes sure the window is still onscreen (perhaps user changed resolution since last playing)


    local _FESTIVALS = {};

    for k,v in ipairs(FESTIVALS_UI_ORDER) do
        table.insert(_FESTIVALS,GetString(_LANG.FESTIVALS[v]));
    end

    ddFestivals = DropDown(_FESTIVALS,GetString(_LANG.FESTIVALS[SELECTEDFESTIVAL]));
    ddFestivals:SetParent(wMainWinParent);
    ddFestivals:SetPosition(50,40);
    ddFestivals:SetWidth(200);

    wHobnanigans:SetParent(wMainWinParent);
    wHobnanigans:SetPosition(20, 122);
    wHobnanigans:SetVisible(SELECTEDFESTIVAL == HOBNANIGANS);

    ddFestivals.ItemChanged = function (Sender,Args)
        SELECTEDFESTIVAL = FESTIVALS_UI_ORDER[Args.Index];
        SETTINGS.FESTIVAL = SELECTEDFESTIVAL;
        SETTINGS.QUEST = nil;
        SELECTEDQUEST = "";
        SELECTEDQUESTKEY = "";
        FillMainWin(SELECTEDFESTIVAL);
        MazeMapUpdateFestival(SELECTEDFESTIVAL);
        CloseHelperWindows();
        RefreshTokenView();
        RefreshBarterList();
        CheckFestivalData(_CHARDATA.CHARS[MYCHAR:GetName()]);
        QuickGuideWinLoadFestival();
        if ddAltNames ~= nil then RefreshAltDisplay(ddAltNames:GetText()) end;

        -- Hide the UI elements that aren't useful for Hobnanigans:
        ddQuests:SetVisible(SELECTEDFESTIVAL ~= HOBNANIGANS);
        btnDance:SetVisible(SELECTEDFESTIVAL ~= HOBNANIGANS);
        btnAlts:SetVisible(SELECTEDFESTIVAL ~= HOBNANIGANS);

        -- Hide if we don't have a quick guide:
        btnQuickGuides:SetVisible(QUICK_GUIDES[SELECTEDFESTIVAL]);

        -- Show an alternate visual instead:
        wHobnanigans:SetVisible(SELECTEDFESTIVAL == HOBNANIGANS);

    end

    -- Control to hold the elements which change depending on the festival
    wMainWinHolder = Turbine.UI.Control();
    wMainWinHolder:SetParent(wMainWinParent);
    wMainWinHolder:SetSize(tempWidth-9,tempHeight-160);
    wMainWinHolder:SetPosition(5,70);

    FillMainWin(SELECTEDFESTIVAL);

    -- Common elements

    wMainCommonHolder = Turbine.UI.Control();
    wMainCommonHolder:SetParent(wMainWinParent);
    wMainCommonHolder:SetSize(tempWidth-20,45);
    wMainCommonHolder:SetPosition(10,wMainWinHolder:GetTop() + wMainWinHolder:GetHeight() + 5);
    wMainCommonHolder:SetBackground(_IMAGES.COMMONBACK);

    btnDance = Turbine.UI.Lotro.Button();
    btnDance:SetParent(wMainCommonHolder);
    btnDance:SetWidth(100);
    btnDance:SetPosition(30,10);
    btnDance:SetText(GetString(_LANG.BUTTONS.DANCE));
    btnDance:SetVisible(SELECTEDFESTIVAL ~= HOBNANIGANS);

    btnDance.MouseClick = function (sender,args)

        if SETTINGS.DANCEWIN.VISIBLE == true then
            SETTINGS.DANCEWIN.VISIBLE = false;
        else
            SETTINGS.DANCEWIN.VISIBLE = true;
        end

        wDanceParent:SetVisible(SETTINGS.DANCEWIN.VISIBLE);

    end

    btnBarter = Turbine.UI.Lotro.Button();
    btnBarter:SetParent(wMainCommonHolder);
    btnBarter:SetWidth(100);
    btnBarter:SetPosition(150,10);
    btnBarter:SetText(GetString(_LANG.OTHER.BARTER));

    btnBarter.MouseClick = function (sender,args)

        if SETTINGS.BARTERWIN.VISIBLE == true then
            SETTINGS.BARTERWIN.VISIBLE = false;
        else
            SETTINGS.BARTERWIN.VISIBLE = true;
        end

        wBarterWinParent:SetVisible(SETTINGS.BARTERWIN.VISIBLE);

    end

    btnQuickGuides = Turbine.UI.Lotro.Button();
    btnQuickGuides:SetParent(wMainWinParent);
    btnQuickGuides:SetWidth(100);
    btnQuickGuides:SetPosition((tempWidth/6),tempHeight-33);
    btnQuickGuides:SetText(GetString(_LANG.OTHER.QUICK_GUIDE))
    btnQuickGuides:SetVisible(QUICK_GUIDES[SELECTEDFESTIVAL]);
    btnQuickGuides.Click = function(sender, args)
        QuickGuideWinSetVisible(true);
    end

    btnAlts = Turbine.UI.Lotro.Button();
    btnAlts:SetParent(wMainWinParent);
    btnAlts:SetWidth(100);
    btnAlts:SetPosition((tempWidth/2),tempHeight-33);
    btnAlts:SetText(GetString(_LANG.OTHER.ALTS));
    btnAlts:SetVisible(SELECTEDFESTIVAL ~= HOBNANIGANS);

    btnAlts.MouseClick = function (sender,args)

        if SETTINGS.ALTWIN.VISIBLE == true then
            SETTINGS.ALTWIN.VISIBLE = false;
        else
            SETTINGS.ALTWIN.VISIBLE = true;

            if ddAltNames ~= nil then
                RefreshAltDisplay(ddAltNames:GetText());
            end
        end

        wAltWinParent:SetVisible(SETTINGS.ALTWIN.VISIBLE);

    end

    btnMazeMap = Turbine.UI.Lotro.Button();
    btnMazeMap:SetParent(wMainWinParent);
    btnMazeMap:SetWidth(100);
    btnMazeMap:SetPosition((tempWidth/6),tempHeight-33);
    btnMazeMap:SetText(GetString(_LANG.OTHER.MAP));
    btnMazeMap:SetVisible(_QUESTSTRINGS[SELECTEDFESTIVAL].MAP ~= nil);
    btnMazeMap.MouseClick = function (sender,args)
        MazeMapToggleVisibility();
    end

    cReposCursor=Turbine.UI.Window();
    cReposCursor:SetSize(32,32);
    cReposCursor:SetBackground(_IMAGES.REPOSCURSOR)
    cReposCursor:SetStretchMode(2);
    cReposCursor:SetMouseVisible(false);
    cReposCursor:SetZOrder(1000);
    cReposCursor:SetVisible(false);



    -- Window events
    wMainWinParent.Update = function (sender,args)
        wMainWinParent:SetWantsUpdates(false);
        RefreshTokenView();
    end

    wMainWinParent.Closing = function()
        SETTINGS.MAINWIN.VISIBLE = false;
        print(GetString(_LANG.OTHER.COMMAND));
    end

    wMainWinParent.PositionChanged = function()
        SETTINGS.MAINWIN.X = wMainWinParent:GetLeft();
        SETTINGS.MAINWIN.Y = wMainWinParent:GetTop();
    end

    wMainWinParent:SetWantsKeyEvents(true);

    wMainWinParent.KeyDown = function (sender,args)
        if args.Action == KEY_ACTION_TOGGLE_HUD then -- handles F12 button

            SETTINGS.SHOWSCREEN = not SETTINGS.SHOWSCREEN;

            if SETTINGS.SHOWSCREEN then
                wMainWinParent:SetVisible(SETTINGS.MAINWIN.VISIBLE);
                wAltWinParent:SetVisible(SETTINGS.ALTWIN.VISIBLE);
                wBarterWinParent:SetVisible(SETTINGS.BARTERWIN.VISIBLE);
                wDanceParent:SetVisible(SETTINGS.DANCEWIN.VISIBLE);
                wQuickGuideWinParent:SetVisible(SETTINGS.QUICK_GUIDE_WIN.VISIBLE);

                if wMainWinParent:IsVisible() == true then
                    EmotesAssistSetVisible(SETTINGS.EMOTEWIN.VISIBLE);
                    QSAssistSetVisible(SETTINGS.QSWIN.VISIBLE);
                end
            else
                wMainWinParent:SetVisible(false);
                wAltWinParent:SetVisible(false);
                wBarterWinParent:SetVisible(false);
                wDanceParent:SetVisible(false);
                wQuickGuideWinParent:SetVisible(false);

                EmotesAssistSetVisible(false);
                QSAssistSetVisible(false);
            end

            ToggleHUD_Fireworks();
        end

        if args.Action == KEY_ACTION_ESCAPE and SETTINGS.ESCAPE_KEY_CLOSES_WINDOWS then -- handles Esc button
            if wMainWinParent:IsVisible() == true then
                SETTINGS.MAINWIN.VISIBLE = false;
                wMainWinParent:SetVisible(false);

                SETTINGS.ALTWIN.VISIBLE = false;
                wAltWinParent:SetVisible(false);

                SETTINGS.BARTERWIN.VISIBLE = false;
                wBarterWinParent:SetVisible(false);

                SETTINGS.DANCEWIN.VISIBLE = false;
                wDanceParent:SetVisible(false);

                EmotesAssistSetVisible(false);
                QSAssistSetVisible(false);

                print(GetString(_LANG.OTHER.COMMAND));
            end

            QuickGuideWinSetVisible(false);

            MazeMapSetVisible(false);
        end

        if args.Action == KEY_ACTION_REPOSITION_UI and SELECTEDQUEST == GetString(_LANG.QUESTS[5].BREEFIREWORKS) then
            RepositionUI_Fireworks();
        end

    end

    -- Load whatever festival & quest was in the UI last time, if any:
    if (SETTINGS.FESTIVAL) then
        RefreshFestival(SETTINGS.FESTIVAL);

        if (SETTINGS.QUEST) then
            LoadQuest(SETTINGS.QUEST);
        end
    end

    MainWinCreateMinimizeIcon();
    MainWinDrawOptionsButton();

    wMainWinParent:SetStretchMode(1);
    MainWinRedraw();

    AddCallback(Turbine.UI.Display, "SizeChanged", function()
        MainWinRedraw();
    end)

    -- TODO: Uncomment once the todos in DrawResizeThumb are addressed.
    --DrawResizeThumb();
end

function DrawResizeThumb()
    local thumbWidth = 30;
    local thumbHeight = 30;
    local thumb = Turbine.UI.Control();

    local isDown = false;
    local dragStartX = 0; -- relative to upper-left of main window
    local dragStartY = 0; -- relative to upper-left of main window

    thumb:SetParent(wMainWinParent);
    thumb:SetSize(thumbWidth, thumbHeight);
    thumb:SetPosition(
        wMainWinParent:GetWidth() - thumbWidth,
        wMainWinParent:GetHeight() - thumbHeight);
    --thumb:SetBackColor(Turbine.UI.Color.DarkTurquoise);
    thumb.MouseDown = function(sender, args)
        isDown = true;

        local mouseCurrentX, mouseCurrentY = Turbine.UI.Display.GetMousePosition();
        local windowCurrentX, windowCurrentY = wMainWinParent:GetPosition();
        dragStartX = mouseCurrentX - windowCurrentX;
        dragStartY = mouseCurrentY - windowCurrentY;
    end
    thumb.MouseMove = function(sender, args)
        if (isDown) then
            -- todo: Account for the offset of the mouse cursor in the drag box, so we don't shrink a bit at the start.
            local mouseCurrentX, mouseCurrentY = Turbine.UI.Display.GetMousePosition();
            local windowCurrentX, windowCurrentY = wMainWinParent:GetPosition();
            local dragX = mouseCurrentX - windowCurrentX;

            -- todo: Don't let the window get bigger than the screen!
            local screenWidth = Turbine.UI.Display:GetWidth();
            local screenHeight = Turbine.UI.Display.GetHeight();

            -- Todo: Calculate once, update when resolution changes:
            local maxScaleX = screenWidth / MainWindowWidth; -- e.g. 1920 / 300 = 6.4
            local proportinalWidth = math.min(dragX / screenWidth, maxScaleX);

            -- Update the settings, redraw:
            SETTINGS.MAINWIN.WIDTH = proportinalWidth;
            MainWinRedraw();

            -- TODO: Update the text in the Options window

        end
    end
    thumb.MouseUp = function(sender, args)
        isDown = false;
    end

end

function MainWinCreateMinimizeIcon()
    if (wMainWinParent.minimizeIcon == nil) then
        wMainWinParent.minimizeIcon = MinimizedIcon();
    end
end

function MainWinDrawOptionsButton()
    local optionsButton = Turbine.UI.Control();
    optionsButton:SetParent(wMainWinParent);
    optionsButton:SetBackground(_IMAGES.OPTIONS_NORMAL);
    optionsButton:SetPosition(18, 37);
    optionsButton:SetSize(24, 24);
    optionsButton:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
    optionsButton.MouseClick = function()
        Turbine.PluginManager.ShowOptions(Plugins[PLUGIN_NAME]);
    end
    optionsButton.MouseEnter = function()
        optionsButton:SetBackground(_IMAGES.OPTIONS_ROLLOVER);
    end
    optionsButton.MouseDown = function()
        optionsButton:SetBackground(_IMAGES.OPTIONS_PRESSED);
    end
    optionsButton.MouseUp = function()
        optionsButton:SetBackground(_IMAGES.OPTIONS_ROLLOVER);
    end
    optionsButton.MouseLeave = function()
        optionsButton:SetBackground(_IMAGES.OPTIONS_NORMAL);
    end
end

function FillMainWin(FESTIVAL)

    if FESTIVAL == nil then return end;

    wMainWinHolder:GetControls():Clear();

    wMainWinHolder:SetBackground(_IMAGES[FESTIVAL].BACKGROUND);

    -- TOKENS --------------------------------------------------------------------------
    cTokenHolder = Turbine.UI.ListBox();
    cTokenHolder:SetParent(wMainWinHolder);
    cTokenHolder:SetSize(0,34);
    cTokenHolder:SetPosition(10,2);
    cTokenHolder:SetOrientation(Turbine.UI.Orientation.Horizontal);

    scTokenHolder = Turbine.UI.Lotro.ScrollBar();
    scTokenHolder:SetParent(wMainWinHolder);
    scTokenHolder:SetSize(wMainWinHolder:GetWidth()-20,8);
    scTokenHolder:SetPosition(10,cTokenHolder:GetTop() + cTokenHolder:GetHeight());
    scTokenHolder:SetOrientation(Turbine.UI.Orientation.Horizontal);
    scTokenHolder:SetZOrder(200000);
    scTokenHolder:SetVisible(false);

    cTokenHolder:SetHorizontalScrollBar(scTokenHolder);

    --RefreshTokenView();

    -- COOLDOWNS -------------------------------------------------------------------------
    cDebuffHolder = Turbine.UI.ListBox();
    cDebuffHolder:SetParent(wMainWinHolder);
    cDebuffHolder:SetSize(wMainWinHolder:GetWidth()-28,144);
    cDebuffHolder:SetPosition(13,scTokenHolder:GetTop() + 18);
    cDebuffHolder:SetOrientation(Turbine.UI.Orientation.Horizontal);
    cDebuffHolder:SetMaxItemsPerLine(2);

    scDebuffHolder = Turbine.UI.Lotro.ScrollBar();
    scDebuffHolder:SetParent(wMainWinHolder);
    scDebuffHolder:SetSize(8,cDebuffHolder:GetHeight());
    scDebuffHolder:SetPosition(cDebuffHolder:GetLeft()+cDebuffHolder:GetWidth(),cDebuffHolder:GetTop());
    scDebuffHolder:SetOrientation(Turbine.UI.Orientation.Vertical);
    scDebuffHolder:SetZOrder(200000);
    scDebuffHolder:SetVisible(false);

    cDebuffHolder:SetVerticalScrollBar(scDebuffHolder);

    -- QUEST GUIDE -----------------------------------------------------------------------
    local _REFORMATQUESTS = {};

    for k,v in pairs(_LANG.QUESTS[FESTIVAL]) do
        local isHidden = _QUESTSTRINGS[FESTIVAL][k] and _QUESTSTRINGS[FESTIVAL][k].HIDDEN;
        if (not isHidden) then
            table.insert(_REFORMATQUESTS,GetString(v));
        end
    end
    table.sort(_REFORMATQUESTS);

    ddQuests = DropDown(_REFORMATQUESTS,"");
    ddQuests:SetParent(wMainWinHolder);
    ddQuests:SetPosition(45,cDebuffHolder:GetTop()+cDebuffHolder:GetHeight() + 10);
    ddQuests:SetWidth(200);
    ddQuests:SetAlignment("Left");
    ddQuests:SetVisible(FESTIVAL ~= HOBNANIGANS);
    
    ddQuests.ItemChanged = function (Sender,Args)
        RefreshQuestGuide(Args.Text);
    end

    questMapImage = Turbine.UI.Control();
    questMapImage:SetParent(wMainWinHolder);
    questMapImage:SetPosition(15, 52);
    questMapImage:SetSize(262, 147);
    questMapImage:SetVisible(false);
    questMapImage:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);

    local questGuideHeight = 120 - 10; -- save room for checkboxes
    lblQuestGuide = Turbine.UI.Label();
    lblQuestGuide:SetParent(wMainWinHolder);
    lblQuestGuide:SetSize(wMainWinHolder:GetWidth()-38, questGuideHeight);
    lblQuestGuide:SetPosition(18,ddQuests:GetTop()+ddQuests:GetHeight() + 5);
    lblQuestGuide:SetMarkupEnabled(true);
    lblQuestGuide:SetFont(Verdana12);

    sclblQuestGuide = Turbine.UI.Lotro.ScrollBar();
    sclblQuestGuide:SetParent(wMainWinHolder);
    sclblQuestGuide:SetSize(8,lblQuestGuide:GetHeight());
    sclblQuestGuide:SetPosition(lblQuestGuide:GetLeft()+lblQuestGuide:GetWidth()+6,lblQuestGuide:GetTop());
    sclblQuestGuide:SetOrientation(Turbine.UI.Orientation.Vertical);
    sclblQuestGuide:SetZOrder(200000);
    sclblQuestGuide:SetVisible(false);

    lblQuestGuide:SetVerticalScrollBar(sclblQuestGuide);

    local backgroundCheckboxX = 30;
    local autoOpenCheckboxX = 170;
    local checkBoxY = lblQuestGuide:GetTop() + lblQuestGuide:GetHeight() - 18;

    backgroundCheckbox = Turbine.UI.Lotro.CheckBox();
    backgroundCheckbox:SetParent(wMainWinHolder);
    backgroundCheckbox:SetText(GetString(_LANG.BUTTONS.BACKGROUND));
    backgroundCheckbox:SetWidth(100);
    backgroundCheckbox:SetPosition(backgroundCheckboxX, checkBoxY);
    backgroundCheckbox:SetVisible(false);
    backgroundCheckbox.CheckedChanged = function (sender, args)
        local isChecked = backgroundCheckbox:IsChecked();
        SETTINGS_ACCOUNT.QUEST_IS_BACKGROUNDED[SELECTEDQUESTKEY] = isChecked;
    end

    autoOpenCheckbox = Turbine.UI.Lotro.CheckBox();
    autoOpenCheckbox:SetParent(wMainWinHolder);
    autoOpenCheckbox:SetText(GetString(_LANG.BUTTONS.AUTO_OPEN));
    autoOpenCheckbox:SetWidth(100);
    autoOpenCheckbox:SetPosition(autoOpenCheckboxX, checkBoxY);
    autoOpenCheckbox:SetVisible(false);
    autoOpenCheckbox.CheckedChanged = function (sender, args)
        local isChecked = autoOpenCheckbox:IsChecked();
        SETTINGS_ACCOUNT.QUEST_IS_AUTO_OPEN[SELECTEDQUESTKEY] = isChecked;
    end

    if (btnMazeMap ~= nil) then
        btnMazeMap:SetVisible(_QUESTSTRINGS[FESTIVAL].MAP ~= nil);
    end

    RefreshDebuffView();
end

function SetMainWinVisible(newIsVisible)
    local currentIsVisible = wMainWinParent:IsVisible();
    if newIsVisible == currentIsVisible then return; end

    if currentIsVisible == false then
        wMainWinParent:SetVisible(true);
        SETTINGS.MAINWIN.VISIBLE = true;

        EmotesAssistSetVisible(SETTINGS.EMOTEWIN.VISIBLE);
        QSAssistSetVisible(SETTINGS.QSWIN.VISIBLE);

        wMainWinParent:Activate();
    else
        wMainWinParent:SetVisible(false);
        SETTINGS.MAINWIN.VISIBLE = false;

        CloseHelperWindows();
    end
end

function CloseHelperWindows()
    if wEmoteAssistParent ~= nil then wEmoteAssistParent:Close() end;
    if wQSAssistParent ~= nil then wQSAssistParent:Close() end;
    ToggleVisibility_Fireworks(false);
end

function RefreshFestival(festival)
    if (festival == SELECTEDFESTIVAL) then return; end

    -- Update the text of the dropdown:
    ddFestivals:SetText(GetString(_LANG.FESTIVALS[festival]));

    -- Trigger the itemChanged logic of the dropdown:
    -- Given the festival key, get the UI index:
    local index = 1;
    for i=1,#FESTIVALS_UI_ORDER do
        if (FESTIVALS_UI_ORDER[i] == festival) then
            index = i;
        end
    end

    local args = {Index = index};
    ddFestivals.ItemChanged(nil, args);

    MazeMapUpdateFestival(festival);
end

function LoadQuest(questKey)
    SETTINGS.QUEST = questKey;
    local questName = GetString(_LANG.QUESTS[SELECTEDFESTIVAL][questKey])
    if ddQuests ~= nil then ddQuests:SetText(questName) end;

    SELECTEDQUESTKEY = questKey;
    if (_QUESTSTRINGS[SELECTEDFESTIVAL][questKey]) then
        -- Remove the scrollbar before setting text or the label scrolls to the bottom:
        lblQuestGuide:SetVerticalScrollBar(nil);
        lblQuestGuide:SetText(GetString(_QUESTSTRINGS[SELECTEDFESTIVAL][questKey].STRING));
        -- Put it back after setting text and the scroll will be at the top:
        lblQuestGuide:SetVerticalScrollBar(sclblQuestGuide);

        if (_QUESTSTRINGS[SELECTEDFESTIVAL][questKey].IMAGE) then
            questMapImage:SetVisible(true);
            questMapImage:SetBackground(_QUESTSTRINGS[SELECTEDFESTIVAL][questKey].IMAGE);
        else
            questMapImage:SetVisible(false);
        end

        if SETTINGS.EMOTESASSIST == true and _QUESTSTRINGS[SELECTEDFESTIVAL][questKey].EMOTES ~= nil then CreateEmotesAssist(GetString(_QUESTSTRINGS[SELECTEDFESTIVAL][questKey].EMOTES)) end;
        if SETTINGS.QSASSIST == true and _QUESTSTRINGS[SELECTEDFESTIVAL][questKey].QUICKSLOTS ~= nil then CreateQuickSlotAssit(GetString(_QUESTSTRINGS[SELECTEDFESTIVAL][questKey].QUICKSLOTS)) end;
    else
        questMapImage:SetVisible(false);
    end

    -- Put a special case here for GetString(_LANG.QUESTS[5].BREEFIREWORKS):
    -- if that quest, show the Event Quickslot template of choice,
    -- otherwise, hide it.
    ToggleVisibility_Fireworks(questKey == "BREEFIREWORKS");

    MazeMapUpdateQuest(questKey);

    -- If requested, make sure window is visible
    if (SETTINGS_ACCOUNT.QUEST_IS_AUTO_OPEN ~= nil and
        SETTINGS_ACCOUNT.QUEST_IS_AUTO_OPEN[questKey]) then
        SetMainWinVisible(true);
    end

    -- Make the checkboxes visible if appropriate, and set value:
    backgroundCheckbox:SetVisible(BACKROUNDABLE_QUESTS[questKey]);
    backgroundCheckbox:SetChecked(SETTINGS_ACCOUNT.QUEST_IS_BACKGROUNDED[questKey]);

    autoOpenCheckbox:SetVisible(true);
    autoOpenCheckbox:SetChecked(SETTINGS_ACCOUNT.QUEST_IS_AUTO_OPEN[questKey]);
end

function RefreshQuestGuide(QUESTNAME)

    SELECTEDQUEST = QUESTNAME;
    local _QUESTS = _LANG.QUESTS[SELECTEDFESTIVAL];

    CloseHelperWindows();
    -- Clear any existing text:
    lblQuestGuide:SetText("");

    for k,v in pairs (_QUESTS) do

        if GetString(v) == QUESTNAME then
            LoadQuest(k);
            break;
        end
    end
end


function RefreshDebuffView()

    cDebuffHolder:ClearItems();

    local ITEMWIDTH = (cDebuffHolder:GetWidth()/2);
    local ITEMHEIGHT = 36;
    local EFFECTSCOUNT = EFFECTS:GetCount();

    for k,v in ipairs (_LANG.DEBUFFS[SELECTEDFESTIVAL]) do
        local debuffKey = v.key;
        local debuffName = GetString(v.name);

        -- Draw controls

        local cCURITEM = Turbine.UI.Control();
        cCURITEM:SetSize(ITEMWIDTH,ITEMHEIGHT);

        local cCURITEMICON = Turbine.UI.Control();
        cCURITEMICON:SetParent(cCURITEM);
        cCURITEMICON:SetSize(32,32);
        cCURITEMICON:SetPosition(0,2);
        cCURITEMICON:SetBlendMode(4);


        local cCURITEMLABEL = Turbine.UI.Label();
        cCURITEMLABEL:SetParent(cCURITEM);
        cCURITEMLABEL:SetSize(ITEMWIDTH-34,ITEMHEIGHT-4);
        cCURITEMLABEL:SetPosition(34,2);
        cCURITEMLABEL:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
        cCURITEMLABEL:SetFont(Verdana12);
        --cCURITEMLABEL:SetOutlineColor(BLACK);
        --cCURITEMLABEL:SetFontStyle(Turbine.UI.FontStyle.Outline);
        cCURITEMLABEL:SetText(debuffName);
        cCURITEMLABEL:SetMouseVisible(true);


        -- Test for debuff
        local blCURDEBUFFFOUND = false;

        for i=1, EFFECTSCOUNT do

            local CUREFFECT = EFFECTS:Get(i);
            local CUREFFECTNAME = CUREFFECT:GetName();

            if debuffName == CUREFFECTNAME then
                -- Debuff found
                blCURDEBUFFFOUND = true;

                -- Store expiry time in _CHARDATA
                local EFFECTEND = CUREFFECT:GetStartTime() + CUREFFECT:GetDuration();

                _CHARDATA.CHARS[MYCHAR:GetName()][SELECTEDFESTIVAL]["COOLDOWNS"][v.key] = EFFECTEND;

                break;
            end
        end

        -- Adjust label accordingly.
        if SELECTEDFESTIVAL == YULE then -- handles theatre roles debuffs / inverted from normal debuffs
            if blCURDEBUFFFOUND == false then
                cCURITEMLABEL:SetForeColor(GREY);
                cCURITEMICON:SetBackground(_IMAGES.HOURGLASS);
                cCURITEMICON:SetSize(32,32);
                cCURITEMICON:SetPosition(0,2);

            else
                _CHARDATA.CHARS[MYCHAR:GetName()][SELECTEDFESTIVAL]["COOLDOWNS"][v.key] = 0;
                cCURITEMLABEL:SetForeColor(YELLOW);
                cCURITEMICON:SetBackground(_IMAGES.GREENTICK);
                cCURITEMICON:SetSize(25,22);
                cCURITEMICON:SetPosition(3,8);

                if debuffKey ~= "THEATRE" then
                    -- Current role has been found, set questguide
                    RefreshQuestGuide(GetString(_LANG.QUESTS[YULE][debuffKey]));
                    ISACTING = true;
                else
                    -- Debuff is THEATRE - only set guide if not acting
                    if ISACTING == false then RefreshQuestGuide(GetString(_LANG.QUESTS[YULE][debuffKey])) end;
                end
            end
        else
            if blCURDEBUFFFOUND == true then
                cCURITEMLABEL:SetForeColor(GREY);
                cCURITEMICON:SetBackground(_IMAGES.HOURGLASS);
                cCURITEMICON:SetSize(32,32);
                cCURITEMICON:SetPosition(0,2);

                local _END = GetEndTime(_CHARDATA.CHARS[MYCHAR:GetName()][SELECTEDFESTIVAL]["COOLDOWNS"][v.key]);
                local _CURDATE = Turbine.Engine.GetDate();

                local ENDMINUTE = tostring(_END.MINUTE);
                if string.len(ENDMINUTE) == 1 then ENDMINUTE = "0" .. ENDMINUTE end;

                if _CURDATE.Day == _END.DAY then
                    sEND = _END.HOUR .. ":" .. ENDMINUTE;
                else
                    sEND = _END.MONTH .. "/" .. _END.DAY .. " - " .. _END.HOUR .. ":" .. ENDMINUTE;
                end

                --cCURITEMLABEL:SetToolTip(GetString(_LANG.OTHER.RESETS) .. ": " .. sEND);

            else
                _CHARDATA.CHARS[MYCHAR:GetName()][SELECTEDFESTIVAL]["COOLDOWNS"][v.key] = 0;
                cCURITEMLABEL:SetForeColor(YELLOW);
                cCURITEMICON:SetBackground(_IMAGES.GREENTICK);
                cCURITEMICON:SetSize(25,22);
                cCURITEMICON:SetPosition(3,8);
            end
        end

        -- Add item to ListBox
        cDebuffHolder:AddItem(cCURITEM);

    end

end


function RefreshTokenView()

    cTokenHolder:ClearItems();

    local ITEMWIDTH = 40;
    local PARENTWIDTH = 0;

    -- Iterate the tokens by numerical index to keep the stated order:
    for tokenUiIndex=1, #TOKEN_UI_ORDER[SELECTEDFESTIVAL] do
        local tokenKey = TOKEN_UI_ORDER[SELECTEDFESTIVAL][tokenUiIndex];
        local tokenId = TOKEN_IDS[SELECTEDFESTIVAL][tokenKey];

        -- This will check each of the tokens for the selected festival to see if they exist in the wallet.
        -- TODO: Every time through this look we call GetTokenIndex which iterates through every item in the wallet.
        --   Replace this logic by getting the relevant details from the wallet for this festival first.
        local TOKENINDEX,ITEM = GetTokenIndex(tokenId);

        if TOKENINDEX ~= nil and TOKENINDEX ~= 0 then
            -- Exists in wallet.
            local TEMPITEM = MYWALLET:GetItem(TOKENINDEX);

            local cCURITEM = Turbine.UI.Control();
            cCURITEM:SetSize(ITEMWIDTH,36);

            local cItemInspect = Turbine.UI.Lotro.ItemInfoControl();
            cItemInspect:SetParent(cCURITEM);
            cItemInspect:SetSize(36,36);
            cItemInspect:SetPosition(0,0);
            cItemInspect:SetItemInfo(ITEM:GetItemInfo());
            cItemInspect:SetQuantity(TEMPITEM:GetQuantity());

            _CHARDATA.CHARS[MYCHAR:GetName()][SELECTEDFESTIVAL]["TOKENS"][tokenKey] = TEMPITEM:GetQuantity();

            PARENTWIDTH = PARENTWIDTH + ITEMWIDTH;

            cTokenHolder:AddItem(cCURITEM);

            if PARENTWIDTH > (wMainWinHolder:GetWidth()-20) then
                cTokenHolder:SetWidth(wMainWinHolder:GetWidth()-20);
                cTokenHolder:SetLeft(10);
            else
                cTokenHolder:SetWidth(PARENTWIDTH);
                cTokenHolder:SetLeft(wMainWinHolder:GetWidth()-PARENTWIDTH-10);
            end

            MYWALLET:GetItem(TOKENINDEX).QuantityChanged = function (sender,args)
                -- Quantity changed event
                cItemInspect:SetQuantity(TEMPITEM:GetQuantity());
                _CHARDATA.CHARS[MYCHAR:GetName()][SELECTEDFESTIVAL]["TOKENS"][tokenKey] = TEMPITEM:GetQuantity();
            end
        else
            _CHARDATA.CHARS[MYCHAR:GetName()][SELECTEDFESTIVAL]["TOKENS"][tokenKey] = 0;
        end

    end

end



function GetTokenIndex(itemID)

    if itemID == nil then return end;

    local TOKENINDEX = 0;

    local item = GetItemFromID(itemID);
    local itemName = item:GetItemInfo():GetName();

    for i=1, MYWALLET:GetSize() do
        if MYWALLET:GetItem(i):GetName() == itemName then
            TOKENINDEX = i;
            break;
        end
    end

    return TOKENINDEX,item;

end


-- This function creates a window displaying the list of quickslots
function CreateQuickSlotAssit(QSLIST)

    if QSLIST == nil then return end;

    local QSSIZE = 36;
    local QSHEIGHT = 36;

    local QSGAP = 10;
    local QSTOP = 20;
    local QSLEFT = 10;

    local tempHeight = 30+QSHEIGHT;
    local tempWidth = 0;

    wQSAssistParent = Turbine.UI.Window();
    wQSAssistParent:SetPosition(SETTINGS.QSWIN.X,SETTINGS.QSWIN.Y);
    wQSAssistParent:SetVisible(true);

    SETTINGS.QSWIN.VISIBLE = true;

    local blDRAGGING = false;
    local relX = 0;
    local relY = 0;

    wQSReposBar = Turbine.UI.Control();
    wQSReposBar:SetParent(wQSAssistParent);
    wQSReposBar:SetSize(tempWidth-20,QSTOP-3);
    wQSReposBar:SetMouseVisible(true);


    wQSReposBar.MouseEnter = function (sender,args)
        cReposCursor:SetPosition(Turbine.UI.Display.GetMouseX()-16,Turbine.UI.Display.GetMouseY()-16);
        cReposCursor:SetVisible(true);
    end

    wQSReposBar.MouseLeave = function (sender,args)
        cReposCursor:SetVisible(false);
    end

    wQSReposBar.MouseDown = function (sender, args)
        blDRAGGING = true;
        relX = args.X;
        relY = args.Y;
    end

    wQSReposBar.MouseUp = function (sender, args)
        blDRAGGING = false;
    end

    wQSReposBar.MouseMove = function (sender, args)

        local scX = Turbine.UI.Display.GetMouseX();
        local scY = Turbine.UI.Display.GetMouseY();

        if blDRAGGING == true then

            SETTINGS.QSWIN.X = scX - relX;
            SETTINGS.QSWIN.Y = scY - relY;

            wQSAssistParent:SetPosition(SETTINGS.QSWIN.X,SETTINGS.QSWIN.Y);
            Onscreen(wQSAssistParent);
        end

        cReposCursor:SetPosition(scX-16,scY-16);
    end

    local wEmoteBack = Turbine.UI.Control();
    wEmoteBack:SetParent(wQSAssistParent);
    wEmoteBack:SetBackColor(Turbine.UI.Color(0.9,0,0,0));
    wEmoteBack:SetMouseVisible(false);


    local cCloseIcon = Turbine.UI.Control();
    cCloseIcon:SetParent(wQSAssistParent);
    cCloseIcon:SetSize(16,16);
    cCloseIcon:SetPosition(tempWidth-16,1);
    cCloseIcon:SetBackground(_IMAGES.CLOSE_NORMAL);

    cCloseIcon.MouseEnter = function ()
        cCloseIcon:SetBackground(_IMAGES.CLOSE_OVER);
    end

    cCloseIcon.MouseLeave = function ()
        cCloseIcon:SetBackground(_IMAGES.CLOSE_NORMAL);
    end

    cCloseIcon.MouseClick = function ()
        wQSAssistParent:Close();
    end

    --[[
            {
            [1] = {["TYPE"]="Item";["NAME"]="Piece of Frostbluff Rotten Fruit";};
            [2] = {["TYPE"]="Item";["NAME"]="Bag of Frostbluff Flower Petals";};
            };
    --]]

    -- Loop
    for k,v in pairs (QSLIST) do

        local QSTYPE = v.TYPE;
        local QSNAME = v.NAME;

        if QSTYPE == "Item" then

            local icAssist = Turbine.UI.Lotro.ItemControl();
            icAssist:SetParent(wQSAssistParent);
            icAssist:SetSize(QSSIZE,QSHEIGHT);
            icAssist:SetPosition(QSLEFT,QSTOP);
            icAssist:SetZOrder(1);
            icAssist:SetAllowDrop(false);
            icAssist:SetVisible(true);
            icAssist:SetItem(GetInvItem(icAssist,QSNAME));

        else

            local qsAssist = Turbine.UI.Lotro.Quickslot();
            qsAssist:SetParent(wQSAssistParent);
            qsAssist:SetSize(QSSIZE,QSHEIGHT);
            qsAssist:SetPosition(QSLEFT,QSTOP);
            qsAssist:SetZOrder(1);
            qsAssist:SetAllowDrop(false);
            qsAssist:SetVisible(true);

            --qsAssist:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType[QSTYPE], v));

        end

        QSLEFT = QSLEFT + QSSIZE + QSGAP;
        tempWidth = QSLEFT;

    end


    wQSAssistParent:SetSize(tempWidth,tempHeight-5);
    wQSReposBar:SetSize(tempWidth-20,QSTOP-3);
    cCloseIcon:SetPosition(tempWidth-16,1);
    wEmoteBack:SetSize(tempWidth-10,tempHeight-10);
    wEmoteBack:SetPosition(5,10);

    -- Window events
    wQSAssistParent.Closed = function (sender,args)

        SETTINGS.QSWIN.VISIBLE = false;

        DestroyControl(wQSAssistParent);

        -- Remove items from _ITEMCONTROLS table
        _ITEMCONTROLS = {};

    end

end

function QSAssistSetVisible(newVisible)
    if (wQSAssistParent ~= nil) then
        wQSAssistParent:SetVisible(newVisible);
    end
end

-- This function takes an item name and searches for it within the player's backpack. If it's found it returns the item.
function GetInvItem(SENDER,ITEMNAME)

    if type(ITEMNAME) ~= "string" or SENDER == nil then return nil end;

    local FOUNDITEM = "";

    for i=1, MYBACKPACK:GetSize() do

        local CURITEM = MYBACKPACK:GetItem(i);

        if CURITEM ~= nil and CURITEM:GetName() == ITEMNAME then
            FOUNDITEM = MYBACKPACK:GetItem(i);
            break;
        end

    end

    -- Add to itemcontrol table to be recalled later if needed
    _ITEMCONTROLS[ITEMNAME] = SENDER;

    return FOUNDITEM;

end


function CreateEmotesAssist(EMOTELIST)

    if EMOTELIST == nil then return end;

    -- This function creates a window displaying a list of emote quickslots for the user

    local QSSIZE = 90;
    local QSHEIGHT = 25;

    local QSGAP = 10;
    local QSTOP = 20;

    local numQS = 0;
    local tempHeight = 0;
    local tempWidth = 20+QSSIZE;

    wEmoteAssistParent = Turbine.UI.Window();
    wEmoteAssistParent:SetPosition(SETTINGS.EMOTEWIN.X,SETTINGS.EMOTEWIN.Y);
    wEmoteAssistParent:SetVisible(true);

    SETTINGS.EMOTEWIN.VISIBLE = true;

    local blDRAGGING = false;
    local relX = 0;
    local relY = 0;

    wEmoteReposBar = Turbine.UI.Control();
    wEmoteReposBar:SetParent(wEmoteAssistParent);
    wEmoteReposBar:SetSize(tempWidth-20,QSTOP-3);
    wEmoteReposBar:SetMouseVisible(true);


    wEmoteReposBar.MouseEnter = function (sender,args)
        cReposCursor:SetPosition(Turbine.UI.Display.GetMouseX()-16,Turbine.UI.Display.GetMouseY()-16);
        cReposCursor:SetVisible(true);
    end

    wEmoteReposBar.MouseLeave = function (sender,args)
        cReposCursor:SetVisible(false);
    end

    wEmoteReposBar.MouseDown = function (sender, args)
        blDRAGGING = true;
        relX = args.X;
        relY = args.Y;
    end

    wEmoteReposBar.MouseUp = function (sender, args)
        blDRAGGING = false;
    end

    wEmoteReposBar.MouseMove = function (sender, args)

        local scX = Turbine.UI.Display.GetMouseX();
        local scY = Turbine.UI.Display.GetMouseY();

        if blDRAGGING == true then

            SETTINGS.EMOTEWIN.X = scX - relX;
            SETTINGS.EMOTEWIN.Y = scY - relY;

            wEmoteAssistParent:SetPosition(SETTINGS.EMOTEWIN.X,SETTINGS.EMOTEWIN.Y);
            Onscreen(wEmoteAssistParent);
        end

        cReposCursor:SetPosition(scX-16,scY-16);
    end

    local wEmoteBack = Turbine.UI.Control();
    wEmoteBack:SetParent(wEmoteAssistParent);
    wEmoteBack:SetBackColor(Turbine.UI.Color(0.9,0,0,0));
    wEmoteBack:SetMouseVisible(false);


    local cCloseIcon = Turbine.UI.Control();
    cCloseIcon:SetParent(wEmoteAssistParent);
    cCloseIcon:SetSize(16,16);
    cCloseIcon:SetPosition(tempWidth-16,1);
    cCloseIcon:SetBackground(_IMAGES.CLOSE_NORMAL);

    cCloseIcon.MouseEnter = function ()
        cCloseIcon:SetBackground(_IMAGES.CLOSE_OVER);
    end

    cCloseIcon.MouseLeave = function ()
        cCloseIcon:SetBackground(_IMAGES.CLOSE_NORMAL);
    end

    cCloseIcon.MouseClick = function ()
        wEmoteAssistParent:Close();
    end


    for k,v in pairs (EMOTELIST) do

        numQS = numQS + 1;

        local qsEmote = Turbine.UI.Lotro.Quickslot();
        qsEmote:SetParent(wEmoteAssistParent);
        qsEmote:SetSize(QSSIZE,QSHEIGHT);
        qsEmote:SetPosition(10,QSTOP);
        qsEmote:SetZOrder(1);
        qsEmote:SetAllowDrop(false);
        qsEmote:SetVisible(true);

        local qsLabel = Turbine.UI.Label();
        qsLabel:SetParent(wEmoteAssistParent);
        qsLabel:SetSize(qsEmote:GetSize());
        qsLabel:SetPosition(qsEmote:GetPosition());
        qsLabel:SetMouseVisible(false);
        qsLabel:SetBackColor(Turbine.UI.Color(0.1,0.15,0.3));
        qsLabel:SetFont(Turbine.UI.Lotro.Font.Verdana12);
        qsLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
        qsLabel:SetText(v);
        qsLabel:SetZOrder(1000);

        qsEmote.MouseEnter = function ()
            qsLabel:SetBackColor(Turbine.UI.Color(0.2,0.25,0.4));
            qsLabel:SetForeColor(YELLOW);
        end

        qsEmote.MouseLeave = function ()
            qsLabel:SetBackColor(Turbine.UI.Color(0.1,0.15,0.3));
            qsLabel:SetForeColor(WHITE);
        end

        -- This works around this documented error:
        -- Garan: There is a bug with using the shorcut constructor where if you supply the "data" string
        --        Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType. Alias, '/say Wall of Annúminas')
        --        If you use a shorcut like that, where data is placed as constructor arg, it comes across in chat as mangled like... Wall of AnnA^minas
        --        However, if you use the SetData('Wall of Annúminas') method instead, it works. So there is a workaround.
        local shortcut = Turbine.UI.Lotro.Shortcut();
        shortcut:SetType(Turbine.UI.Lotro.ShortcutType.Alias);
        shortcut:SetData(v);
        qsEmote:SetShortcut(shortcut);

        QSTOP = QSTOP + QSHEIGHT + QSGAP;
        tempHeight = QSTOP;

    end

    wEmoteAssistParent:SetSize(tempWidth,tempHeight-5);
    wEmoteBack:SetSize(tempWidth-10,tempHeight-10);
    wEmoteBack:SetPosition(5,10);


    -- Window events
    wEmoteAssistParent.Closed = function (sender,args)
        SETTINGS.EMOTEWIN.VISIBLE = false;
        DestroyControl(wEmoteAssistParent);
    end
end

function EmotesAssistSetVisible(newVisible)
    if (wEmoteAssistParent ~= nil) then
        wEmoteAssistParent:SetVisible(newVisible);
    end
end

-- Scale the window based on the setting.
function MainWinRedraw()
    local displayWidth = Turbine.UI.Display:GetWidth();

    local defaultWidth = MainWindowWidth;
    local stretchedWindowWidth = displayWidth * SETTINGS.MAINWIN.WIDTH;

    local defaultHeight = MainWindowHeight;
    local stretchedWindowHeight = (stretchedWindowWidth / defaultWidth) * defaultHeight;

    -- If we're close to 100%, snap back to 100% to avoid UI blurring:
    if (math.abs(stretchedWindowWidth - MainWindowWidth) < 10) then
        stretchedWindowWidth = MainWindowWidth;
        stretchedWindowHeight = MainWindowHeight;
    end

    -- Stretch the window:
    wMainWinParent:SetSize(stretchedWindowWidth, stretchedWindowHeight);
    Onscreen(wMainWinParent, stretchedWindowWidth, stretchedWindowHeight);
    -- End stretch code
end