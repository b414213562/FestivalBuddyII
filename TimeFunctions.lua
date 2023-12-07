---Returns a nicely formatted string from a date.
---@param date EngineGetDateTable
function PrettyPrintDate(date)
    local dateString = string.format(
        "%04d-%02d-%02d %02d:%02d:%02d",
        date.Year, date.Month, date.Day, date.Hour, date.Minute, date.Second);
    return dateString;
end

---Returns the previous 10:00 version of this structure.
---@param originalDate EngineGetDateTable The date to calculate the previous 10:00 from.
function GetPreviousHourTen(originalDate)
    local date = deepcopy(originalDate);

    local hourIsTen =
        date.Hour == 10 and
        date.Minute == 0 and
        date.Second == 0;
    if (hourIsTen) then return date; end

    local hourAfterTen =
        (date.Hour > 10) or
        (date.Hour == 10 and date.Minute > 0) or
        (date.Hour == 10 and date.Minute == 0 and date.Second > 0);

    date.Hour = 10;
    date.Minute = 0;
    date.Second = 0;
    if (hourAfterTen) then
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

---Gets
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