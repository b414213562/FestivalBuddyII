
function DrawBonusToolReminderWin()
    BonusToolReminderWin = Turbine.UI.Lotro.Window();

    local window = BonusToolReminderWin;
    window:SetSize(500, 200);
    window:SetText(GetString(_LANG.OTHER.WINDOWS.BONUS_ITEM.BONUS_ITEM_TITLE));

    local displayWidth, displayHeight = Turbine.UI.Display.GetSize();
    window:SetPosition(
        (displayWidth - window:GetWidth()) / 2,
        (displayHeight - window:GetHeight()) / 3);
    window.Closed = function(sender, args)
        UnregisterForItemEquipped();
    end

    local marginTop = 32;
    local marginLeft = 18;
    local marginRight = 18;
    local marginBottom = 18;

    local mainLabel = Turbine.UI.Label();
    mainLabel:SetParent(window);
    mainLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro28);
    mainLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    mainLabel:SetSize(
        window:GetWidth() - marginLeft - marginRight,
        75);
    mainLabel:SetPosition(marginLeft, marginTop);
    --mainLabel:SetBackColor(Turbine.UI.Color.DarkRed);
    BonusToolReminderWin.Label = mainLabel;

    local exampleLabel = Turbine.UI.Label();
    exampleLabel:SetParent(window);
    exampleLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro16);
    exampleLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    exampleLabel:SetSize(
        window:GetWidth() - marginLeft - marginRight,
        75);
    exampleLabel:SetPosition(marginLeft, marginTop + mainLabel:GetHeight());
    --exampleLabel:SetBackColor(Turbine.UI.Color.DarkRed);
    exampleLabel:SetText(GetString(_LANG.OTHER.WINDOWS.BONUS_ITEM.BONUS_ITEM_EXAMPLE));

end

function ShowBonusItemStart()
    BonusToolReminderWin.Label:SetText(GetString(_LANG.OTHER.WINDOWS.BONUS_ITEM.BONUS_ITEM_START_TEXT));
    BonusToolReminderWin:SetVisible(true);

    local isEquipped, isToolBonusItem, isPocketBonusItem = IsBonusItemEquipped();
    BonusToolReminderWin.IsToolBonusItem = isToolBonusItem;
    BonusToolReminderWin.IsPocketBonusItem = isPocketBonusItem;
    Turbine.Gameplay.LocalPlayer.GetInstance():GetEquipment().ItemEquipped = WatchForBonusItemEquipped;
end

function ShowBonusItemStop()
    BonusToolReminderWin.Label:SetText(GetString(_LANG.OTHER.WINDOWS.BONUS_ITEM.BONUS_ITEM_STOP_TEXT));
    BonusToolReminderWin:SetVisible(true);

    local isEquipped, isToolBonusItem, isPocketBonusItem = IsBonusItemEquipped();
    BonusToolReminderWin.IsToolBonusItem = isToolBonusItem;
    BonusToolReminderWin.IsPocketBonusItem = isPocketBonusItem;

    Turbine.Gameplay.LocalPlayer.GetInstance():GetEquipment().ItemUnequipped = WatchForBonusItemUnequipped;
end

function WatchForBonusItemEquipped(sender, args)
    if (args.Index == Turbine.Gameplay.Equipment.CraftTool or
        args.Index == Turbine.Gameplay.Equipment.Pocket) then
        if (IsBonusItemEquipped()) then
            BonusToolReminderWin:SetVisible(false);
            UnregisterForItemEquipped();
        end
    end
end

function WatchForBonusItemUnequipped(sender, args)
    if ((args.Index == Turbine.Gameplay.Equipment.CraftTool and
            BonusToolReminderWin.IsToolBonusItem) or
        (args.Index == Turbine.Gameplay.Equipment.Pocket and
            BonusToolReminderWin.IsPocketBonusItem)) then

        BonusToolReminderWin:SetVisible(false);
        UnregisterForItemEquipped();
    end
end

function UnregisterForItemEquipped()
    Turbine.Gameplay.LocalPlayer.GetInstance():GetEquipment().ItemUnequipped = nil;
    Turbine.Gameplay.LocalPlayer.GetInstance():GetEquipment().ItemEquipped = nil;
end
