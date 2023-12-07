
function DrawFireworksEventQuickslotWin()
    wQuickslot = Turbine.UI.Window();
    wQuickslot:SetBackground(_IMAGES.EVENT_QUICKSLOT_FIREWORKS_BREE);
    wQuickslot:SetSize(194, 41);
    wQuickslot:SetPosition(SETTINGS.EVENT_QUICKSLOT.X,SETTINGS.EVENT_QUICKSLOT.Y);
    wQuickslot:SetMouseVisible(false);
    wQuickslot:SetZOrder(1);
    wQuickslot.locked = true; -- Reposition UI is Off
    wQuickslot.isHudOn = true;
    wQuickslot.isWindowVisible = false;

    wBorder1 = CreateBorder(1);
    wBorder2 = CreateBorder(2);
    wBorder3 = CreateBorder(3);
    wBorder4 = CreateBorder(4);
end

local leftMargin = 28;
local borderWidth = 34;
local borderHeight = 34;
local topMargin = 4;

-- borderIndex starts at 1
function CreateBorder(borderIndex)
    local wBorder = Turbine.UI.Control()
    wBorder:SetParent(wQuickslot);
    wBorder:SetBackground(_IMAGES.SKILL_BORDER);
    wBorder:SetSize(borderWidth, borderHeight);
    wBorder:SetPosition(leftMargin + (borderWidth + 1) * (borderIndex - 1), topMargin);
    wBorder:SetMouseVisible(false);
    wBorder:SetVisible(false);
    return wBorder;
end

function HighlightAllowedFireworks(allowedFireworks)
    local red, green, blue, yellow = GetBorderState(allowedFireworks);
    wBorder1:SetVisible(red);
    wBorder2:SetVisible(green);
    wBorder3:SetVisible(blue);
    wBorder4:SetVisible(yellow);
end

function GetBorderState(allowedFireworks)
    if (allowedFireworks == RED_YES) then return true, false, false, false;
    elseif (allowedFireworks == RED_NO) then return false, true, true, true;
    elseif (allowedFireworks == GREEN_YES) then return false, true, false, false;
    elseif (allowedFireworks == GREEN_NO) then return true, false, true, true;
    elseif (allowedFireworks == BLUE_YES) then return false, false, true, false;
    elseif (allowedFireworks == BLUE_NO) then return true, true, false, true;
    elseif (allowedFireworks == YELLOW_YES) then return false, false, false, true;
    elseif (allowedFireworks == YELLOW_NO) then return true, true, true, false;
    end
    return false, false,  false, false;
end

function RepositionUI_Fireworks()
    wQuickslot.locked = not wQuickslot.locked;

    if (not wQuickslot.locked) then
        wQuickslot.dragBar = DragBar(wQuickslot, string.format("%s Quickslots", PLUGIN_NAME));
        wQuickslot.dragBar:SetBarOnTop(true);
        wQuickslot.dragBar:SetBarVisible(true);
        wQuickslot.dragBar:SetDraggable(true);
    else
        if (wQuickslot.dragBar ~= nil) then
            wQuickslot.dragBar:SetDraggable(false);
            wQuickslot.dragBar:SetTarget(nil);
            wQuickslot.dragBar = nil;
        end

        -- Save the new position
        SETTINGS.EVENT_QUICKSLOT.X = wQuickslot:GetLeft();
        SETTINGS.EVENT_QUICKSLOT.Y = wQuickslot:GetTop();
    end

end

function ToggleVisibility_Fireworks(isVisible)
    wQuickslot:SetVisible(isVisible);
    wQuickslot.isWindowVisible = isVisible;
end

function ToggleHUD_Fireworks()
    wQuickslot.isHudOn = not wQuickslot.isHudOn;
    if (wQuickslot.isHudOn) then
        wQuickslot:SetVisible(wQuickslot.isWindowVisible);
    else
        wQuickslot:SetVisible(false);
    end
end
