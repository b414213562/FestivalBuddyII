
function DrawDanceWin()

    local QSSIZE = 32;
    local QSGAP = 30;

    local tempWidth = (QSSIZE*3)+(QSGAP*4);
    local tempHeight = QSSIZE+45;

    -- Main Parent window to hold all the elements
    wDanceParent = Turbine.UI.Lotro.Window();
    wDanceParent:SetSize(tempWidth,tempHeight);
    wDanceParent:SetPosition(SETTINGS.DANCEWIN.X,SETTINGS.DANCEWIN.Y);
    wDanceParent:SetText(GetString(_LANG.BUTTONS.DANCE));
    wDanceParent:SetVisible(SETTINGS.DANCEWIN.VISIBLE);

    Onscreen(wDanceParent); -- Makes sure the window is still onscreen (perhaps user changed resolution since last playing)

    local QSTOP = 43;

    DanceOneHighlight = Turbine.UI.Control();
    DanceOneHighlight:SetParent(wDanceParent);
    DanceOneHighlight:SetSize(QSSIZE+6,QSSIZE+6);
    DanceOneHighlight:SetPosition((1*QSGAP)+(0*QSSIZE)-3,QSTOP-3);
    DanceOneHighlight:SetZOrder(0);
    DanceOneHighlight:SetBackground(_IMAGES.DANCEBUTTON_HIGHLIGHT);
    DanceOneHighlight:SetBlendMode(4);
    DanceOneHighlight:SetVisible(false);

    qsDanceOne = Turbine.UI.Lotro.Quickslot();
    qsDanceOne:SetParent(wDanceParent);
    qsDanceOne:SetSize(QSSIZE,QSSIZE);
    qsDanceOne:SetPosition((1*QSGAP)+(0*QSSIZE),QSTOP);
    qsDanceOne:SetZOrder(1);
    qsDanceOne:SetAllowDrop(false);
    qsDanceOne:SetVisible(true);

    qsDanceOne.MouseClick = function (sender,args)
        DanceOneHighlight:SetVisible(false);
    end

    qsDanceOne.MouseEnter = function (sender,args)
        lblDanceOne:SetForeColor(ORANGE);
        lblDanceOne:SetOutlineColor(Turbine.UI.Color(70/255,30/255,2/255));
    end

    qsDanceOne.MouseLeave = function (sender,args)
        lblDanceOne:SetForeColor(WHITE);
        lblDanceOne:SetOutlineColor(BLACK);
    end

    DanceOneButton = Turbine.UI.Control();
    DanceOneButton:SetParent(wDanceParent);
    DanceOneButton:SetSize(qsDanceOne:GetSize());
    DanceOneButton:SetPosition(qsDanceOne:GetPosition());
    DanceOneButton:SetBackground(_IMAGES.DANCEBUTTON_NORMAL);
    DanceOneButton:SetZOrder(1000);
    DanceOneButton:SetMouseVisible(false);

    lblDanceOne = Turbine.UI.Label();
    lblDanceOne:SetParent(DanceOneButton);
    lblDanceOne:SetSize(DanceOneButton:GetSize());
    lblDanceOne:SetMouseVisible(false);
    lblDanceOne:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    lblDanceOne:SetFont(TrajanPro16);
    lblDanceOne:SetForeColor(WHITE);
    lblDanceOne:SetFontStyle(Turbine.UI.FontStyle.Outline);
    lblDanceOne:SetOutlineColor(BLACK);
    lblDanceOne:SetText("1");



    DanceTwoHighlight = Turbine.UI.Control();
    DanceTwoHighlight:SetParent(wDanceParent);
    DanceTwoHighlight:SetSize(QSSIZE+6,QSSIZE+6);
    DanceTwoHighlight:SetPosition((2*QSGAP)+(1*QSSIZE)-3,QSTOP-3);
    DanceTwoHighlight:SetZOrder(0);
    DanceTwoHighlight:SetBackground(_IMAGES.DANCEBUTTON_HIGHLIGHT);
    DanceTwoHighlight:SetBlendMode(4);
    DanceTwoHighlight:SetVisible(false);

    qsDanceTwo = Turbine.UI.Lotro.Quickslot();
    qsDanceTwo:SetParent(wDanceParent);
    qsDanceTwo:SetSize(QSSIZE,QSSIZE);
    qsDanceTwo:SetPosition((2*QSGAP)+(1*QSSIZE),QSTOP);
    qsDanceTwo:SetZOrder(1);
    qsDanceTwo:SetAllowDrop(false);
    qsDanceTwo:SetVisible(true);

    qsDanceTwo.MouseClick = function (sender,args)
        DanceTwoHighlight:SetVisible(false);
    end

    qsDanceTwo.MouseEnter = function (sender,args)
        lblDanceTwo:SetForeColor(ORANGE);
        lblDanceTwo:SetOutlineColor(Turbine.UI.Color(70/255,30/255,2/255));
    end

    qsDanceTwo.MouseLeave = function (sender,args)
        lblDanceTwo:SetForeColor(WHITE);
        lblDanceTwo:SetOutlineColor(BLACK);
    end

    DanceTwoButton = Turbine.UI.Control();
    DanceTwoButton:SetParent(wDanceParent);
    DanceTwoButton:SetSize(qsDanceTwo:GetSize());
    DanceTwoButton:SetPosition(qsDanceTwo:GetPosition());
    DanceTwoButton:SetBackground(_IMAGES.DANCEBUTTON_NORMAL);
    DanceTwoButton:SetZOrder(1000);
    DanceTwoButton:SetMouseVisible(false);

    lblDanceTwo = Turbine.UI.Label();
    lblDanceTwo:SetParent(DanceTwoButton);
    lblDanceTwo:SetSize(DanceTwoButton:GetSize());
    lblDanceTwo:SetMouseVisible(false);
    lblDanceTwo:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    lblDanceTwo:SetFont(TrajanPro16);
    lblDanceTwo:SetForeColor(WHITE);
    lblDanceTwo:SetFontStyle(Turbine.UI.FontStyle.Outline);
    lblDanceTwo:SetOutlineColor(BLACK);
    lblDanceTwo:SetText("2");



    DanceThreeHighlight = Turbine.UI.Control();
    DanceThreeHighlight:SetParent(wDanceParent);
    DanceThreeHighlight:SetSize(QSSIZE+6,QSSIZE+6);
    DanceThreeHighlight:SetPosition((3*QSGAP)+(2*QSSIZE)-3,QSTOP-3);
    DanceThreeHighlight:SetZOrder(0);
    DanceThreeHighlight:SetBackground(_IMAGES.DANCEBUTTON_HIGHLIGHT);
    DanceThreeHighlight:SetBlendMode(4);
    DanceThreeHighlight:SetVisible(false);

    qsDanceThree = Turbine.UI.Lotro.Quickslot();
    qsDanceThree:SetParent(wDanceParent);
    qsDanceThree:SetSize(QSSIZE,QSSIZE);
    qsDanceThree:SetPosition((3*QSGAP)+(2*QSSIZE),QSTOP);
    qsDanceThree:SetZOrder(1);
    qsDanceThree:SetAllowDrop(false);
    qsDanceThree:SetVisible(true);

    qsDanceThree.MouseClick = function (sender,args)
        DanceThreeHighlight:SetVisible(false);
    end

    qsDanceThree.MouseEnter = function (sender,args)
        lblDanceThree:SetForeColor(ORANGE);
        lblDanceThree:SetOutlineColor(Turbine.UI.Color(70/255,30/255,2/255));
    end

    qsDanceThree.MouseLeave = function (sender,args)
        lblDanceThree:SetForeColor(WHITE);
        lblDanceThree:SetOutlineColor(BLACK);
    end

    DanceThreeButton = Turbine.UI.Control();
    DanceThreeButton:SetParent(wDanceParent);
    DanceThreeButton:SetSize(qsDanceThree:GetSize());
    DanceThreeButton:SetPosition(qsDanceThree:GetPosition());
    DanceThreeButton:SetBackground(_IMAGES.DANCEBUTTON_NORMAL);
    DanceThreeButton:SetZOrder(1000);
    DanceThreeButton:SetMouseVisible(false);

    lblDanceThree = Turbine.UI.Label();
    lblDanceThree:SetParent(DanceThreeButton);
    lblDanceThree:SetSize(DanceThreeButton:GetSize());
    lblDanceThree:SetMouseVisible(false);
    lblDanceThree:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    lblDanceThree:SetFont(TrajanPro16);
    lblDanceThree:SetForeColor(WHITE);
    lblDanceThree:SetFontStyle(Turbine.UI.FontStyle.Outline);
    lblDanceThree:SetOutlineColor(BLACK);
    lblDanceThree:SetText("3");

    local dance1alias = GetString(_LANG.DANCES.DANCE1_ALIAS);
    local dance2alias = GetString(_LANG.DANCES.DANCE2_ALIAS);
    local dance3alias = GetString(_LANG.DANCES.DANCE3_ALIAS);

    qsDanceOne:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Alias, dance1alias));
    qsDanceTwo:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Alias, dance2alias));
    qsDanceThree:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Alias, dance3alias));


    qsDanceOne.DragDrop = function (sender,args)
        qsDanceOne:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Alias, dance1alias));
    end

    qsDanceTwo.DragDrop = function (sender,args)
        qsDanceTwo:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Alias, dance2alias));
    end

    qsDanceThree.DragDrop = function (sender,args)
        qsDanceThree:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Alias, dance3alias));
    end


    -- Window events
    wDanceParent.Closing = function()
        SETTINGS.DANCEWIN.VISIBLE = false;
    end

    wDanceParent.PositionChanged = function()
        SETTINGS.DANCEWIN.X = wDanceParent:GetLeft();
        SETTINGS.DANCEWIN.Y = wDanceParent:GetTop();
    end

    wDanceParent.VisibleChanged = function(sender,args)
        if wDanceParent:IsVisible() == true then wDanceParent:Activate() end;
    end

end


function FilterDanceStep(MESSAGE,INSTRUCTORNAME)

    if MESSAGE == nil then return end;
    if INSTRUCTORNAME == nil then INSTRUCTORNAME = "" end;

    -- This function filters the dance step instructions and highlights the relevant box.

    local _DANCESTRINGS = _LANG.DANCES;
    local FOUNDDANCE = "";

    DanceOneHighlight:SetVisible(false);
    DanceTwoHighlight:SetVisible(false);
    DanceThreeHighlight:SetVisible(false);

    for k,v in pairs (_DANCESTRINGS) do

        local STRING = GetString(v);

        if string.find(MESSAGE,STRING) ~= nil then

            FOUNDDANCE = tostring(k);
            break;

        end

    end

    -- Target checking
    local SELTARGET = MYCHAR:GetTarget();
    local TARGETNAME = "";

    if SELTARGET ~= nil then
        TARGETNAME = SELTARGET:GetName();
        if TARGETNAME ~= INSTRUCTORNAME then
            local tmpMsg = Alert(INSTRUCTORNAME .. GetString(_LANG.OTHER.EMOTETARGET));
        end
    else
        local tmpMsg = Alert(INSTRUCTORNAME .. GetString(_LANG.OTHER.EMOTETARGET));
    end

    -- Dance steps highlighting
    if FOUNDDANCE == "DANCE1" then
        DanceOneHighlight:SetVisible(true);
    elseif FOUNDDANCE == "DANCE2" then
        DanceTwoHighlight:SetVisible(true);
    elseif FOUNDDANCE == "DANCE3" then
        DanceThreeHighlight:SetVisible(true);
    end

end




