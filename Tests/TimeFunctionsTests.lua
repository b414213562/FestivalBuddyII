if (not SHOW_DEBUG_OPTIONS) then return; end

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
end

function AssertIsFalse(a, message)
    if (not a) then return; end

    testFailed = true;
    TestFailWriteLine("Assert failed, expected false but got true: " .. message);
end

function MakeLocalDate(year, month, day, hour, minute, dayOfYear)
    local localDate = {
        ["Year"] = year;
        ["Month"] = month;
        ["Day"] = day;
        ["Hour"] = hour;
        ["Minute"] = minute;
        ["DayOfYear"] = dayOfYear;
    };
    return localDate;
end


-- Begin by testing the DST and Time Zone functionality
function TestIsDstStartStopOverlap_Spring()
    local result = false;
    local localDate = MakeLocalDate(2024, 1, 1, 1, 1, 1);

    -- any day before US transition day:
    localDate = MakeLocalDate(2024, 3, 8, 1, 59, 68);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "any day before US transition day");

    -- Four cases for US transition:
    -- before 1 am same day
    -- after 2 am, same day, IsDst = false
    localDate = MakeLocalDate(2024, 3, 10, 1, 59, 70);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "before 1 am same day (erroneous)");

    localDate = MakeLocalDate(2024, 3, 10, 3, 15, 70);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "after 2 am, same day, IsDst = false");

    -- any day in between the transition days:
    localDate = MakeLocalDate(2024, 3, 12, 3, 15, 72);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "any day in between the transition days");

    -------------------------------

    -- Four cases for NL transition:
    -- before 2 am same day
    -- between 2 am and 3 am, IsDST = true (1st repetion)
    -- between 2 am and 3 am, IsDST = false (2nd repetion)
    -- after 3 am, same day, IsDst = false
    localDate = MakeLocalDate(2024, 3, 31, 12, 59, 91);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "before 2 am same day (erroneous)");

    localDate = MakeLocalDate(2024, 3, 31, 2, 59, 91);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "after 3 am, same day, IsDst = false");

    -- any day after NL transition day:
    localDate = MakeLocalDate(2024, 4, 1, 1, 59, 92);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "any day after NL transition day");

end
AddTest("TestIsDstStartStopOverlap_Spring");

function TestIsDstStartStopOverlap_Autumn()
    local result = false;
    local localDate = MakeLocalDate(2024, 1, 1, 1, 1, 1);

    -- any day before NL transition day:
    localDate = MakeLocalDate(2024, 10, 25, 1, 59, 299);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "any day before NL transition day");

    -- Four cases for NL transition:
    -- before 2 am same day
    -- between 2 am and 3 am, IsDST = true (1st repetion)
    -- between 2 am and 3 am, IsDST = false (2nd repetion)
    -- after 3 am, same day, IsDst = false
    localDate = MakeLocalDate(2024, 10, 27, 1, 59, 301);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "before 2 am same day (erroneous)");

    localDate = MakeLocalDate(2024, 10, 27, 2, 15, 301);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "between 2 am and 3 am, IsDST = true (1st repetion)  (erroneous)");

    localDate = MakeLocalDate(2024, 10, 27, 2, 15, 301);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "between 2 am and 3 am, IsDST = false (2nd repetion)");

    localDate = MakeLocalDate(2024, 10, 27, 3, 15, 301);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "after 3 am, same day, IsDst = false");

    -- any day in between the transition days:
    localDate = MakeLocalDate(2024, 10, 28, 3, 15, 302);
    result = IsDstStartStopOverlap(localDate);
    AssertIsTrue(result, "any day in between the transition days");

    -------------------------------

    -- Four cases for US transition:
    -- before 1 am same day
    -- between 1 am and 2 am, IsDST = true (1st repetion)
    -- between 1 am and 2 am, IsDST = false (2nd repetion)
    -- after 2 am, same day, IsDst = false
    localDate = MakeLocalDate(2024, 11, 3, 12, 59, 308);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "before 1 am same day (erroneous)");

    localDate = MakeLocalDate(2024, 11, 3, 1, 59, 308);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "between 1 am and 2 am, IsDST = true (1st repetion) erroneous");

    localDate = MakeLocalDate(2024, 11, 3, 1, 59, 308);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "between 1 am and 2 am, IsDST = false (2nd repetion)");

    localDate = MakeLocalDate(2024, 11, 3, 2, 59, 308);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "after 2 am, same day, IsDst = false");

    -- any day after US transition day:
    localDate = MakeLocalDate(2024, 11, 5, 1, 59, 310);
    result = IsDstStartStopOverlap(localDate);
    AssertIsFalse(result, "any day before NL transition day");

end
AddTest("TestIsDstStartStopOverlap_Autumn");

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