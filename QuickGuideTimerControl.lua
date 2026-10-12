
function MakeQuickGuideTimerControl(
    width, 
    height)

    local control = Turbine.UI.Control();
    control:SetBackColorBlendMode(Turbine.UI.BlendMode.AlphaBlend);
    control:SetMouseVisible(false);
    control:SetSize(width, height);
    control.PreviousUpdateTime = 0;
    control.IsStopped = true;

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

    QuickGuideTimerRestore(control);

    return control;
end

function QuickGuideTimerIsRunning(control)
    return control.IsStopped == false;
end

function QuickGuideTimerStart(control)
    if (not SETTINGS.QUICK_GUIDE_USE_TIMER) then
        return;
    end
    if (QuickGuideTimerIsRunning(control)) then
        return;
    end

    control.StartTime = Turbine.Engine.GetGameTime();
    control.IsStopped = false;
    SETTINGS.QUICK_GUIDE_TIMER_START_TIME = tostring(control.StartTime);
    control:SetWantsUpdates(true);
    saveData();
end

function QuickGuideTimerRestore(control)
    local savedStartTime = SETTINGS.QUICK_GUIDE_TIMER_START_TIME;
    if (not SETTINGS.QUICK_GUIDE_USE_TIMER or type(savedStartTime) ~= "string") then
        SETTINGS.QUICK_GUIDE_TIMER_START_TIME = false;
        return;
    end

    local startTime = tonumber(savedStartTime);
    local currentTime = Turbine.Engine.GetGameTime();
    local elapsedTime = startTime and currentTime - startTime;
    if (not elapsedTime or elapsedTime ~= elapsedTime or elapsedTime < 0 or elapsedTime >= 24 * 60 * 60) then
        QuickGuideTimerReset(control);
        return;
    end

    control.StartTime = startTime;
    control.IsStopped = false;
    control:SetWantsUpdates(true);
    UpdateQuickGuideTimerTime(control, elapsedTime);
end

function QuickGuideTimerStop(control)
    local wasRunning = QuickGuideTimerIsRunning(control);
    local hadSavedStartTime = type(SETTINGS.QUICK_GUIDE_TIMER_START_TIME) == "string";
    if (wasRunning) then
        UpdateQuickGuideTimerTime(control, Turbine.Engine.GetGameTime() - control.StartTime);
    end

    control.IsStopped = true;
    control:SetWantsUpdates(false);
    SETTINGS.QUICK_GUIDE_TIMER_START_TIME = false;
    if (wasRunning or hadSavedStartTime) then
        saveData();
    end
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
