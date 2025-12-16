-- Inspired by the TimerControl from MinstrelBuffs

local precisionPoint = 5; -- seconds

function MakeHobnanigansTimerControl(
    width, height, duration,
    borderWidth, borderHeight,
    colorStart,
    colorMiddle, colorMiddleTime,
    colorEnd, colorEndTime)

    local control = Turbine.UI.Control();
    control:SetSize(width + borderWidth * 2, height + borderHeight * 2 + 10);
    control:SetVisible(false);
    control:SetBackColorBlendMode(Turbine.UI.BlendMode.AlphaBlend);

    local timer = Turbine.UI.Control();
    timer:SetParent(control);
    control.timer = timer;

    timer.TimerWidth = 0;
    HobnanigansTimerSetSize(control, width, height);
    timer:SetBackColor(colorStart);
    timer:SetPosition(borderWidth, borderHeight + 5);
    timer.StartColor = colorStart;

    timer.IsStart = true;
    timer.IsMiddle = false;
    timer.IsEnd = false;

    timer.MiddleTime = colorMiddleTime;
    timer.EndTime = colorEndTime;

    timer.Duration = duration;
    timer.IsStopped = true;
    timer.StartTime = 0;
    timer.PreviousUpdateTime = 0;
    timer:SetWantsUpdates(false);

    -- Mark off the 6 minute and 2 minute sections:
    local twoMinuteBar = Turbine.UI.Control();
    twoMinuteBar:SetParent(control);
    twoMinuteBar:SetBackColor(Turbine.UI.Color.Black);
    twoMinuteBar:SetSize(3, 30);
    twoMinuteBar:SetPosition(control:GetWidth() / 5, 0);

    local sixMinuteBar = Turbine.UI.Control();
    sixMinuteBar:SetParent(control);
    sixMinuteBar:SetBackColor(Turbine.UI.Color.Black);
    sixMinuteBar:SetSize(3, 30);
    sixMinuteBar:SetPosition(control:GetWidth() * 3 / 5, 0);

    local timerText = Turbine.UI.Label();
    timerText:SetParent(control);
    timerText:SetFont(Turbine.UI.Lotro.Font.TrajanPro20);
    timerText:SetFontStyle(Turbine.UI.FontStyle.Outline);
    timerText:SetForeColor(Turbine.UI.Color.White);
    timerText:SetOutlineColor(Turbine.UI.Color.Black);
    timerText:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    timerText:SetPosition(borderWidth, borderHeight + 5);
    timerText:SetSize(width - 20, height);


    timer.Update = function(sender, args)
        if (timer.IsStopped) then
            return;
        end

        local currentTime = Turbine.Engine.GetGameTime();
        local elapsedTime = currentTime - timer.StartTime;
        local remainingTime = timer.Duration - elapsedTime;

        local isPrecise = remainingTime < precisionPoint;
        local updateInterval = 0.5;
        if (isPrecise) then updateInterval = 0.05; end

        if (elapsedTime > timer.Duration) then
            HobnanigansTimerStop(control);
        elseif (currentTime > (timer.PreviousUpdateTime + updateInterval)) then
            -- Don't bother updating the timer every frame.
            timer.PreviousUpdateTime = currentTime;

            local timerWidth = timer.TimerWidth - ((elapsedTime / timer.Duration) * timer.TimerWidth);
            timer:SetWidth(timerWidth);

            if (timer.IsStart and remainingTime <= colorMiddleTime) then
                timer.IsStart = false;
                timer.IsMiddle = true;
                timer:SetBackColor(colorMiddle);
            elseif (timer.IsMiddle and remainingTime <= colorEndTime) then
                timer.IsMiddle = false;
                timer.IsEnd = true;
                timer:SetBackColor(colorEnd);
            end

            timerText:SetText(FormatHobnanigansTime(remainingTime));
        end
    end

    return control;
end

function FormatHobnanigansTime(timeInSeconds)
    if (timeInSeconds > 60) then
        local minutes = math.floor(timeInSeconds / 60);
        local seconds = math.floor(timeInSeconds - minutes * 60);

        return string.format("%dm %ds", minutes, seconds);
    else
        local formatString = "%.0f";
        if (timeInSeconds < precisionPoint) then
            formatString = "%.1f";
        end
        return string.format(formatString, timeInSeconds);
    end
end

function HobnanigansTimerSetSize(control, width, height)
    local timer = control.timer;
    timer:SetSize(width, height);
    timer.TimerWidth = width;
end

function HobnanigansTimerStart(control)
    local timer = control.timer;
    timer.StartTime = Turbine.Engine.GetGameTime();
    timer.IsStopped = false;
    timer:SetBackColor(timer.StartColor);
    timer:SetWantsUpdates(true);
    control:SetVisible(true);
end

function HobnanigansTimerStop(control)
    local timer = control.timer;
    timer.IsStopped = true;
    timer:SetWantsUpdates(false);
    control:SetVisible(false);
end

-- Override timer when referee says 2 minutes, 6 minutes
function HobnanigansTimerSetTimeRemaining(control, secondsRemaining)
    local timer = control.timer;
    local currentTime = Turbine.Engine.GetGameTime();
    timer.StartTime = currentTime - (timer.Duration - secondsRemaining);

    -- Update color state:
    local elapsedTime = currentTime - timer.StartTime;
    local remainingTime = timer.Duration - elapsedTime;

    timer.IsStart = false;
    timer.IsMiddle = false;
    timer.IsEnd = false;

    if (remainingTime < timer.EndTime) then
        timer.IsEnd = true;
    elseif (remainingTime < timer.MiddleTime) then
        timer.IsMiddle = true;
    else
        timer.IsStart = true;
        timer:SetBackColor(timer.StartColor);
    end
end
