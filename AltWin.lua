
function DrawAltWin()

    local tempWidth = 300;
    local tempHeight = 320;

    -- Main Parent window to hold all the elements
    wAltWinParent = Turbine.UI.Lotro.Window();
    wAltWinParent:SetSize(tempWidth,tempHeight);
    wAltWinParent:SetPosition(SETTINGS.ALTWIN.X,SETTINGS.ALTWIN.Y);
    wAltWinParent:SetText("Alts");
    wAltWinParent:SetVisible(SETTINGS.ALTWIN.VISIBLE);

    wAltBack = Turbine.UI.Control();
    wAltBack:SetParent(wAltWinParent);
    wAltBack:SetSize(297,317);
    wAltBack:SetPosition(2,0);
    wAltBack:SetMouseVisible(false);
    wAltBack:SetBlendMode(4);
    wAltBack:SetBackground(_IMAGES.ALTBACK);


    local _ALTS = GetAltNames();
    table.sort(_ALTS);

    -- Do a check to make sure there is at least one alt.
    if _ALTS[1] ~= nil then

        ddAltNames = DropDown(_ALTS);
        ddAltNames:SetParent(wAltWinParent);
        ddAltNames:SetPosition(50,40);
        ddAltNames:SetWidth(200);

        ddAltNames.ItemChanged = function (Sender,Args)
            RefreshAltDisplay(Args.Text);
        end

        -- Tokens --
        cAltTokenHolder = Turbine.UI.ListBox();
        cAltTokenHolder:SetParent(wAltWinParent);
        cAltTokenHolder:SetSize(0,34);
        cAltTokenHolder:SetPosition(20,76);
        cAltTokenHolder:SetOrientation(Turbine.UI.Orientation.Horizontal);

        scAltTokenHolder = Turbine.UI.Lotro.ScrollBar();
        scAltTokenHolder:SetParent(wAltWinParent);
        scAltTokenHolder:SetSize(wMainWinHolder:GetWidth()-20,8);
        scAltTokenHolder:SetPosition(10,cAltTokenHolder:GetTop() + cAltTokenHolder:GetHeight());
        scAltTokenHolder:SetOrientation(Turbine.UI.Orientation.Horizontal);
        scAltTokenHolder:SetZOrder(200000);
        scAltTokenHolder:SetVisible(false);

        cAltTokenHolder:SetHorizontalScrollBar(scAltTokenHolder);


        -- Cooldowns --
        cCooldownHolder = Turbine.UI.ListBox();
        cCooldownHolder:SetParent(wAltWinParent);
        cCooldownHolder:SetSize(wMainWinHolder:GetWidth()-28,144);
        cCooldownHolder:SetPosition(13,cAltTokenHolder:GetTop() + 53);
        cCooldownHolder:SetOrientation(Turbine.UI.Orientation.Horizontal);
        cCooldownHolder:SetMaxItemsPerLine(2);

        scCooldownHolder = Turbine.UI.Lotro.ScrollBar();
        scCooldownHolder:SetParent(wAltWinParent);
        scCooldownHolder:SetSize(8,cCooldownHolder:GetHeight());
        scCooldownHolder:SetPosition(cCooldownHolder:GetLeft()+cCooldownHolder:GetWidth(),cCooldownHolder:GetTop());
        scCooldownHolder:SetOrientation(Turbine.UI.Orientation.Vertical);
        scCooldownHolder:SetZOrder(200000);
        scCooldownHolder:SetVisible(false);

        cCooldownHolder:SetVerticalScrollBar(scCooldownHolder);

        btnRefreshAltDisplay = Turbine.UI.Control();
        btnRefreshAltDisplay:SetParent(wAltWinParent);
        btnRefreshAltDisplay:SetSize(16,16);
        btnRefreshAltDisplay:SetPosition((tempWidth/2)-8,tempHeight-35);
        btnRefreshAltDisplay:SetBlendMode(4);
        btnRefreshAltDisplay:SetBackground(_IMAGES.REFRESH_NORMAL);

        btnRefreshAltDisplay.MouseEnter = function (Sender,args)
            btnRefreshAltDisplay:SetBackground(_IMAGES.REFRESH_OVER);
        end

        btnRefreshAltDisplay.MouseLeave = function (Sender,args)
            btnRefreshAltDisplay:SetBackground(_IMAGES.REFRESH_NORMAL);
        end

        btnRefreshAltDisplay.MouseClick = function (sender,args)
            RefreshAltDisplay(ddAltNames:GetText());
        end


        -- Refresh display last once everything is drawn
        RefreshAltDisplay(ddAltNames:GetText());

    else
        -- No data stored for alts so player will need to log alts first.
        lblNoAlts = Turbine.UI.Label();
        lblNoAlts:SetParent(wAltWinParent);
        lblNoAlts:SetSize(tempWidth-40,60);
        lblNoAlts:SetPosition(20,130);
        lblNoAlts:SetFont(TrajanPro14);
        lblNoAlts:SetForeColor(BEIGE);
        lblNoAlts:SetText(GetString(_LANG.OTHER.NOALTS));

    end


    -- Window events
    wAltWinParent.Closing = function()
        SETTINGS.ALTWIN.VISIBLE = false;
    end

    wAltWinParent.PositionChanged = function()
        SETTINGS.ALTWIN.X = wAltWinParent:GetLeft();
        SETTINGS.ALTWIN.Y = wAltWinParent:GetTop();
    end

end


function RefreshAltDisplay(NAME)

    if NAME == nil then return end;

    -- This function updates the window display with the selected alt.

    local _RELFESTIVALTABLE = _CHARDATA.CHARS[NAME][SELECTEDFESTIVAL];

    -- TOKENS ----------------------------------------------------------------------------
    cAltTokenHolder:ClearItems();
    cCooldownHolder:ClearItems();

    local ITEMWIDTH = 40;
    local PARENTWIDTH = 0;

    if _RELFESTIVALTABLE == nil then return end;

    for k,v in pairs (_RELFESTIVALTABLE["TOKENS"]) do
        local tokenID = TOKEN_IDS[SELECTEDFESTIVAL][k];
        if v > 0 and tokenID then
            -- Only add tokens that the player has.
            local cCURITEM = Turbine.UI.Control();
            cCURITEM:SetSize(ITEMWIDTH,36);

            local ITEM = GetItemFromID(tokenID);

            local cItemInspect = Turbine.UI.Lotro.ItemInfoControl();
            cItemInspect:SetParent(cCURITEM);
            cItemInspect:SetSize(36,36);
            cItemInspect:SetPosition(cCURITEM:GetWidth()-36,0);
            cItemInspect:SetItemInfo(ITEM:GetItemInfo());
            cItemInspect:SetQuantity(v);

            PARENTWIDTH = PARENTWIDTH + ITEMWIDTH;

            cAltTokenHolder:AddItem(cCURITEM);

            if PARENTWIDTH > (wAltWinParent:GetWidth()-40) then
                cAltTokenHolder:SetWidth(wAltWinParent:GetWidth()-40);
                cAltTokenHolder:SetLeft(20);
            else
                cAltTokenHolder:SetWidth(PARENTWIDTH);
                cAltTokenHolder:SetLeft(wAltWinParent:GetWidth()-PARENTWIDTH-20);
            end

        end
    end


    -- COOLDOWNS ------------------------------------------------------------------------------------


    local ITEMWIDTH = (cCooldownHolder:GetWidth()/2);
    local ITEMHEIGHT = 36;

    for k,v in pairs (_RELFESTIVALTABLE["COOLDOWNS"]) do

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
        local debuffIndex = GetDebuffIndexFromDebuffKey(k);
        local debuffName = GetString(_LANG.DEBUFFS[SELECTEDFESTIVAL][debuffIndex].name);
        cCURITEMLABEL:SetText(debuffName);

        -- Get timestamp and test if the cooldown has expired.
        local CURTIME = Turbine.Engine.GetGameTime();

        -- Adjust label accordingly.
        if CURTIME < v then
            cCURITEMLABEL:SetForeColor(GREY);
            cCURITEMICON:SetBackground(_IMAGES.HOURGLASS);
            cCURITEMICON:SetSize(32,32);
            cCURITEMICON:SetPosition(0,2);

            local _END = GetEndTime(v);
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
            cCURITEMLABEL:SetForeColor(YELLOW);
            cCURITEMICON:SetBackground(_IMAGES.GREENTICK);
            cCURITEMICON:SetSize(25,22);
            cCURITEMICON:SetPosition(3,8);
        end

        -- Add item to ListBox
        cCooldownHolder:AddItem(cCURITEM);

    end

end

