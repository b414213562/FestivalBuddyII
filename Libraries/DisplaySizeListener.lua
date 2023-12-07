-- DisplaySizeListener borrowed from Utils_13.lua distributed with SequenceBars. Thanks Thurallor!

-- Adds a mechanism to detect game client resolution changes.
-- Triggers Turbine.UI.Display.SizeChanged with each change.
-- Detects resizing a windowed client window and changing between windowed and fullscreen modes.

-- Add the Turbine.UI.Display.SizeChanged event.
---@class DisplaySizeListener: Window
DisplaySizeListener = Turbine.UI.Window();
DisplaySizeListener:SetVisible(true);
DisplaySizeListener:SetStretchMode(0);
DisplaySizeListener:SetSize(1, 1);
DisplaySizeListener:SetWantsUpdates(true);
DisplaySizeListener:SetStretchMode(1);
DisplaySizeListener:SetWantsUpdates(true);
function DisplaySizeListener:Update()
    DisplaySizeListener:SetSize(2, 2);
    self.ignoreSizeChangedEvents = 0;
    self:SetWantsUpdates(false);
    self.Update = self._Update;
    self.SizeChanged = self._SizeChanged;
end
function DisplaySizeListener:_Update()
    self:SetWantsUpdates(false);
    DoCallbacks(Turbine.UI.Display, "SizeChanged");
end
function DisplaySizeListener:_SizeChanged()
    if (self.ignoreSizeChangedEvents > 0) then
        self.ignoreSizeChangedEvents = self.ignoreSizeChangedEvents - 1;
        return;
    end
    self:SetSize(2, 2);
    self.ignoreSizeChangedEvents = 1;
    -- Need to wait until the next Update() cycle before reporting.
    self:SetWantsUpdates(true);
end