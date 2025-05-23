-- Daylight Saving Time start/stop: (includes day of year)

-- United States: (https://www.timeanddate.com/time/change/usa/new-york)
-- Year     DST Start (Clock Forward)       DST End (Clock Backward)
-- 2024     Sunday, 10 March, 02:00 (70)    Sunday, 3 November, 02:00 (308)
-- 2025     Sunday,  9 March, 02:00 (68)    Sunday, 2 November, 02:00 (306)
-- 2026     Sunday,  8 March, 02:00 (67)    Sunday, 1 November, 02:00 (305)
-- 2027     Sunday, 14 March, 02:00 (73)    Sunday, 7 November, 02:00 (311)
-- 2028     Sunday, 12 March, 02:00 (72)    Sunday, 5 November, 02:00 (310)
-- 2029     Sunday, 11 March, 02:00 (70)    Sunday, 4 November, 02:00 (308)

-- Netherlands: (https://www.timeanddate.com/time/change/netherlands/amsterdam)
-- 2024    Sunday, 31 March, 02:00 (91)     Sunday, 27 October, 03:00 (301)
-- 2025    Sunday, 30 March, 02:00 (89)     Sunday, 26 October, 03:00 (299)
-- 2026    Sunday, 29 March, 02:00 (88)     Sunday, 25 October, 03:00 (298)
-- 2027    Sunday, 28 March, 02:00 (87)     Sunday, 31 October, 03:00 (304)
-- 2028    Sunday, 26 March, 02:00 (86)     Sunday, 29 October, 03:00 (303)
-- 2029    Sunday, 25 March, 02:00 (84)     Sunday, 28 October, 03:00 (301)

DaylightSavingTimeLookup = {
    [2024] = { ["START"] = { ["US"] = 70; ["EU"] = 91; }; ["STOP"] = { ["US"] = 308; ["EU"] = 301; }; };
    [2025] = { ["START"] = { ["US"] = 68; ["EU"] = 89; }; ["STOP"] = { ["US"] = 306; ["EU"] = 299; }; };
    [2026] = { ["START"] = { ["US"] = 67; ["EU"] = 88; }; ["STOP"] = { ["US"] = 305; ["EU"] = 298; }; };
    [2027] = { ["START"] = { ["US"] = 73; ["EU"] = 87; }; ["STOP"] = { ["US"] = 311; ["EU"] = 304; }; };
    [2028] = { ["START"] = { ["US"] = 72; ["EU"] = 86; }; ["STOP"] = { ["US"] = 310; ["EU"] = 303; }; };
    [2029] = { ["START"] = { ["US"] = 70; ["EU"] = 84; }; ["STOP"] = { ["US"] = 308; ["EU"] = 301; }; };

    -- TODO in 2026: Verify these are still correct, and add future entries.
};

---Returns a guess of whether or not we are currently between the times that one of
---U.S. / Europe has changed for DST and the other has not yet.
---If true, then the offset between U.S. and Europe is -1 from normal.
---Note: Returns an incorrect result between midnight and the actual start/stop of DST.
---@param localDateTime EngineGetDateTable
---@return boolean
function IsDstStartStopOverlap(localDateTime)
    local localDayOfYear = localDateTime.DayOfYear;

    -- We don't have the data to do a lookup, assume no overlap.
    if (DaylightSavingTimeLookup[localDateTime.Year] == nil) then return false; end

    local usDstStart = DaylightSavingTimeLookup[localDateTime.Year]["START"]["US"];
    local europeDstStart = DaylightSavingTimeLookup[localDateTime.Year]["START"]["EU"];

    local usDstStop = DaylightSavingTimeLookup[localDateTime.Year]["STOP"]["US"];
    local europeDstStop = DaylightSavingTimeLookup[localDateTime.Year]["STOP"]["EU"];

    if (localDayOfYear >= usDstStart and localDayOfYear < europeDstStart) then
        return true
    elseif (localDayOfYear >= europeDstStop and localDayOfYear < usDstStop) then
        return true
    end

    return false;
end

---Returns a nicely formatted string from a date.
---@param date EngineGetDateTable
function PrettyPrintDate(date)
    local dateString = string.format(
        "%04d-%02d-%02d %02d:%02d:%02d",
        date.Year, date.Month, date.Day, date.Hour, date.Minute, date.Second);
    return dateString;
end

---Returns the previous 10:00 version of this structure.
---Note: converts server time to local time using SETTINGS_ACCOUNT.LOCAL_TIME_OFFSET (passed as localTimeOffset).
---e.g. for Netherlands this would be 16:00:00 most of the year, and 15:00:00 during DST-end overlap.
---@param originalDate EngineGetDateTable The date to calculate the previous 10:00 from.
function GetPreviousMazeResetHour(originalDate, localTimeOffset)
    local mazeResetHourServer = 10; -- 10 am server time

    local localTimeOffsetHour = math.floor(localTimeOffset or 0);
    local localTimeOffsetMinute = (localTimeOffset - localTimeOffsetHour) * 60;

    local mazeResetHourLocal = mazeResetHourServer + (localTimeOffsetHour or 0);

    -- Duplicate the passed-in date so we can modify it as-needed:
    local date = deepcopy(originalDate);

    local doesTimeMatchReset =
        date.Hour == mazeResetHourLocal and
        date.Minute == localTimeOffsetMinute and
        date.Second == 0;
    if (doesTimeMatchReset) then return date; end

    local isTimeAfterReset =
        (date.Hour > mazeResetHourLocal) or
        (date.Hour == mazeResetHourLocal and date.Minute > 0) or
        (date.Hour == mazeResetHourLocal and date.Minute == 0 and date.Second > 0);

    date.Hour = mazeResetHourLocal;
    date.Minute = localTimeOffsetMinute;
    date.Second = 0;
    if (isTimeAfterReset) then
        return date;
    end

    -- It's after midnight the next day.
    -- Roll back time manually, 
    --   until we find a built-in function to do this.
    date.Day = date.Day - 1;
    if (date.Day < 1) then
        -- need to subtract one from month
        -- and set Date to last day of that month.
        date.Month = date.Month - 1;
        date.Day = GetDaysOfMonth(date.Month, date.Year);
    end
    if (date.Month < 1) then
        -- need to subtract one from year
        -- and set month to last month of the year.
        date.Year = date.Year - 1;
        date.Month = 12;
    end

    -- Note: For DayOfWeek, Sunday = 1 and Saturday = 7
    date.DayOfWeek = date.DayOfWeek - 1;
    if (date.DayOfWeek < 1) then date.DayOfWeek = 7; end
    date.DayOfYear = date.DayOfYear - 1;
    if (date.DayOfYear < 1) then
        if (IsLeapYear(date.Year)) then date.DayOfYear = 366;
        else date.DayOfYear = 365;
        end
    end

    return date;
end

---Gets the days of the month
---@param month integer 1 through 12
---@param year integer Four-digit value
function GetDaysOfMonth(month, year)
    if (month < 1) then
        month = 12;
        year = year - 1;
    end

    if (month == 1) then return 31;
    elseif (month == 2) then
        if (IsLeapYear(year)) then
            return 29;
        else
            return 28;
        end
    elseif (month == 3) then return 31;
    elseif (month == 4) then return 30;
    elseif (month == 5) then return 31;
    elseif (month == 6) then return 30;
    elseif (month == 7) then return 31;
    elseif (month == 8) then return 31;
    elseif (month == 9) then return 30;
    elseif (month == 10) then return 31;
    elseif (month == 11) then return 30;
    else return 31;
    end
end

---Gets the number of days in a given year
---@param year any
---@return integer
function GetDaysInYear(year)
    if (IsLeapYear(year)) then return 366; end
    return 365;
end

---Returns true if year has leap day.
--- Note: Uses basic formula, does not care of a locale did not actually observe a leap year.
---@param year integer
---@return boolean #True if year is leap, false otherwise.
function IsLeapYear(year)
    local is400 = (year % 400) == 0;
    local is100 = (year % 100) == 0;
    local is4 = (year % 4) == 0;

    -- divisible by 4 (yes)
    -- except for those divisible by 100 (no)
    -- except those that are divisible by 400 (back to yes)
    if (is400) then return true;
    elseif (is100) then return false;
    elseif (is4) then return true;
    else return false;
    end
end

---The number of whole days difference between the two dates.
---@param date1 EngineGetDateTable A value returned from Turbine.Engine.GetDate()
---@param date2 EngineGetDateTable A value returned from Turbine.Engine.GetDate()
function GetDayDifference(date1, date2)
    local date1compare = date1.Year * 10000 + date1.Month * 100 + date1.Day + date1.Hour / 24 + (date1.Minute / 60 / 24) + (date1.Second / 60 / 60 / 24);
    local date2compare = date2.Year * 10000 + date2.Month * 100 + date2.Day + date2.Hour / 24 + (date2.Minute / 60 / 24) + (date2.Second / 60 / 60 / 24);

    local lesserDate = date1;
    local greaterDate = date2;

    if (date1compare > date2compare) then
        lesserDate = date2;
        greaterDate = date1;
    end

    if (lesserDate.Year == greaterDate.Year) then
        return greaterDate.DayOfYear - lesserDate.DayOfYear;
    end

    -- What if the two dates come from different years?
    -- Remaining days in lesser year
    -- All days in each in-between year
    -- date2.DayOfYear days.
    -- e.g. 2023|287 vs 2024|200:
    -- (365 - 287) = 78
    -- + 0
    -- + 200
    -- = 278
    local daysInLesserYear = GetDaysInYear(lesserDate.Year);
    local remainingDaysInLesserYear = daysInLesserYear - lesserDate.DayOfYear;
    local daysInInbetweenYears = 0;
    for year = lesserDate.Year + 1, greaterDate.Year - 1 do
        daysInInbetweenYears = daysInInbetweenYears + GetDaysInYear(year);
    end
    local finalYearDays = greaterDate.DayOfYear;
    local totalDays =
        remainingDaysInLesserYear +
        daysInInbetweenYears +
        finalYearDays;

    return totalDays;
end