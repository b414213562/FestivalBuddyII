
SHOW_DEBUG_OPTIONS = false;

local topMargin = 10;

local debugY = 200;

local questAcceptCompleteFailY = debugY;
local hobnanigansY = questAcceptCompleteFailY + 100;
local fireworksY = hobnanigansY + 240;
local fireworksColumnLeftMargin = 75;
local fireworksColumnWidth = 50;
local fireworksRowTopMargin = 50;
local fireworksRowHeight = 30;

local fatMayorY = fireworksY + 185;

function DrawGenericOptions(options, y)
    -- Ignore Escape key:
    local escapeKeyClosesWindows = Turbine.UI.Lotro.CheckBox();
    escapeKeyClosesWindows:SetParent(options);
    escapeKeyClosesWindows:SetText(GetString(_LANG.OPTIONS.ESCAPE_KEY_CLOSES_WINDOWS));
    escapeKeyClosesWindows:SetSize(400, 20);
    escapeKeyClosesWindows:SetPosition(10, y);
    escapeKeyClosesWindows:SetChecked(SETTINGS.ESCAPE_KEY_CLOSES_WINDOWS);
    escapeKeyClosesWindows.CheckedChanged = function(sender, args)
        SETTINGS.ESCAPE_KEY_CLOSES_WINDOWS = escapeKeyClosesWindows:IsChecked();
    end
    y = y + 30;

    y = DrawMainWindowScaling(options, y);

    return y + 20;
end

function DrawMainWindowScaling(options, y)
    -- Calculate size information:
    local screenWidth = Turbine.UI.Display:GetWidth(); -- e.g. 1920
    local screenHeight = Turbine.UI.Display:GetHeight(); -- e.g. 1080

    -- calculate the maximum the slider should be:
    local maxScaleX = screenWidth / MainWindowWidth; -- e.g. 1920 / 300 = 6.4
    local maxScaleY = screenHeight / MainWindowHeight; -- e.g. 1080 / 520 = 2.077
    local maxScale = (maxScaleY < maxScaleX) and maxScaleY or maxScaleX;

    -- scaling factor of 10 produced a resonable thumb size when scrollbar was 5 to 100 = 95 steps
    -- but much too large for 5 to 21
    -- scaling factor of 50 produced a resonable thumb size when scrollbar was 5 to 21 = 16 steps ( * 5 ~ 80)
    local desiredNumberOfSteps = 100;
    -- 100 = scrollbarMaximum - scrollbarMinimum
    -- 100 = (maxScale * scalingFactor) - scalingFactor / 2
    -- 100 = scalingFactor[maxScale - 1/2]
    -- scalingFactor = 100 / [maxScale - 1/2]
    local scalingFactor = desiredNumberOfSteps / (maxScale - 0.5);
    local scrollbarMinimum = scalingFactor / 2;
    local scrollbarMaximum = maxScale * scalingFactor;

    local mainWindowProportionalWidth = SETTINGS.MAINWIN.WIDTH; -- e.g. 0.026 (2.6%)
    if (mainWindowProportionalWidth == nil) then
        -- This save file doesn't have a Main Window Width, so calculate it up:
        mainWindowProportionalWidth = MainWindowWidth / screenWidth;
        SETTINGS.MAINWIN.WIDTH = mainWindowProportionalWidth;
    end
    local mainWindowActualWidth = mainWindowProportionalWidth * screenWidth; -- e.g. 2.6% * 1920 = ~50 (49.92)

    local mainWindowDefaultWidth = MainWindowWidth; -- e.g. 300
    local mainWindowScaledWidth = mainWindowActualWidth / mainWindowDefaultWidth; -- e.g. 49.92 / 100 = 50%
    -- scollbar is using integer values between 5 and 100 to represent 0.5 to 10.0.
    -- Multiply here:
    local mainScalingScrollbarValue = mainWindowScaledWidth * scalingFactor;

    -- Label for the Main Window scaling scrollbar 
    options.mainScalingScrollbarLabel = Turbine.UI.Label();
    options.mainScalingScrollbarLabel:SetParent(options);
    options.mainScalingScrollbarLabel:SetSize(300, 25);
    options.mainScalingScrollbarLabel:SetText(string.format(GetString(_LANG.OPTIONS.MAIN_WINDOW_SCALING), mainWindowScaledWidth));
    options.mainScalingScrollbarLabel:SetPosition(10, y);
    y = y + 20;

    -- Scrollbar to adjust the Main Window scaling
    options.mainScalingScrollbar = Turbine.UI.Lotro.ScrollBar();
    options.mainScalingScrollbar:SetParent(options);
    options.mainScalingScrollbar:SetOrientation(Turbine.UI.Orientation.Horizontal);
    options.mainScalingScrollbar:SetSize(250, 10);
    options.mainScalingScrollbar:SetPosition(10, y);
    options.mainScalingScrollbar:SetMinimum(scrollbarMinimum);
    options.mainScalingScrollbar:SetMaximum(scrollbarMaximum);
    options.mainScalingScrollbar:SetSmallChange((scalingFactor / 10 > 1) and scalingFactor / 10 or 1);
    options.mainScalingScrollbar:SetLargeChange(scalingFactor / 2);

    options.mainScalingScrollbar:SetValue(mainScalingScrollbarValue);
    options.mainScalingScrollbar.ValueChanged = function(sender, args)
        local currentValue = options.mainScalingScrollbar:GetValue(); -- e.g. 32
        local scaledValue = currentValue / scalingFactor; -- 3.2x

        options.mainScalingScrollbarLabel:SetText(string.format(GetString(_LANG.OPTIONS.MAIN_WINDOW_SCALING), scaledValue));

        local screenWidth = Turbine.UI.Display:GetWidth();
        local actualWidth = scaledValue * MainWindowWidth;
        local proportinalWidth = actualWidth / screenWidth;
        SETTINGS.MAINWIN.WIDTH = proportinalWidth;
        MainWinRedraw();
    end
    y = y + 25;

    AddCallback(Turbine.UI.Display, "SizeChanged", function()
        -- TODO: Recalculate maxScale

    end)

    return y;
end

function DrawQuickGuideOptions(options, y)
    local quickGuideLabel = Turbine.UI.Label();
    quickGuideLabel:SetParent(options);
    quickGuideLabel:SetText(GetString(_LANG.OPTIONS.QUICK_GUIDE));
    quickGuideLabel:SetSize(400, 20);
    quickGuideLabel:SetPosition(0, y);
    y = y + 20;

    local removeCompletedCheckbox = Turbine.UI.Lotro.CheckBox();
    removeCompletedCheckbox:SetParent(options);
    removeCompletedCheckbox:SetText(GetString(_LANG.OPTIONS.QUICK_GUIDE_REMOVE_COMPLETED));
    removeCompletedCheckbox:SetSize(300, 20);
    removeCompletedCheckbox:SetPosition(10, y);
    removeCompletedCheckbox:SetChecked(SETTINGS.QUICK_GUIDE_REMOVE_COMPLETED);
    removeCompletedCheckbox.CheckedChanged = function (sender, args)
        SETTINGS.QUICK_GUIDE_REMOVE_COMPLETED = not SETTINGS.QUICK_GUIDE_REMOVE_COMPLETED;
        wQuickGuideWinParent.treeView:Refresh();
    end
    y = y + 30;

    local delayInSecondsLabel = Turbine.UI.Label();
    delayInSecondsLabel:SetParent(options);
    delayInSecondsLabel:SetText(GetString(_LANG.OPTIONS.QUICK_GUIDE_CLEAR_DELAY));
    delayInSecondsLabel:SetSize(200, 40);
    delayInSecondsLabel:SetPosition(20, y);
    delayInSecondsLabel.CheckedChanged = function (sender, args)
        SETTINGS.QUICK_GUIDE_CLEAR_DELAY = not SETTINGS.QUICK_GUIDE_CLEAR_DELAY;
        wQuickGuideWinParent.treeView:Refresh();
    end

    local delayInSecondsTextBox = Turbine.UI.Lotro.TextBox();
    delayInSecondsTextBox:SetParent(options);
    delayInSecondsTextBox:SetText("" .. SETTINGS.QUICK_GUIDE_CLEAR_DELAY);
    delayInSecondsTextBox:SetSize(100, 30);
    delayInSecondsTextBox:SetPosition(235, y);
    delayInSecondsTextBox.TextChanged = function(sender, args)
        local newNumber = tonumber(delayInSecondsTextBox:GetText());
        if (newNumber and newNumber >= 0) then
            delayInSecondsTextBox:SetText("" .. newNumber);
            SETTINGS.QUICK_GUIDE_CLEAR_DELAY = newNumber;
        else
            delayInSecondsTextBox:SetText("" .. SETTINGS.QUICK_GUIDE_CLEAR_DELAY);
        end
    end
    y = y + 40;


    local questsToIncludeLabel = Turbine.UI.Label();
    questsToIncludeLabel:SetParent(options);
    questsToIncludeLabel:SetText(GetString(_LANG.OPTIONS.QUICK_GUIDE_QUESTS_TO_INCLUED));
    questsToIncludeLabel:SetSize(400, 20);
    questsToIncludeLabel:SetPosition(10, y);
    y = y + 20;

    -- Festival-specific section:

    local quickGuideFestivalLabel = Turbine.UI.Label();
    quickGuideFestivalLabel:SetParent(options);
    quickGuideFestivalLabel:SetText(GetString(_LANG.FESTIVALS[MIDSUMMER]) .. ":");
    quickGuideFestivalLabel:SetSize(400, 20);
    quickGuideFestivalLabel:SetPosition(20, y);
    y = y + 20;

    local questNameToKey = {};
    local questNames = {};
    for k,v in pairs(_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CHAINS[MIDSUMMER]) do
        local name = GetString(_LANG.QUESTS[MIDSUMMER][k]);
        questNameToKey[name] = k;
        table.insert(questNames, name);
    end
    table.sort(questNames);

    -- Make a checkbox for each quest:
    for i=1, #questNames do
        local questName = questNames[i];
        local questKey = questNameToKey[questName];
        local questCheckbox = Turbine.UI.Lotro.CheckBox();
        questCheckbox:SetParent(options);
        questCheckbox:SetText(questName);
        questCheckbox:SetSize(300, 20);
        questCheckbox:SetPosition(30, y);
        questCheckbox:SetChecked(SETTINGS.QUICK_GUIDE_QUESTS_TO_USE[MIDSUMMER][questKey]);
        questCheckbox.CheckedChanged = function (sender, args)
            SETTINGS.QUICK_GUIDE_QUESTS_TO_USE[MIDSUMMER][questKey] = not SETTINGS.QUICK_GUIDE_QUESTS_TO_USE[MIDSUMMER][questKey];
            wQuickGuideWinParent.treeView:Refresh();
        end
        y = y + 20;
    end


    return y + 20;
end

function DrawMapOptions(options, y)
    -- Map options:
    local mapOptionsLabel = Turbine.UI.Label();
    mapOptionsLabel:SetParent(options);
    mapOptionsLabel:SetText(GetString(_LANG.OPTIONS.MAP_OPTIONS));
    mapOptionsLabel:SetSize(200, 20);
    mapOptionsLabel:SetTop(y);
    y = y + 20;

    -- Automatically open the map when accepting a related quest:
    local mapAutoOpenCheckbox = Turbine.UI.Lotro.CheckBox();
    mapAutoOpenCheckbox:SetParent(options);
    mapAutoOpenCheckbox:SetText(GetString(_LANG.OPTIONS.MAP_AUTO_OPEN));
    mapAutoOpenCheckbox:SetWidth(200);
    mapAutoOpenCheckbox:SetPosition(10, y - 15);
    mapAutoOpenCheckbox:SetChecked(SETTINGS.MAZEMAPWIN.AUTO_OPEN_MAP);
    mapAutoOpenCheckbox.CheckedChanged = function (sender, args)
        local isChecked = mapAutoOpenCheckbox:IsChecked();
        SETTINGS.MAZEMAPWIN.AUTO_OPEN_MAP = isChecked;
    end
    y = y + 30;

    -- Map Direction dropdown:

    local mapOrientationLabel = Turbine.UI.Label();
    mapOrientationLabel:SetParent(options);
    mapOrientationLabel:SetText(GetString(_LANG.OPTIONS.MAP_ORIENTATION));
    mapOrientationLabel:SetSize(200, 20);
    mapOrientationLabel:SetPosition(10, y + 3);

    local languageSpecificDirections = _LANG.OPTIONS.MAP_ORIENTATION_DIRECTIONS[CLIENTLANG];
    local ddMapOrientation = DropDown(
        languageSpecificDirections,
        languageSpecificDirections[SETTINGS.MAZEMAPWIN.ORIENTATION]);
    ddMapOrientation:SetParent(options);
    ddMapOrientation:SetPosition(150, y);
    ddMapOrientation:SetWidth(100);
    y = y + 30;

    ddMapOrientation.ItemChanged = function (sender, args)
        SETTINGS.MAZEMAPWIN.ORIENTATION = args.Index;

        MazeMapSetRotationFromOrientation();
    end

    -- Change current Harvestmath Maze:
    local labelWidth = 225;
    local harvestmathMazeIdlabel = Turbine.UI.Label();
    harvestmathMazeIdlabel:SetParent(options);
    harvestmathMazeIdlabel:SetText(GetString(_LANG.OPTIONS.HARVESTMATH_MAZE_ID_LABEL));
    harvestmathMazeIdlabel:SetSize(labelWidth, 20);
    harvestmathMazeIdlabel:SetPosition(10, y + 3);

    local harvestmathMazeIdButton = Turbine.UI.Lotro.Button();
    harvestmathMazeIdButton:SetParent(options);
    harvestmathMazeIdButton:SetText(GetString(_LANG.OPTIONS.HARVESTMATH_MAZE_ID_BUTTON));
    harvestmathMazeIdButton:SetSize(65, 20);
    harvestmathMazeIdButton:SetPosition(labelWidth + 20, y);
    harvestmathMazeIdButton.Click = function(sender, args)
        HarvestmathMazeIdSetVisible(true);
    end

    y = y + 30;

    ---
    return y + 20;
end

function DrawQuestAcceptCompleteFail(options)
    local y = questAcceptCompleteFailY;

    -- Quest testing:
    local questTestingLabel = Turbine.UI.Label();
    questTestingLabel:SetParent(options);
    questTestingLabel:SetText("Quest testing:");
    questTestingLabel:SetSize(200, 20);
    questTestingLabel:SetTop(y);
    y = y + 20;

    local questName = Turbine.UI.Lotro.TextBox();
    questName:SetParent(options);
    questName:SetSize(300, 30);
    questName:SetMultiline(false);
    questName:SetPosition(10, y);
    questName:SetText(SETTINGS.DEBUG_QUEST_NAME);
    questName.TextChanged = function(sender, args)
        SETTINGS.DEBUG_QUEST_NAME = questName:GetText();
    end
    y = y + 35;

    local buttonAccept = Turbine.UI.Lotro.Button();
    buttonAccept:SetParent(options);
    buttonAccept:SetWidth(75);
    buttonAccept:SetPosition(10, y);
    buttonAccept:SetText("Accept");
    buttonAccept.Click = function(sender, args)
        local term = GetString(_LANG.QUESTS.NEWQUEST);
        FilterQuest(term .. " " .. questName:GetText());
    end

    local buttonComplete = Turbine.UI.Lotro.Button();
    buttonComplete:SetParent(options);
    buttonComplete:SetWidth(75);
    buttonComplete:SetPosition(10 + 75, y);
    buttonComplete:SetText("Complete");
    buttonComplete.Click = function(sender, args)
        local term = GetString(_LANG.QUESTS.COMPLETEDQUEST);
        FilterQuest(term .. "\n" .. questName:GetText() .. "\n");
    end

    local buttonFail = Turbine.UI.Lotro.Button();
    buttonFail:SetParent(options);
    buttonFail:SetWidth(75);
    buttonFail:SetPosition(10 + 75*2, y);
    buttonFail:SetText("Fail");
    buttonFail.Click = function(sender, args)
        local term = GetString(_LANG.QUESTS.FAILEDQUEST);
        FilterQuest(term .. " " .. questName:GetText());
    end

    local buttonObjective = Turbine.UI.Lotro.Button();
    buttonObjective:SetParent(options);
    buttonObjective:SetWidth(75);
    buttonObjective:SetPosition(10 + 75*3, y);
    buttonObjective:SetText("Objective");
    buttonObjective.Click = function(sender, args)
        FilterQuest(questName:GetText());
    end

end

-- row and column start at 1
function DrawFireworksButton(parent, chatText, column, row)
    local button = Turbine.UI.Lotro.Button();
    button:SetParent(parent)
    button:SetText("[ ]");
    button.Click = function(sender, args) HandleFireworksAnnouncerSay(chatText); end
    button:SetWidth(30);
    button:SetPosition(fireworksColumnLeftMargin + (column -1) * fireworksColumnWidth, fireworksY + fireworksRowTopMargin + (row -1) * fireworksRowHeight);
end

function DrawFireworksLabel(parent, text, column, row)
    local label = Turbine.UI.Label();
    label:SetParent(parent);
    label:SetText(text);
    label:SetPosition(fireworksColumnLeftMargin + (column - 1) * fireworksColumnWidth, fireworksY + fireworksRowTopMargin + (row - 1) * fireworksRowHeight);
    label:SetSize(45, 20);
    label:SetBackColor(Turbine.UI.Color.DarkOliveGreen);
    label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
end

function DrawFireworksDebug(options)
    local blueYesText = "Fireworks Announcer says, ''How about a bright blue one? Launch it now!''\n";
    local greenYesText = "Fireworks Announcer says, ''How about a bright green one? Launch it now!''\n";
    local redYesText = "Fireworks Announcer says, ''How about a bright red one? Launch it now!''\n";
    local yellowYesText = "Fireworks Announcer says, ''How about a bright yellow one? Launch it now!''\n";

    local blueNoText = "Fireworks Announcer says, ''How about something besides blue? Launch it now!''\n";
    local greenNoText = "Fireworks Announcer says, ''How about something besides green? Launch it now!''\n";
    local redNoText = "Fireworks Announcer says, ''How about something besides red? Launch it now!''\n";
    local yellowNoText = "Fireworks Announcer says, ''How about something besides yellow? Launch it now!''\n";

    -- Fireworks in Bree:
    local fireworksHeaderLabel = Turbine.UI.Label();
    fireworksHeaderLabel:SetParent(options);
    fireworksHeaderLabel:SetText("Fireworks in Bree:");
    fireworksHeaderLabel:SetSize(200, 20);
    fireworksHeaderLabel:SetTop(fireworksY);

    DrawFireworksLabel(options, "Yes", 1, 0);
    DrawFireworksLabel(options, "No", 2, 0);

    DrawFireworksLabel(options, "Red", 0, 1);
    DrawFireworksLabel(options, "Green", 0, 2);
    DrawFireworksLabel(options, "Blue", 0, 3);
    DrawFireworksLabel(options, "Yellow", 0, 4);

    DrawFireworksButton(options, redYesText, 1, 1);
    DrawFireworksButton(options, redNoText, 2, 1);
    DrawFireworksButton(options, greenYesText, 1, 2);
    DrawFireworksButton(options, greenNoText, 2, 2);
    DrawFireworksButton(options, blueYesText, 1, 3);
    DrawFireworksButton(options, blueNoText, 2, 3);
    DrawFireworksButton(options, yellowYesText, 1, 4);
    DrawFireworksButton(options, yellowNoText, 2, 4);
end

function DrawHobnanigansDebug(options)
    -- Hobnanigans:
    local hobnanigansHeaderLabel = Turbine.UI.Label();
    hobnanigansHeaderLabel:SetParent(options);
    hobnanigansHeaderLabel:SetText("Hobnanigans:");
    hobnanigansHeaderLabel:SetSize(200, 20);
    hobnanigansHeaderLabel:SetTop(hobnanigansY);
    local y = hobnanigansY + 20;

    -- Header Row
    local ffLabel = Turbine.UI.Label();
    ffLabel:SetParent(options);
    ffLabel:SetBackColor(Turbine.UI.Color.Green);
    ffLabel:SetSize(60, 20);
    ffLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    ffLabel:SetText("FF");
    ffLabel:SetPosition(150, y);

    local sbLabel = Turbine.UI.Label();
    sbLabel:SetParent(options);
    sbLabel:SetBackColor(Turbine.UI.Color.Green);
    sbLabel:SetSize(60, 20);
    sbLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    sbLabel:SetText("SB");
    sbLabel:SetPosition(270, y);
    y = y + 30;

    -- Start/Stop quests on Field 2
    local field2Label = Turbine.UI.Label();
    field2Label:SetParent(options);
    field2Label:SetText("Field 2 Quest: ");
    field2Label:SetSize(120, 20);
    field2Label:SetPosition(10, y);
    field2Label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    local startField2QuestFF = Turbine.UI.Lotro.Button();
    startField2QuestFF:SetParent(options)
    startField2QuestFF:SetText("Start");
    startField2QuestFF:SetWidth(50);
    startField2QuestFF:SetPosition(120, y);
    startField2QuestFF.Click = function(sender, args)
        FilterQuest("New Quest: A Game of Hobnanigans -- Flying Feathers - Field 2");
    end

    local stopField2QuestFF = Turbine.UI.Lotro.Button();
    stopField2QuestFF:SetParent(options)
    stopField2QuestFF:SetText("Stop");
    stopField2QuestFF:SetWidth(50);
    stopField2QuestFF:SetPosition(180, y);
    stopField2QuestFF.Click = function(sender, args)
        FilterQuest("Failed: A Game of Hobnanigans -- Flying Feathers - Field 2");
    end

    local startField2QuestSB = Turbine.UI.Lotro.Button();
    startField2QuestSB:SetParent(options)
    startField2QuestSB:SetText("Start");
    startField2QuestSB:SetWidth(50);
    startField2QuestSB:SetPosition(240, y);
    startField2QuestSB.Click = function(sender, args)
        FilterQuest("New Quest: A Game of Hobnanigans -- Steel Beaks - Field 2");
    end

    local stopField2QuestSB = Turbine.UI.Lotro.Button();
    stopField2QuestSB:SetParent(options)
    stopField2QuestSB:SetText("Stop");
    stopField2QuestSB:SetWidth(50);
    stopField2QuestSB:SetPosition(300, y);
    stopField2QuestSB.Click = function(sender, args)
        FilterQuest("Failed: A Game of Hobnanigans -- Steel Beaks - Field 2");
    end
    y = y + 30;

    -- Start/Stop quests on Field 2
    local field3Label = Turbine.UI.Label();
    field3Label:SetParent(options);
    field3Label:SetText("Field 3 Quest: ");
    field3Label:SetSize(120, 20);
    field3Label:SetPosition(10, y);
    field3Label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    local startField3QuestFF = Turbine.UI.Lotro.Button();
    startField3QuestFF:SetParent(options)
    startField3QuestFF:SetText("Start");
    startField3QuestFF.Click = function(sender, args)
        FilterQuest("New Quest: A Game of Hobnanigans -- Flying Feathers - Field 3");
    end
    startField3QuestFF:SetWidth(50);
    startField3QuestFF:SetPosition(120, y);

    local stopField3QuestFF = Turbine.UI.Lotro.Button();
    stopField3QuestFF:SetParent(options)
    stopField3QuestFF:SetText("Stop");
    stopField3QuestFF.Click = function(sender, args)
        FilterQuest("Failed: A Game of Hobnanigans -- Flying Feathers - Field 3");
    end
    stopField3QuestFF:SetWidth(50);
    stopField3QuestFF:SetPosition(180, y);

    local startField3QuestSB = Turbine.UI.Lotro.Button();
    startField3QuestSB:SetParent(options)
    startField3QuestSB:SetText("Start");
    startField3QuestSB.Click = function(sender, args)
        FilterQuest("New Quest: A Game of Hobnanigans -- Steel Beaks - Field 3");
    end
    startField3QuestSB:SetWidth(50);
    startField3QuestSB:SetPosition(240, y);

    local stopField3QuestSB = Turbine.UI.Lotro.Button();
    stopField3QuestSB:SetParent(options)
    stopField3QuestSB:SetText("Stop");
    stopField3QuestSB.Click = function(sender, args)
        FilterQuest("Failed: A Game of Hobnanigans -- Steel Beaks - Field 3");
    end
    stopField3QuestSB:SetWidth(50);
    stopField3QuestSB:SetPosition(300, y);
    y = y + 30;

    -- Begin/End game on field 2:
    local game2Label = Turbine.UI.Label();
    game2Label:SetParent(options);
    game2Label:SetText("Game 2:");
    game2Label:SetSize(120, 20);
    game2Label:SetPosition(10, y);
    game2Label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    local startGame2 = Turbine.UI.Lotro.Button();
    startGame2:SetParent(options)
    startGame2:SetText("Start");
    startGame2.Click = function(sender, args)
        FilterSay("Field 2 Referee says, ''The Game Hen has landed on the field. Begin play!''");
    end
    startGame2:SetWidth(50);
    startGame2:SetPosition(60, y);

    local stopGame2FF = Turbine.UI.Lotro.Button();
    stopGame2FF:SetParent(options)
    stopGame2FF:SetText("Stop");
    stopGame2FF.Click = function(sender, args)
        FilterSay("Field 2 Referee says, ''Flying Feathers Win!!!''"); end
    stopGame2FF:SetWidth(50);
    stopGame2FF:SetPosition(180, y);

    local stopGame2SB = Turbine.UI.Lotro.Button();
    stopGame2SB:SetParent(options)
    stopGame2SB:SetText("Stop");
    stopGame2SB.Click = function(sender, args)
        FilterSay("Field 2 Referee says, ''Steel Beaks Win!!!''"); end
    stopGame2SB:SetWidth(50);
    stopGame2SB:SetPosition(300, y);
    y = y + 30;

    -- Begin/End game on field 2:
    local game3Label = Turbine.UI.Label();
    game3Label:SetParent(options);
    game3Label:SetText("Game 3:");
    game3Label:SetSize(120, 20);
    game3Label:SetPosition(10, y);
    game3Label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    local startGame3 = Turbine.UI.Lotro.Button();
    startGame3:SetParent(options)
    startGame3:SetText("Start");
    startGame3.Click = function(sender, args)
        FilterSay("Field 3 Referee says, ''The Game Hen has landed on the field. Begin play!''");
    end
    startGame3:SetWidth(50);
    startGame3:SetPosition(60, y);

    local stopGame3FF = Turbine.UI.Lotro.Button();
    stopGame3FF:SetParent(options)
    stopGame3FF:SetText("Stop");
    stopGame3FF.Click = function(sender, args)
        FilterSay("Field 3 Referee says, ''Flying Feathers Win!!!''");
    end
    stopGame3FF:SetWidth(50);
    stopGame3FF:SetPosition(180, y);

    local stopGame3SB = Turbine.UI.Lotro.Button();
    stopGame3SB:SetParent(options)
    stopGame3SB:SetText("Stop");
    stopGame3SB.Click = function(sender, args)
        FilterSay("Field 3 Referee says, ''Steel Beaks Win!!!''");
    end
    stopGame3SB:SetWidth(50);
    stopGame3SB:SetPosition(300, y);
    y = y + 30;

    -- Score on field 2/3:
    local game2Score = Turbine.UI.Label();
    game2Score:SetParent(options);
    game2Score:SetText("Score:");
    game2Score:SetSize(120, 20);
    game2Score:SetPosition(10, y);
    game2Score:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    local game2ScoreFF = Turbine.UI.Lotro.Button();
    game2ScoreFF:SetParent(options)
    game2ScoreFF:SetText("FF2");
    game2ScoreFF.Click = function(sender, args)
        FilterSay("Field 2 Referee says, ''Flying Feathers score!!!''");
    end
    game2ScoreFF:SetWidth(50);
    game2ScoreFF:SetPosition(120, y);

    local game3ScoreFF = Turbine.UI.Lotro.Button();
    game3ScoreFF:SetParent(options)
    game3ScoreFF:SetText("FF3");
    game3ScoreFF.Click = function(sender, args)
        FilterSay("Field 3 Referee says, ''Flying Feathers score!!!''");
    end
    game3ScoreFF:SetWidth(50);
    game3ScoreFF:SetPosition(180, y);

    local game2ScoreSB = Turbine.UI.Lotro.Button();
    game2ScoreSB:SetParent(options)
    game2ScoreSB:SetText("SB2");
    game2ScoreSB.Click = function(sender, args)
        FilterSay("Field 2 Referee says, ''Steel Beaks score!!!''");
    end
    game2ScoreSB:SetWidth(50);
    game2ScoreSB:SetPosition(240, y);

    local game3ScoreSB = Turbine.UI.Lotro.Button();
    game3ScoreSB:SetParent(options)
    game3ScoreSB:SetText("SB3");
    game3ScoreSB.Click = function(sender, args)
        FilterSay("Field 3 Referee says, ''Steel Beaks score!!!''");
    end
    game3ScoreSB:SetWidth(50);
    game3ScoreSB:SetPosition(300, y);
    y = y + 30;

    -- Move time to specific values:
    local gameAdvanceTime = Turbine.UI.Label();
    gameAdvanceTime:SetParent(options);
    gameAdvanceTime:SetText("Advance Time:");
    gameAdvanceTime:SetSize(150, 20);
    gameAdvanceTime:SetPosition(10, y);
    gameAdvanceTime:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    local gameTime10minutes = Turbine.UI.Lotro.Button();
    gameTime10minutes:SetParent(options)
    gameTime10minutes:SetText("10 m");
    gameTime10minutes.Click = function(sender, args)
        TimerSetTimeRemaining(hobnanigansTimer, 10 * 60);
    end
    gameTime10minutes:SetWidth(50);
    gameTime10minutes:SetPosition(120, y);

    local gameTime6minutes = Turbine.UI.Lotro.Button();
    gameTime6minutes:SetParent(options)
    gameTime6minutes:SetText("6 m");
    gameTime6minutes.Click = function(sender, args)
        TimerSetTimeRemaining(hobnanigansTimer, 6 * 60 + 2);
    end
    gameTime6minutes:SetWidth(50);
    gameTime6minutes:SetPosition(180, y);

    local gameTime2minutes = Turbine.UI.Lotro.Button();
    gameTime2minutes:SetParent(options)
    gameTime2minutes:SetText("2 m");
    gameTime2minutes.Click = function(sender, args)
        TimerSetTimeRemaining(hobnanigansTimer, 2 * 60 + 2);
    end
    gameTime2minutes:SetWidth(50);
    gameTime2minutes:SetPosition(240, y);

    local gameTime0minutes = Turbine.UI.Lotro.Button();
    gameTime0minutes:SetParent(options)
    gameTime0minutes:SetText("10 s");
    gameTime0minutes.Click = function(sender, args)
        TimerSetTimeRemaining(hobnanigansTimer, 10);
    end
    gameTime0minutes:SetWidth(50);
    gameTime0minutes:SetPosition(300, y);
    y = y + 30;

end

function CreateFarmersFaireFatMayorButton(options, i, y, text, callback)
    local itemButton = Turbine.UI.Lotro.Button();
    itemButton:SetParent(options);
    itemButton:SetPosition(10 + i * 75, y);
    itemButton:SetWidth(65);
    itemButton:SetText(text);
    if (callback ~= nil) then itemButton.Click = callback;
    else
        itemButton.Click = function(sender, args)
            HandleFarmersFaireFatMayorItemClick(text);
        end
    end
    return itemButton;
end

function DrawFarmersFaireFatMayorDebug(options)
    local y = fatMayorY;

    local fatMayorDebugLabel = Turbine.UI.Label();
    fatMayorDebugLabel:SetParent(options);
    fatMayorDebugLabel:SetPosition(0, y);
    fatMayorDebugLabel:SetWidth(200);
    fatMayorDebugLabel:SetText("Farmers Faire - Fat Mayor:")
    y = y + 20;

    CreateFarmersFaireFatMayorButton(options, 0, y, "Butter");
    CreateFarmersFaireFatMayorButton(options, 1, y, "Milk");
    CreateFarmersFaireFatMayorButton(options, 2, y, "Salt");
    CreateFarmersFaireFatMayorButton(options, 3, y, "Water");
    CreateFarmersFaireFatMayorButton(options, 4, y, "Wine");
    y = y + 30;

    CreateFarmersFaireFatMayorButton(options, 1.5, y, "Success", function() HandleFarmersFaireFatMayorResultClick("Success") end);
    CreateFarmersFaireFatMayorButton(options, 2.5, y, "Fail", function() HandleFarmersFaireFatMayorResultClick("Success") end);
    y = y + 30

    return y;
end

function HandleFarmersFaireFatMayorItemClick(item)
    local mayorSayBegin = "<Select:IID:0x03400000702501C3>Will Whitfoot<\\Select> says, ''";
    local mayorSayEnd = "''";

    local itemSay = {
        ["Butter"] = "It just needs a dab of something....";
        ["Milk"] = "Ack! Ss... spuh... spicy! Save me!";
        ["Salt"] = "It's missing a little something...";
        ["Water"] = "So... thirsty....";
        ["Wine"] = "I must cleanse my palate.";
    };

    local say = mayorSayBegin .. itemSay[item] .. mayorSayEnd;
    FilterSay(say);
end

function HandleFarmersFaireFatMayorResultClick(result)
    if (result == "Success") then
        FilterQuest("You have relieved the mayor (1/6)");
    elseif (result == "Fail") then
        FilterQuest("You did not bring the mayor what he asked for (2/3)");
    end
end

function DrawOptionsWin()
    -- UI hierarchy:
    -- options
    --      non-debug options
    --      debug options

    local options = Turbine.UI.Control();
    options:SetWidth(500);
    plugin.GetOptionsPanel = function(self) return options; end

    local nonDebugOptions = Turbine.UI.Control();
    nonDebugOptions:SetParent(options);

    local y = topMargin;
    y = DrawGenericOptions(nonDebugOptions, y);
    y = DrawQuickGuideOptions(nonDebugOptions, y);
    y = DrawMapOptions(nonDebugOptions, y);
    nonDebugOptions:SetSize(350, y);

    if (not SHOW_DEBUG_OPTIONS) then
        options:SetHeight(nonDebugOptions:GetHeight());
        return;
    end

    -- Calculate where all the debug sections should be:
    questAcceptCompleteFailY = 0;
    hobnanigansY = questAcceptCompleteFailY + 100;
    fireworksY = hobnanigansY + 240;
    fireworksColumnLeftMargin = 75;
    fireworksColumnWidth = 50;
    fireworksRowTopMargin = 50;
    fireworksRowHeight = 30;
    fatMayorY = fireworksY + 185;

    local debugOptions = Turbine.UI.Control();
    debugOptions:SetTop(y);
    debugOptions:SetParent(options);
    debugOptions:SetWidth(options:GetWidth());
    debugOptions:SetHeight(options:GetHeight());
    debugOptions:SetBackColor(Turbine.UI.Color.DarkBlue);

    -- Draw the debug sections
    DrawQuestAcceptCompleteFail(debugOptions);
    DrawHobnanigansDebug(debugOptions);
    DrawFireworksDebug(debugOptions);
    y = DrawFarmersFaireFatMayorDebug(debugOptions);

    debugOptions:SetHeight(y);
    options:SetHeight(nonDebugOptions:GetHeight() + debugOptions:GetHeight());
end


