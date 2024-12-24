-- Note: This cannot be a singleton!
TimeOffsetControl = class(Turbine.UI.Control);

function TimeOffsetControl:Constructor()
    local indent = 0;
    local y = 0;

    Turbine.UI.Control.Constructor(self);

    -- Offset from Server Time
    local timeOffsetSectionLabel = Turbine.UI.Label();
    timeOffsetSectionLabel:SetParent(self);
    timeOffsetSectionLabel:SetHeight(30);
    timeOffsetSectionLabel:SetPosition(indent, y);
    timeOffsetSectionLabel:SetMultiline(true);
    timeOffsetSectionLabel:SetText(GetString(_LANG.OPTIONS.WHAT_IS_LOCAL_TIME_OFFSET));
    self.timeOffsetSectionLabel = timeOffsetSectionLabel;
    y = y + 30;

    local localTimeOffset = SETTINGS_ACCOUNT.LOCAL_TIME_OFFSET;

    local timeOffsetLabel = Turbine.UI.Label();
    timeOffsetLabel:SetParent(self);
    timeOffsetLabel:SetSize(180, 25);
    timeOffsetLabel:SetPosition(indent, y);
    timeOffsetLabel:SetText(GetString(_LANG.OPTIONS.OFFSET_HOURS));
--    timeOffsetLabel:SetBackColor(Turbine.UI.Color.DarkSlateBlue);
    timeOffsetLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    ---@class TextBox
    local timeOffsetTextBox = Turbine.UI.Lotro.TextBox();
    timeOffsetTextBox:SetParent(self);
    timeOffsetTextBox:SetSize(60, 25);
    timeOffsetTextBox:SetPosition(indent + timeOffsetLabel:GetWidth(), y);
    timeOffsetTextBox:SetMultiline(false);
    timeOffsetTextBox.SetOffsetText = function(textBox, offset)
        local localTimeOffsetDisplay = (((offset > 0) and "+") or "") .. offset;
        textBox:SetText(localTimeOffsetDisplay);
    end
    timeOffsetTextBox:SetOffsetText(localTimeOffset);
    timeOffsetTextBox.FocusLost = function(sender, args)
        SaveTimeOffset(timeOffsetTextBox:GetText());
    end
    timeOffsetTextBox.KeyDown = function(sender, args)
        local enter = 162;
        if (args.Action == enter) then
            SaveTimeOffset(timeOffsetTextBox:GetText());
        end
    end
    self.timeOffsetTextBox = timeOffsetTextBox;

    local servertimeQuickslot = Turbine.UI.Lotro.Quickslot();
    servertimeQuickslot:SetParent(self);
    servertimeQuickslot:SetSize(60, 25);
    servertimeQuickslot:SetPosition(indent + timeOffsetTextBox:GetLeft() + timeOffsetTextBox:GetWidth() + 20, y)
    servertimeQuickslot:SetAllowDrop(false);
    servertimeQuickslot:SetVisible(true);

    local servertimeLabel = Turbine.UI.Label();
    servertimeLabel:SetParent(self);
    servertimeLabel:SetSize(60, 25);
    servertimeLabel:SetPosition(servertimeQuickslot:GetLeft(), y);
    servertimeLabel:SetMouseVisible(false);
    servertimeLabel:SetBackColor(Turbine.UI.Color(0.1,0.15,0.3));
    servertimeLabel:SetFont(Turbine.UI.Lotro.Font.Verdana12);
    servertimeLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    servertimeLabel:SetText(GetString(_LANG.OPTIONS.DETECT_OFFSET));

    servertimeQuickslot.MouseEnter = function(sender, args)
        servertimeLabel:SetBackColor(Turbine.UI.Color(0.2,0.25,0.4));
        servertimeLabel:SetForeColor(YELLOW);
    end

    servertimeQuickslot.MouseLeave = function(sender, args)
        servertimeLabel:SetBackColor(Turbine.UI.Color(0.1,0.15,0.3));
        servertimeLabel:SetForeColor(WHITE);
    end

    local servertimeShortcut = Turbine.UI.Lotro.Shortcut();
---@diagnostic disable-next-line: param-type-mismatch
    servertimeShortcut:SetType(Turbine.UI.Lotro.ShortcutType.Alias);
    servertimeShortcut:SetData(GetString(_LANG.OPTIONS.SERVERTIME_COMMAND))
    servertimeQuickslot:SetShortcut(servertimeShortcut);

    AddCallback(CALLBACKS, "TimeOffsetChanged", function(sender, args)
        self.timeOffsetTextBox:SetOffsetText(args);
        self.timeOffsetTextBox:FocusLost();
    end);

end

function TimeOffsetControl:SetWidth(width)
    Turbine.UI.Control.SetWidth(self, width);

    self.timeOffsetSectionLabel:SetWidth(width);
end

function TimeOffsetControl:SetSize(width, height)
    Turbine.UI.Control.SetSize(self, width, height);

    self.timeOffsetSectionLabel:SetWidth(width);
end
