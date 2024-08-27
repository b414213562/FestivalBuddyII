--------------------------------------------------------------------------------------------------------
--
--    Alerts v1.0 by Galuhad
--
--    This class creates an alert window - a short message displayed
--    in the centre of the screen to inform the user of something.
--
--    Usage:
--    local tempMsg = Alert("MESSAGE STRING");
--
--------------------------------------------------------------------------------------------------------

Alert = {};
_mtAlert = {};

ActiveAlerts = {};
ActiveAlertsCount = 0;

--- Adds an animating alert to the global table
---@param control Control
---@return integer # A zero-based index usable to adjust on-screen elements.
function AddActiveAlert(control)
    local alertNumber = #ActiveAlerts + 1;
    control.Number = alertNumber;
    ActiveAlerts[alertNumber] = control;
    ActiveAlertsCount = ActiveAlertsCount + 1;
    return control.Number - 1;
end

--- Removes an animating alert from the global table
---@param control Control
function RemoveActiveAlert(control)
    local alertNumber = control.Number;
    ActiveAlerts[alertNumber] = nil;
    ActiveAlertsCount = ActiveAlertsCount - 1;
end

function Alert.Constructor(SENDER,MESSAGE,DURATION,SHOW_REMAINING_TIME,CALLBACK,CANCELLATION_TOKEN)

    if DURATION == nil then DURATION = 2.5 end;

    local MessageWindow = Turbine.UI.Window();
    MessageWindow:SetSize(Turbine.UI.Display.GetWidth()-500,100);
    MessageWindow:SetPosition((Turbine.UI.Display.GetWidth()/2)-(MessageWindow:GetWidth()/2),(Turbine.UI.Display.GetHeight()/3)-(MessageWindow:GetHeight()/2));
    MessageWindow:SetMouseVisible(false);
    MessageWindow:SetVisible(true);

    local MessageLabel = Turbine.UI.Label();
    MessageLabel:SetParent(MessageWindow);
    MessageLabel:SetSize(MessageWindow:GetSize());
    MessageLabel:SetPosition(0,0);
    MessageLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    MessageLabel:SetFont(Turbine.UI.Lotro.Font.TrajanProBold24);
    MessageLabel:SetForeColor(Turbine.UI.Color.OrangeRed);
    MessageLabel:SetOutlineColor(Turbine.UI.Color(0.1,0.1,0.1));
    MessageLabel:SetFontStyle(Turbine.UI.FontStyle.Outline);
    MessageLabel:SetMarkupEnabled(true);
    MessageLabel:SetMultiline(true);
    MessageLabel:SetMouseVisible(false);
    MessageLabel:SetText(MESSAGE);

    local isCancelled = false;
    local cancelFunction = function() isCancelled = true; end;
    if (CANCELLATION_TOKEN ~= nil) then
        AddCallback(CANCELLATION_TOKEN, "Cancel", cancelFunction);
    end

    -- This function animates the main windows fade out when mouse leaves.
    local function AnimateAlert(CONTROL,LABEL,STARTX,FINISHX,STARTY,FINISHY,STARTOPACITY,FINISHOPACITY,DURATION) -- DURATION in SECONDS.

        if CONTROL == nil then return end;


        local startGameTime = Turbine.Engine.GetGameTime();
        local endGameTime = startGameTime + DURATION;
        local PERCENTBEFOREFADE = 0.8;
        local previousUpdateTime = 0;
        local remainingTimeUpdateInterval = 0.5;
        local precisionString = "%.0f";

        local AnimateControl = Turbine.UI.Control();
        AnimateControl:SetSize(1,1);
        AnimateControl:SetWantsUpdates(true);
        local alertSlot = AddActiveAlert(AnimateControl);
        STARTY = alertSlot * 100 + STARTY;
        FINISHY = alertSlot * 100 + FINISHY;

        AnimateControl.Update = function ()

            local currentGameTime = Turbine.Engine.GetGameTime();

            PERCENTCOMPLETE = (currentGameTime-startGameTime)/DURATION;

            if PERCENTCOMPLETE > 1 then PERCENTCOMPLETE = 1 end;

            CONTROL:SetTop(STARTY + (PERCENTCOMPLETE*(FINISHY - STARTY)));
            CONTROL:SetLeft(STARTX + (PERCENTCOMPLETE*(FINISHX - STARTX)));

            if (SHOW_REMAINING_TIME) then
                local timeRemaining = DURATION - (currentGameTime-startGameTime)
                local isPrecise = timeRemaining < 5;
                if (isPrecise) then 
                    remainingTimeUpdateInterval = 0.05;
                    precisionString = "%.1f";
                end

                if (currentGameTime > (previousUpdateTime + remainingTimeUpdateInterval)) then
                    previousUpdateTime = currentGameTime;

                    local percentRemaining = 1 - PERCENTCOMPLETE;
                    local durationRemaining = DURATION * percentRemaining;
                    local remainingRounded = string.format(precisionString, durationRemaining);
                    LABEL:SetText(MESSAGE .. " [" .. remainingRounded .. "]");
                end
            end

            if PERCENTCOMPLETE < PERCENTBEFOREFADE then
                PERCENTCOMPLETE = 0;
            else
                PERCENTCOMPLETE = (PERCENTCOMPLETE-PERCENTBEFOREFADE)/(1-PERCENTBEFOREFADE);
            end

            CONTROL:SetOpacity(STARTOPACITY + (PERCENTCOMPLETE*(FINISHOPACITY - STARTOPACITY)));

            if currentGameTime > endGameTime or isCancelled then
                AnimateControl:SetWantsUpdates(false);
                MessageLabel = nil;
                MessageWindow = nil;
                if (CALLBACK ~= nil) then
                    CALLBACK();
                end
                CONTROL:SetVisible(false);
                RemoveActiveAlert(AnimateControl);
                if (CANCELLATION_TOKEN ~= nil) then
                    RemoveCallback(CANCELLATION_TOKEN, "Cancel", cancelFunction);
                end
            end
        end
    end

    AnimateAlert(MessageWindow,MessageLabel,MessageWindow:GetLeft(),MessageWindow:GetLeft(),MessageWindow:GetTop(),MessageWindow:GetTop(),1,0,DURATION)

end


function _mtAlert.__call(...)
    return Alert.Constructor(...);
end

setmetatable(Alert, _mtAlert);

_G.CubePlugins.FestivalBuddyII.Alert = Alert;