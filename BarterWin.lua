
DividerFonts = {
    [DIVIDER1] = Turbine.UI.Lotro.Font.BookAntiquaBold22;
    [DIVIDER2] = Turbine.UI.Lotro.Font.BookAntiqua22;
}

function DrawBarterWin()

    -- Initialize window height to a good default, if it's not present:
    if (not SETTINGS.BARTERWIN.HEIGHT) then
        SETTINGS.BARTERWIN.HEIGHT = 500;
    end

    -- Make sure saved height isn't too tall for screen:
    local displayHeight = Turbine.UI.Display.GetHeight()
    if ((SETTINGS.BARTERWIN.Y + SETTINGS.BARTERWIN.HEIGHT) > displayHeight) then
        SETTINGS.BARTERWIN.HEIGHT = displayHeight - SETTINGS.BARTERWIN.Y;
    end

    wBarterWinParent = Turbine.UI.Lotro.Window();
    wBarterWinParent:SetSize(480,SETTINGS.BARTERWIN.HEIGHT);
    wBarterWinParent:SetPosition(SETTINGS.BARTERWIN.X,SETTINGS.BARTERWIN.Y);
    wBarterWinParent:SetText(GetString(_LANG.OTHER.BARTER));
    wBarterWinParent:SetResizable(true);
    wBarterWinParent:SetMinimumWidth(480);
    wBarterWinParent:SetMaximumWidth(480);

    wBarterWinBack = Turbine.UI.Control();
    wBarterWinBack:SetParent(wBarterWinParent);
    wBarterWinBack:SetSize(480,SETTINGS.BARTERWIN.HEIGHT);
    wBarterWinBack:SetPosition(1,-2);
    wBarterWinBack:SetBackground(_IMAGES.BARTERBACK);
    wBarterWinBack:SetBlendMode(4);
    wBarterWinBack:SetMouseVisible(false);

    lblBarterFestival = Turbine.UI.Label();
    lblBarterFestival:SetParent(wBarterWinParent);
    lblBarterFestival:SetPosition(30,40);
    lblBarterFestival:SetSize(420,30);
    lblBarterFestival:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    lblBarterFestival:SetFont(TrajanPro16);
    lblBarterFestival:SetForeColor(YELLOW);
    --lblBarterFestival:SetBackColor(Turbine.UI.Color.White);

    local barterItems = Turbine.UI.ListBox();
    barterItems:SetParent(wBarterWinParent);
    barterItems:SetSize(422,SETTINGS.BARTERWIN.HEIGHT - 120);
    barterItems:SetPosition(25,80);
    wBarterWinParent.BarterItems = barterItems;

    local barterItemsScrollbar = Turbine.UI.Lotro.ScrollBar();
    barterItemsScrollbar:SetParent(wBarterWinParent);
    barterItemsScrollbar:SetSize(8,barterItems:GetHeight());
    barterItemsScrollbar:SetPosition(barterItems:GetLeft()+barterItems:GetWidth()+2,barterItems:GetTop());
    barterItemsScrollbar:SetOrientation(Turbine.UI.Orientation.Vertical);
    barterItemsScrollbar:SetZOrder(200000);
    barterItemsScrollbar:SetVisible(false);

    barterItems:SetVerticalScrollBar(barterItemsScrollbar);

    -- Events
    wBarterWinParent.PositionChanged = function()
        SETTINGS.BARTERWIN.X = wBarterWinParent:GetLeft();
        SETTINGS.BARTERWIN.Y = wBarterWinParent:GetTop();
    end

    wBarterWinParent.Closing = function()
        SETTINGS.BARTERWIN.VISIBLE = false;
    end

    wBarterWinParent.VisibleChanged = function(sender,args)
        if wBarterWinParent:IsVisible() == true then wBarterWinParent:Activate() end;
    end

    wBarterWinParent.SizeChanged = function(sender, args)
        local newWindowHeight = wBarterWinParent:GetHeight();
        local isBackVisible = newWindowHeight >= 500;

        wBarterWinBack:SetVisible(isBackVisible);
        wBarterWinBack:SetTop(newWindowHeight - 502)

        local newListHeight = newWindowHeight - 120;
        if (not isBackVisible) then
            newListHeight = newListHeight + 20;
        end

        wBarterWinParent.BarterItems:SetHeight(newListHeight);
        wBarterWinParent.BarterItems:GetVerticalScrollBar():SetHeight(newListHeight);

        SETTINGS.BARTERWIN.HEIGHT = newWindowHeight;
    end

    SetBarterWinVisible(SETTINGS.BARTERWIN.VISIBLE);
end

function BarterWinFestivalChanged()
    if (SETTINGS.BARTERWIN.VISIBLE) then
        RefreshBarterItems();
    end
end

function SetBarterWinVisible(isVisible, skipRefresh)
    if (skipRefresh == nil) then
        skipRefresh = false;
    end

    wBarterWinParent:SetVisible(isVisible);

    if (isVisible and not skipRefresh) then
        RefreshBarterItems();
    end
end

--- Makes a label and adds it to the parent, if the divider type is valid.
---@param parent Control
---@param barterItemData table
---@param rowWidth number
---@param rowHeight number
function MakeDividerLabel(parent, barterItemData, rowWidth, rowHeight)
    local dividerType = barterItemData[DIVIDER_TYPE];
    if (not (dividerType == DIVIDER1 or dividerType == DIVIDER2)) then
        -- Can't make a divider label if it's not a divider.
        return;
    end

    local dividerLabel = Turbine.UI.Label();
    dividerLabel:SetParent(parent);
    dividerLabel:SetSize(rowWidth, rowHeight);

    dividerLabel:SetFont(DividerFonts[dividerType]);

    local dividerHeight = barterItemData.DIVIDER_HEIGHT or rowHeight;
    parent:SetHeight(dividerHeight);
    dividerLabel:SetHeight(dividerHeight);

    dividerLabel:SetFontStyle(Turbine.UI.FontStyle.Outline);
    dividerLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    dividerLabel:SetText(GetString(barterItemData[DIVIDER_TEXT]));
end

function MakeBarterItemRow(parent, barterItemData, rowWidth, rowHeight)
    local item = nil; ---@type Item|nil
    if type(barterItemData[ITEM_ID]) == 'string' then
        item = GetItemFromID(barterItemData[ITEM_ID],true);
    else
        item = GetItemFromID(barterItemData[ITEM_ID]);
    end

    if (item == nil) then
        -- When adding new items, if an item name resolves to multiple IDs
        -- some of those IDs might not work:
        if (item == nil and SHOW_DEBUG_OPTIONS) then
            Turbine.Shell.WriteLine("Couldn't resolve item #" .. dump(barterItemData[ITEM_ID]));
        end

        return;
    end

    local rowBottomMargin = 5;
    local ROWBACK = Turbine.UI.Control();
    ROWBACK:SetParent(parent);
    ROWBACK:SetSize(rowWidth,rowHeight-rowBottomMargin);
    ROWBACK:SetBackground(_IMAGES.BARTERITEMSBACK);
    ROWBACK:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);

    local cItemInspect = Turbine.UI.Lotro.ItemInfoControl();
    cItemInspect:SetParent(ROWBACK);
    cItemInspect:SetSize(36,36);
    cItemInspect:SetPosition(1,1);
    cItemInspect:SetItemInfo(item:GetItemInfo());
    cItemInspect:SetQuantity(1);

    if (barterItemData[ITEM_QUANTITY]) then
        cItemInspect:SetQuantity(barterItemData[ITEM_QUANTITY])
    end;

    local lblItemName = Turbine.UI.Label();
    lblItemName:SetParent(ROWBACK);
    lblItemName:SetPosition(40,2);
    lblItemName:SetSize(rowWidth-150,36);
    lblItemName:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    lblItemName:SetForeColor(_QUALITYCOLORS[item:GetItemInfo():GetQuality()]);
    --lblItemName:SetBackColor(Turbine.UI.Color.Red);
    lblItemName:SetFont(TrajanPro14);
    lblItemName:SetText(item:GetItemInfo():GetName());

    local iconWidth = 32;
    local iconMargin = 2;
    local iconRowLeftRightMargin = 1;

    local iconRowHeight = iconWidth + (iconMargin * 2);
    -- This comes out to 110, wide enough for three tokens which is needed for some Spring barter items:
    local iconRowWidth = (iconRowLeftRightMargin * 2) + ((iconWidth + (iconMargin * 2)) * 3);

    local lstTokensNeeded = Turbine.UI.ListBox();
    lstTokensNeeded:SetParent(ROWBACK);
    lstTokensNeeded:SetSize(iconRowWidth, iconRowHeight);
    lstTokensNeeded:SetPosition(rowWidth-lstTokensNeeded:GetWidth(),0);
    lstTokensNeeded:SetOrientation(Turbine.UI.Orientation.Horizontal);
    --lstTokensNeeded:SetBackColor(Turbine.UI.Color.Red);

    if type(barterItemData[ITEM_COST_TABLE])=='table' then
        for token_key,token_count in pairs (barterItemData[ITEM_COST_TABLE]) do
            local token_id = GetTokenID(SELECTEDFESTIVAL, token_key);
            local tokenItem = GetItemFromID(token_id);

            if tokenItem ~= nil then
                local cTokenInspect = Turbine.UI.Lotro.ItemInfoControl();
                cTokenInspect:SetParent(ROWBACK);
                cTokenInspect:SetSize(36,36);
                cTokenInspect:SetPosition(1,1);
                cTokenInspect:SetItemInfo(tokenItem:GetItemInfo());
                cTokenInspect:SetQuantity(token_count);

                lstTokensNeeded:AddItem(cTokenInspect);
            end
        end
    end
end

function RefreshBarterItems()
    if (SELECTEDFESTIVAL == wBarterWinParent.LoadedFestival) then
        return;
    end
    wBarterWinParent.LoadedFestival = SELECTEDFESTIVAL;

    wBarterWinParent.BarterItems:ClearItems();

    local rowWidth = 422;
    local rowHeight = 45;

    local _FESTIVALITEMS = _BARTER[SELECTEDFESTIVAL];

    lblBarterFestival:SetText(GetString(_LANG.OTHER.BARTERITEMS)..": "..GetString(_LANG.FESTIVALS[SELECTEDFESTIVAL]));

    for _,barterItemData in ipairs (_FESTIVALITEMS) do

        local rowHolder = Turbine.UI.Control();
        rowHolder:SetSize(rowWidth,rowHeight);

        if (barterItemData[DIVIDER_TYPE] == "DIVIDER1" or barterItemData[DIVIDER_TYPE] == "DIVIDER2") then
            MakeDividerLabel(rowHolder, barterItemData, rowWidth, rowHeight);
        else
            MakeBarterItemRow(rowHolder, barterItemData, rowWidth, rowHeight);
        end

        wBarterWinParent.BarterItems:AddItem(rowHolder);
    end

    wBarterWinParent.BarterItems:SetSelectedIndex(1);
end




