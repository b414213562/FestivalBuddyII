
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

    local windowWidth = 496;
    wBarterWinParent = Turbine.UI.Lotro.Window();
    wBarterWinParent:SetSize(windowWidth,SETTINGS.BARTERWIN.HEIGHT);
    wBarterWinParent:SetPosition(SETTINGS.BARTERWIN.X,SETTINGS.BARTERWIN.Y);
    wBarterWinParent:SetText(GetString(_LANG.OTHER.BARTER));
    wBarterWinParent:SetResizable(true);
    wBarterWinParent:SetMinimumWidth(windowWidth);
    wBarterWinParent:SetMaximumWidth(windowWidth);

    wBarterWinBack = Turbine.UI.Control();
    wBarterWinBack:SetParent(wBarterWinParent);
    wBarterWinBack:SetSize(windowWidth,SETTINGS.BARTERWIN.HEIGHT);
    wBarterWinBack:SetPosition(1,-2);
    wBarterWinBack:SetBackground(_IMAGES.BARTERBACK);
    wBarterWinBack:SetBlendMode(4);
    wBarterWinBack:SetMouseVisible(false);

    lblBarterFestival = Turbine.UI.Label();
    lblBarterFestival:SetParent(wBarterWinParent);
    lblBarterFestival:SetSize(windowWidth - 60,30);
    lblBarterFestival:SetPosition((windowWidth / 2) - (lblBarterFestival:GetWidth() / 2),40);
    lblBarterFestival:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    lblBarterFestival:SetFont(TrajanPro16);
    lblBarterFestival:SetForeColor(YELLOW);
    --lblBarterFestival:SetBackColor(Turbine.UI.Color.White);

    local barterItems = Turbine.UI.TreeView();
    barterItems:SetParent(wBarterWinParent);
    barterItems:SetSize(windowWidth - 58,SETTINGS.BARTERWIN.HEIGHT - 120);
    barterItems:SetPosition(25,80);
    barterItems:SetIndentationWidth(8);
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

    MakeExpandCollapseAllButton();
    SetBarterWinVisible(SETTINGS.BARTERWIN.VISIBLE);
end

function MakeExpandCollapseAllButton()
    
    -- Expand All buttons:
    local expandAll = Turbine.UI.Control();
    expandAll:SetParent(wBarterWinParent);
    expandAll:SetSize(16, 16);
    expandAll:SetPosition(30, 40);
    expandAll:SetBackground(_IMAGES.EXPAND_ALL_BUTTON);
    expandAll:SetBlendMode(Turbine.UI.BlendMode.Overlay);
    expandAll.MouseEnter = function(sender, args)
        expandAll:SetBackground(_IMAGES.EXPAND_ALL_BUTTON_ROLLOVER);
    end
    expandAll.MouseLeave = function(sender, args)
        -- MouseLeave is triggered when the tooltip appears.
        -- Check if the mouse is still over the button:
        local width, height = expandAll:GetSize();
        local mouseX, mouseY = expandAll:GetMousePosition();
        if (mouseX > 0 and mouseX < width and 
            mouseY > 0 and mouseY < height) then
            return;
        end
        expandAll:SetBackground(_IMAGES.EXPAND_ALL_BUTTON);
    end
    expandAll.MouseDown = function(sender, args)
        expandAll:SetBackground(_IMAGES.EXPAND_ALL_BUTTON_PRESSED);
    end
    expandAll.MouseUp = function(sender, args)
        expandAll:SetBackground(_IMAGES.EXPAND_ALL_BUTTON_ROLLOVER);
        -- If the cursor is still over the control, do it:
        local mouseX, mouseY = expandAll:GetMousePosition();
        if (mouseX >= 0 and mouseX <= expandAll:GetWidth() and 
            mouseY >= 0 and mouseY <= expandAll:GetHeight()) then
                wBarterWinParent.BarterItems:ExpandAll();
        end
    end
    expandAll:SetToolTip(GetString(_LANG.TOOLTIPS.GENERIC.EXPAND_ALL_TOOLTIP));

    -- Collapse All buttons:
    local collapseAll = Turbine.UI.Control();
    collapseAll:SetParent(wBarterWinParent);
    collapseAll:SetSize(16, 16);
    collapseAll:SetPosition(50, 40);
    collapseAll:SetBackground(_IMAGES.COLLAPSE_ALL_BUTTON);
    collapseAll:SetBlendMode(Turbine.UI.BlendMode.Overlay);
    collapseAll.MouseEnter = function(sender, args)
        collapseAll:SetBackground(_IMAGES.COLLAPSE_ALL_BUTTON_ROLLOVER);
    end
    collapseAll.MouseLeave = function(sender, args)
        -- MouseLeave is triggered when the tooltip appears.
        -- Check if the mouse is still over the button:
        local width, height = collapseAll:GetSize();
        local mouseX, mouseY = collapseAll:GetMousePosition();
        if (mouseX > 0 and mouseX < width and 
            mouseY > 0 and mouseY < height) then
            return;
        end
        collapseAll:SetBackground(_IMAGES.COLLAPSE_ALL_BUTTON);
    end
    collapseAll.MouseDown = function(sender, args)
        collapseAll:SetBackground(_IMAGES.COLLAPSE_ALL_BUTTON_PRESSED);
    end
    collapseAll.MouseUp = function(sender, args)
        collapseAll:SetBackground(_IMAGES.COLLAPSE_ALL_BUTTON_ROLLOVER);
        -- If the cursor is still over the control, do it:
        local mouseX, mouseY = collapseAll:GetMousePosition();
        if (mouseX >= 0 and mouseX <= collapseAll:GetWidth() and 
            mouseY >= 0 and mouseY <= collapseAll:GetHeight()) then
                wBarterWinParent.BarterItems:CollapseAll();
        end
    end
    collapseAll:SetToolTip(GetString(_LANG.TOOLTIPS.GENERIC.COLLAPSE_ALL_TOOLTIP)); -- todo: translate this!

    -- End Expand / Collapse All buttons

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
---@param parent TreeNode
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
    dividerLabel:SetSize(rowWidth - 20, rowHeight);
    dividerLabel:SetLeft(20);

    dividerLabel:SetFont(DividerFonts[dividerType]);

    local dividerHeight = barterItemData.DIVIDER_HEIGHT or rowHeight;
    parent:SetHeight(dividerHeight);
    dividerLabel:SetHeight(dividerHeight);

    dividerLabel:SetFontStyle(Turbine.UI.FontStyle.Outline);
    dividerLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    dividerLabel:SetText(GetString(barterItemData[DIVIDER_TEXT]));
end

--- Makes a label and adds it to the parent, if the divider type is valid.
---@param parent TreeNode
---@param barterItemData table
---@param rowWidth number
---@param rowHeight number
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

    lblBarterFestival:SetText(GetString(_LANG.OTHER.BARTERITEMS)..": "..GetString(_LANG.FESTIVALS[SELECTEDFESTIVAL]));

    local barterItems = wBarterWinParent.BarterItems;
    barterItems:GetNodes():Clear();

    local rowWidth = 422;
    local rowHeight = 45;

    local rootNodes = barterItems:GetNodes();
    local currentBarter1Nodes = nil; ---@type TreeNodeList|nil
    local currentBarter2Nodes = nil; ---@type TreeNodeList|nil

    -- The following code assumes Divider2s always appear under Divider1s,
    -- and dividers never appear under BarterItems.
    for _,barterItemData in ipairs (_BARTER[SELECTEDFESTIVAL]) do
        local rowHolder = Turbine.UI.TreeNode();
        rowHolder:SetSize(rowWidth,rowHeight);

        local type = barterItemData[DIVIDER_TYPE];
        if (type == DIVIDER1 or type == DIVIDER2) then
            if (type == DIVIDER1) then
                -- The code below will set up the new Divider1 tracker.
                -- Reset the existing Divider1 and Divider2 trackers:
                currentBarter1Nodes = nil;
                currentBarter2Nodes = nil;
            elseif (type == DIVIDER2) then
                -- The code below will set up the new Divider2 tracker.
                -- Reset the existing Divider2 tracker.
                currentBarter2Nodes = nil;
            end

            MakeDividerLabel(rowHolder, barterItemData, rowWidth, rowHeight);
        else
            MakeBarterItemRow(rowHolder, barterItemData, rowWidth, rowHeight);
        end

        -- Note: The following code is accomodating if the barter items only use Divider1 and BarterItems,
        --   The missing Divider2s will not cause any observed problems.
        if (currentBarter2Nodes) then
            -- If we have seen a Divider2, this is expected to be one of its BarterItems:
            currentBarter2Nodes:Add(rowHolder);
        elseif (currentBarter1Nodes) then
            -- Otherwise, if we have seen a Divider1, this is expected to be one of its Divider2s or BarterItems:
            currentBarter1Nodes:Add(rowHolder);
            if (type == DIVIDER1 or type == DIVIDER2) then
                currentBarter2Nodes = rowHolder:GetChildNodes();
            end
        else
            -- Otherwise, this is expected to be a Divider or BarterItem at the root level:
            rootNodes:Add(rowHolder);
            if (type == DIVIDER1 or type == DIVIDER2) then
                currentBarter1Nodes = rowHolder:GetChildNodes();
            end
        end
    end

    if (barterItems:GetNodes():GetCount() > 0) then
        barterItems:SetSelectedNode(barterItems:GetNodes():Get(1));
        barterItems:ExpandAll();
    end 
end




