if (not SHOW_DEBUG_OPTIONS) then return; end

Sunday = 1;
Monday = 2;
Tuesday = 3;
Wednesday = 4;
Thursday = 5;
Friday = 6;
Saturday = 7;

local functionsToTest = {};

function TestWriteLine(message)
    Turbine.Shell.WriteLine("<rgb=#55FF55>" .. message .. "</rgb>");
end

function TestFailWriteLine(message)
    Turbine.Shell.WriteLine("<rgb=#FF5555>" .. message .. "</rgb>");
end

local testFailed = false; -- true if all passed, false if failure

function AddTest(testFunction)
    functionsToTest[testFunction] = _G.CubePlugins.FestivalBuddyII.Tests[testFunction];
end

function AssertIsTrue(a, message)
    if (a) then return; end

    testFailed = true;
    TestFailWriteLine("Assert failed, expected true but got false: " .. message);
    Turbine.Shell.WriteLine("<rgb=#FFA500>" .. Turbine.Engine.GetCallStack() .. "</rgb>");
end

function AssertIsFalse(a, message)
    if (not a) then return; end

    testFailed = true;
    TestFailWriteLine("Assert failed, expected false but got true: " .. message);
    Turbine.Shell.WriteLine("<rgb=#FFA500>" .. Turbine.Engine.GetCallStack() .. "</rgb>");
end

function AssertIsEqual(a, b, message)
    if (a == b) then return; end

    testFailed = true;
    TestFailWriteLine("Assert failed, items are not equal: " .. message);
    Turbine.Shell.WriteLine("<rgb=#FFA500>" .. Turbine.Engine.GetCallStack() .. "</rgb>");
end

function AssertDatesEqual(expected, actual)
    -- Checks Year, Month, Day, Hour, Minute, Second, DayOfWeek, DayOfYear, and IsDST
    local fields = { "Year", "Month", "Day", "Hour", "Minute", "Second", "DayOfWeek", "DayOfYear", "IsDST" };
    for key, value in ipairs(fields) do
        local message = "expected." .. value .. " (" .. (expected[value] or "nil") .. ") ~= actual." .. value .. " (" .. (actual[value] or "nil") .. ")";
        AssertIsEqual(expected[value], actual[value], message);
    end
end

function MakeLocalDate(year, month, day, hour, minute, second, dayOfYear, dayOfWeek)
    local localDate = {
        ["Year"] = year;
        ["Month"] = month;
        ["Day"] = day;
        ["Hour"] = hour;
        ["Minute"] = minute;
        ["Second"] = second;
        ["DayOfYear"] = dayOfYear;
        ["DayOfWeek"] = dayOfWeek;
    };
    return localDate;
end


-- Begin by testing the DST and Time Zone functionality
function TestIsDstStartStopOverlap_Spring()
    local result = false;
    local localDate = MakeLocalDate(2024, 1, 1, 1, 1, 0, 1);

    -- any day before US transition day:
    localDate = MakeLocalDate(2024, 3, 8, 1, 59, 0, 68);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "any day before US transition day");

    -- Four cases for US transition:
    -- before 1 am same day
    -- after 2 am, same day, IsDst = false
    localDate = MakeLocalDate(2024, 3, 10, 1, 59, 0, 70);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "before 1 am same day (erroneous)");

    localDate = MakeLocalDate(2024, 3, 10, 3, 15, 0, 70);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "after 2 am, same day, IsDst = false");

    -- any day in between the transition days:
    localDate = MakeLocalDate(2024, 3, 12, 3, 15, 0, 72);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "any day in between the transition days");

    -------------------------------

    -- Four cases for NL transition:
    -- before 2 am same day
    -- between 2 am and 3 am, IsDST = true (1st repetion)
    -- between 2 am and 3 am, IsDST = false (2nd repetion)
    -- after 3 am, same day, IsDst = false
    localDate = MakeLocalDate(2024, 3, 31, 12, 59, 0, 91);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "before 2 am same day (erroneous)");

    localDate = MakeLocalDate(2024, 3, 31, 2, 59, 0, 91);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "after 3 am, same day, IsDst = false");

    -- any day after NL transition day:
    localDate = MakeLocalDate(2024, 4, 1, 1, 59, 0, 92);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "any day after NL transition day");

end
AddTest("TestIsDstStartStopOverlap_Spring");

function TestIsDstStartStopOverlap_Autumn()
    local result = false;
    local localDate = MakeLocalDate(2024, 1, 1, 1, 1, 0, 1);

    -- any day before NL transition day:
    localDate = MakeLocalDate(2024, 10, 25, 1, 59, 0, 299);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "any day before NL transition day");

    -- Four cases for NL transition:
    -- before 2 am same day
    -- between 2 am and 3 am, IsDST = true (1st repetion)
    -- between 2 am and 3 am, IsDST = false (2nd repetion)
    -- after 3 am, same day, IsDst = false
    localDate = MakeLocalDate(2024, 10, 27, 1, 59, 0, 301);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "before 2 am same day (erroneous)");

    localDate = MakeLocalDate(2024, 10, 27, 2, 15, 0, 301);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "between 2 am and 3 am, IsDST = true (1st repetion)  (erroneous)");

    localDate = MakeLocalDate(2024, 10, 27, 2, 15, 0, 301);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "between 2 am and 3 am, IsDST = false (2nd repetion)");

    localDate = MakeLocalDate(2024, 10, 27, 3, 15, 0, 301);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "after 3 am, same day, IsDst = false");

    -- any day in between the transition days:
    localDate = MakeLocalDate(2024, 10, 28, 3, 15, 0, 302);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "any day in between the transition days");

    -------------------------------

    -- Four cases for US transition:
    -- before 1 am same day
    -- between 1 am and 2 am, IsDST = true (1st repetion)
    -- between 1 am and 2 am, IsDST = false (2nd repetion)
    -- after 2 am, same day, IsDst = false
    localDate = MakeLocalDate(2024, 11, 3, 12, 59, 0, 308);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "before 1 am same day (erroneous)");

    localDate = MakeLocalDate(2024, 11, 3, 1, 59, 0, 308);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "between 1 am and 2 am, IsDST = true (1st repetion) erroneous");

    localDate = MakeLocalDate(2024, 11, 3, 1, 59, 0, 308);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "between 1 am and 2 am, IsDST = false (2nd repetion)");

    localDate = MakeLocalDate(2024, 11, 3, 2, 59, 0, 308);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "after 2 am, same day, IsDst = false");

    -- any day after US transition day:
    localDate = MakeLocalDate(2024, 11, 5, 1, 59, 0, 310);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "any day before NL transition day");

end
AddTest("TestIsDstStartStopOverlap_Autumn");

function TestGetPreviousMazeResetHour_LocalOffset0()
    local offset = 0;
    -- Pass in the actual reset time, expect the same back out:
    local localDate = MakeLocalDate(2024, 1, 1, 10, 0, 0, 1, Monday);
    local previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(localDate, previousResetHour);

    ------ After reset time that day: ------
    -- pass something after 10:00 local time, expect 10:00.

    -- Same minute
    localDate = MakeLocalDate(2024, 1, 1, 10, 0, 30, 1, Monday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 1, 1, 10, 0, 0, 1, Monday), previousResetHour);

    -- same hour
    localDate = MakeLocalDate(2024, 1, 1, 10, 30, 0, 1, Monday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 1, 1, 10, 0, 0, 1, Monday), previousResetHour);

    -- same day
    localDate = MakeLocalDate(2024, 1, 1, 20, 10, 5, 1, Monday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 1, 1, 10, 0, 0, 1, Monday), previousResetHour);

    ------ Before reset time that day: ------

    -- Just before 10:00 local time, expect the previous 10:00. (Tests rolling back the day)
    localDate = MakeLocalDate(2024, 1, 2, 9, 30, 0, 2, Tuesday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 1, 1, 10, 0, 0, 1, Monday), previousResetHour);

    -- Just before 10:00 local time, expect the previous 10:00. (Tests rolling back the month)
    localDate = MakeLocalDate(2024, 2, 1, 9, 30, 0, 32, Thursday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 1, 31, 10, 0, 0, 31, Wednesday), previousResetHour);

    -- Just before 10:00 local time, expect the previous 10:00. (Tests rolling back the year)
    localDate = MakeLocalDate(2024, 1, 1, 9, 30, 0, 1, Monday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2023, 12, 31, 10, 0, 0, 365, Sunday), previousResetHour);

    -- Check that Sunday rolls back to Saturday:
    localDate = MakeLocalDate(2024, 1, 7, 9, 30, 0, 7, Sunday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 1, 6, 10, 0, 0, 6, Saturday), previousResetHour);

    -- Check that day of year rolls back to 366 for a leap year:
    localDate = MakeLocalDate(2025, 1, 1, 9, 30, 0, 1, Wednesday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 12, 31, 10, 0, 0, 366, Tuesday), previousResetHour);

end
AddTest("TestGetPreviousMazeResetHour_LocalOffset0");

function TestGetPreviousMazeResetHour_LocalOffset6()
    local offset = 6;
    -- Pass in the actual reset time, expect the same back out:
    local localDate = MakeLocalDate(2024, 1, 1, 16, 0, 0, 1, Monday);
    local previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(localDate, previousResetHour);

    ------ After reset time that day: ------
    localDate = MakeLocalDate(2024, 1, 1, 20, 10, 5, 1, Monday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 1, 1, 16, 0, 0, 1, Monday), previousResetHour);

    ------ Before reset time that day: ------
    localDate = MakeLocalDate(2024, 1, 2, 9, 30, 45, 2, Tuesday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 1, 1, 16, 0, 0, 1, Monday), previousResetHour);

    -- Check that day of year rolls back to 366 for a leap year:
    localDate = MakeLocalDate(2025, 1, 1, 9, 30, 0, 1, Wednesday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 12, 31, 16, 0, 0, 366, Tuesday), previousResetHour);
end
AddTest("TestGetPreviousMazeResetHour_LocalOffset6");

function TestGetPreviousMazeResetHour_LocalOffsetFractional()
    local offset = 6.25;
    -- Pass in the actual reset time, expect the same back out:
    local localDate = MakeLocalDate(2024, 1, 1, 16, 15, 0, 1, Monday);
    local previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(localDate, previousResetHour);

    -- same day, after reset time:
    localDate = MakeLocalDate(2024, 1, 1, 20, 10, 5, 1, Monday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 1, 1, 16, 15, 0, 1, Monday), previousResetHour);

    -- Check that day of year rolls back to 366 for a leap year:
    localDate = MakeLocalDate(2025, 1, 1, 9, 30, 0, 1, Wednesday);
    previousResetHour = GetPreviousMazeResetHour(localDate, offset);
    AssertDatesEqual(MakeLocalDate(2024, 12, 31, 16, 15, 0, 366, Tuesday), previousResetHour);

end
AddTest("TestGetPreviousMazeResetHour_LocalOffsetFractional");

function TestRunner()
    local testPassedCount = 0;
    local testFailedCount = 0;

    for key,value in pairs(functionsToTest) do
        TestWriteLine("Test Function: " .. key );
        testFailed = false;
        value();

        if (testFailed) then
            testFailedCount = testFailedCount + 1;
        else
            testPassedCount = testPassedCount + 1;
        end
    end

    TestWriteLine("Tests complete. Passed: " .. testPassedCount .. ", Failed: " .. testFailedCount);

end

TestRunner();