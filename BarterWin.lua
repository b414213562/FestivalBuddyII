
function DrawBarterWin()

    wBarterWinParent = Turbine.UI.Lotro.Window();
    wBarterWinParent:SetSize(480,500);
    wBarterWinParent:SetPosition(SETTINGS.BARTERWIN.X,SETTINGS.BARTERWIN.Y);
    wBarterWinParent:SetVisible(SETTINGS.BARTERWIN.VISIBLE);
    wBarterWinParent:SetText(GetString(_LANG.OTHER.BARTER));
    wBarterWinParent:SetResizable(true);
    wBarterWinParent:SetMinimumWidth(480);
    wBarterWinParent:SetMaximumWidth(480);

    wBarterWinBack = Turbine.UI.Control();
    wBarterWinBack:SetParent(wBarterWinParent);
    wBarterWinBack:SetSize(480,500);
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

    lstBarterItems = Turbine.UI.ListBox();
    lstBarterItems:SetParent(wBarterWinParent);
    lstBarterItems:SetSize(422,380);
    lstBarterItems:SetPosition(25,80);

    slstBarterItems = Turbine.UI.Lotro.ScrollBar();
    slstBarterItems:SetParent(wBarterWinParent);
    slstBarterItems:SetSize(8,lstBarterItems:GetHeight());
    slstBarterItems:SetPosition(lstBarterItems:GetLeft()+lstBarterItems:GetWidth()+2,lstBarterItems:GetTop());
    slstBarterItems:SetOrientation(Turbine.UI.Orientation.Vertical);
    slstBarterItems:SetZOrder(200000);
    slstBarterItems:SetVisible(false);

    lstBarterItems:SetVerticalScrollBar(slstBarterItems);

    RefreshBarterList();


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

        lstBarterItems:SetHeight(newListHeight);
        slstBarterItems:SetHeight(newListHeight);

    end

end


function RefreshBarterList()

    lstBarterItems:ClearItems();

    local ROWWIDTH = 422;
    local ROWHEIGHT = 45;

    local _FESTIVALITEMS = _BARTER[SELECTEDFESTIVAL];

    lblBarterFestival:SetText(GetString(_LANG.OTHER.BARTERITEMS)..": "..GetString(_LANG.FESTIVALS[SELECTEDFESTIVAL]));

    for k,v in ipairs (_FESTIVALITEMS) do

        local ROWHOLDER = Turbine.UI.Control();
        ROWHOLDER:SetSize(ROWWIDTH,ROWHEIGHT);

        if (v[1] == "DIVIDER1" or v[1] == "DIVIDER2") then
            local dividerLabel = Turbine.UI.Label();
            dividerLabel:SetParent(ROWHOLDER);
            dividerLabel:SetSize(ROWWIDTH, ROWHEIGHT);

            if (v[1] == "DIVIDER1") then
                dividerLabel:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold22);
            elseif (v[1] == "DIVIDER2") then
                dividerLabel:SetFont(Turbine.UI.Lotro.Font.BookAntiqua22);
            end

            if (v.DIVIDER_HEIGHT) then
                ROWHOLDER:SetHeight(v.DIVIDER_HEIGHT);
                dividerLabel:SetHeight(v.DIVIDER_HEIGHT);
            end

            dividerLabel:SetFontStyle(Turbine.UI.FontStyle.Outline);
            dividerLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
            dividerLabel:SetText(GetString(v[2]));
        else
            local ROWBACK = Turbine.UI.Control();
            ROWBACK:SetParent(ROWHOLDER);
            ROWBACK:SetSize(ROWWIDTH,ROWHEIGHT-5);
            ROWBACK:SetBackground(_IMAGES.BARTERITEMSBACK);
            ROWBACK:SetBlendMode(4);

            local item = 0;
            if type(v[1]) == 'string' then
                item = GetItemFromID(v[1],true);
            else
                item = GetItemFromID(v[1]);
            end

            -- When adding new items, if an item name resolves to multiple IDs
            -- some of those IDs might not work. Uncomment when adding items
            -- to catch that case:
--            if (item == nil) then
--                Turbine.Shell.WriteLine("Couldn't resolve item #" .. dump(v[1]));
--            end

            local cItemInspect = Turbine.UI.Lotro.ItemInfoControl();
            cItemInspect:SetParent(ROWBACK);
            cItemInspect:SetSize(36,36);
            cItemInspect:SetPosition(1,1);
            cItemInspect:SetItemInfo(item:GetItemInfo());
            cItemInspect:SetQuantity(1);

            if v[3] ~= nil then cItemInspect:SetQuantity(v[3]) end;

            local lblItemName = Turbine.UI.Label();
            lblItemName:SetParent(ROWBACK);
            lblItemName:SetPosition(40,2);
            lblItemName:SetSize(ROWWIDTH-150,36);
            lblItemName:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
            lblItemName:SetForeColor(_QUALITYCOLORS[item:GetItemInfo():GetQuality()]);
            --lblItemName:SetBackColor(Turbine.UI.Color.Red);
            lblItemName:SetFont(TrajanPro14);
            lblItemName:SetText(item:GetItemInfo():GetName());

            local lstTokensNeeded = Turbine.UI.ListBox();
            lstTokensNeeded:SetParent(ROWBACK);
            lstTokensNeeded:SetSize(110,36);
            lstTokensNeeded:SetPosition(ROWWIDTH-lstTokensNeeded:GetWidth(),0);
            lstTokensNeeded:SetOrientation(Turbine.UI.Orientation.Horizontal);
            --lstTokensNeeded:SetBackColor(Turbine.UI.Color.Red);

            if type(v[2])=='table' then
                for token_key,token_count in pairs (v[2]) do
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

        lstBarterItems:AddItem(ROWHOLDER);
    end

    lstBarterItems:SetSelectedIndex(1);
end




