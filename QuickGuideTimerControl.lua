
function MakeQuickGuideTimerControl(
    width, 
    height)

    local control = Turbine.UI.Control();
    control:SetBackColorBlendMode(Turbine.UI.BlendMode.AlphaBlend);
    control:SetMouseVisible(false);
    control:SetSize(width, height);
    control.PreviousUpdateTime = 0;

    local time = Turbine.UI.Label();
    time:SetParent(control);
    time:SetFont(Turbine.UI.Lotro.Font.Verdana16);
    time:SetSize(width, height);
    control.timeControl = time;

    control.Update = function(sender, args)
        if (control.IsStopped) then
            return;
        end

        local currentTime = Turbine.Engine.GetGameTime();
        local elapsedTime = currentTime - control.StartTime;

        local updateInterval = 0.5;
        if (currentTime > (control.PreviousUpdateTime + updateInterval)) then
            control.PreviousUpdateTime = currentTime;

            UpdateQuickGuideTimerTime(control, elapsedTime);
        end
    end

    -- QuickGuideTimerStart(control);

    return control;
end

function QuickGuideTimerStart(control)
    if (not SETTINGS.QUICK_GUIDE_USE_TIMER) then
        return;
    end
    control.StartTime = Turbine.Engine.GetGameTime();
    control.IsStopped = false;
    control:SetWantsUpdates(true);
end

function QuickGuideTimerStop(control)
    control.IsStopped = true;
    control:SetWantsUpdates(false);
end

function QuickGuideTimerReset(control)
    QuickGuideTimerStop(control);
    control.timeControl:SetText("");
end

function UpdateQuickGuideTimerTime(control, elapsedTime)
    local minutes = math.floor(elapsedTime / 60);
    local seconds = math.floor(elapsedTime - minutes * 60);
    local text = string.format("%d:%02d", minutes, seconds);

    control.timeControl:SetText(text);
end




