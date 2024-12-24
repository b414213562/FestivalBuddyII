
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
    local indent = 10;
    local controlWidth = options:GetWidth() - indent * 2;

    -- Ignore Escape key:
    local escapeKeyClosesWindows = Turbine.UI.Lotro.CheckBox();
    escapeKeyClosesWindows:SetParent(options);
    escapeKeyClosesWindows:SetText(GetString(_LANG.OPTIONS.ESCAPE_KEY_CLOSES_WINDOWS));
    escapeKeyClosesWindows:SetSize(controlWidth, 20);
    escapeKeyClosesWindows:SetPosition(indent, y);
    escapeKeyClosesWindows:SetChecked(SETTINGS.ESCAPE_KEY_CLOSES_WINDOWS);
    escapeKeyClosesWindows.CheckedChanged = function(sender, args)
        SETTINGS.ESCAPE_KEY_CLOSES_WINDOWS = escapeKeyClosesWindows:IsChecked();
    end
    y = y + 30;

    y = DrawMainWindowScaling(options, y);

    local timeOffsetSection = TimeOffsetControl();
    timeOffsetSection:SetParent(options);
    timeOffsetSection:SetPosition(indent, y);
    timeOffsetSection:SetSize(controlWidth, 60);
    y = y + 60;

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

function CreateColorRow(colorSetting)
    local colorRow = Turbine.UI.Control();
    colorRow:SetSize(350, 30);

    local quickGuideLocationColorCheckbox = Turbine.UI.Lotro.CheckBox();
    quickGuideLocationColorCheckbox:SetParent(colorRow);
    quickGuideLocationColorCheckbox:SetText(GetString(_LANG.OPTIONS.QUICK_GUIDE_COLOR[colorSetting]));
    quickGuideLocationColorCheckbox:SetSize(120, 30);
    quickGuideLocationColorCheckbox:SetPosition(20, 0);
    quickGuideLocationColorCheckbox:SetChecked(SETTINGS_ACCOUNT.QUICK_GUIDE.COLORS[colorSetting].USE);
    quickGuideLocationColorCheckbox.CheckedChanged = function(sender, args)
        SETTINGS_ACCOUNT.QUICK_GUIDE.COLORS[colorSetting].USE = not SETTINGS_ACCOUNT.QUICK_GUIDE.COLORS[colorSetting].USE;
        QuickGuideWinLoadFestival();
    end

    local setting = SETTINGS_ACCOUNT.QUICK_GUIDE.COLORS[colorSetting];
    local quickGuideLocationColor = Turbine.UI.Control();
    quickGuideLocationColor:SetParent(colorRow);
    quickGuideLocationColor:SetBackColor(Turbine.UI.Color(setting.R / 255, setting.G / 255, setting.B / 255));
    quickGuideLocationColor:SetSize(25, 25);
    quickGuideLocationColor:SetPosition(140, 0);

    local changeButton = Turbine.UI.Lotro.Button();
    changeButton:SetParent(colorRow);
    changeButton:SetText(GetString(_LANG.OPTIONS.QUICK_GUIDE_COLOR_CHANGE));
    changeButton:SetWidth(75);
    changeButton:SetPosition(170, 3);
    changeButton.Click = function(sender, args)
        ColorPickerWindow.SetColor(setting.R, setting.G, setting.B, function(red, green, blue)
            setting.R = red;
            setting.G = green;
            setting.B = blue;
            quickGuideLocationColor:SetBackColor(Turbine.UI.Color(setting.R / 255, setting.G / 255, setting.B / 255));
            QuickGuideWinLoadFestival();
        end);
    end

    local defaultButton = Turbine.UI.Lotro.Button();
    defaultButton:SetParent(colorRow);
    defaultButton:SetText(GetString(_LANG.OPTIONS.QUICK_GUIDE_COLOR_DEFAULT));
    defaultButton:SetWidth(75);
    defaultButton:SetPosition(250, 3);
    defaultButton.Click = function(sender, args)
        local defaultSetting = DefaultHighlightColors[colorSetting];
        setting.R = defaultSetting.R;
        setting.G = defaultSetting.G;
        setting.B = defaultSetting.B;
        quickGuideLocationColor:SetBackColor(Turbine.UI.Color(setting.R / 255, setting.G / 255, setting.B / 255));
        QuickGuideWinLoadFestival();
    end

    return colorRow;
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

    -- Colors section:
    local quickGuideColors = Turbine.UI.Label();
    quickGuideColors:SetParent(options);
    quickGuideColors:SetText(GetString(_LANG.OPTIONS.QUICK_GUIDE_COLORS));
    quickGuideColors:SetSize(200, 30);
    quickGuideColors:SetPosition(10, y);
    y = y + 20;

    local quickGuideUseColors = Turbine.UI.Lotro.CheckBox();
    quickGuideUseColors:SetParent(options);
    quickGuideUseColors:SetText(GetString(_LANG.OPTIONS.QUICK_GUIDE_USE_COLORS));
    quickGuideUseColors:SetSize(150, 20);
    quickGuideUseColors:SetPosition(20, y);
    quickGuideUseColors:SetChecked(SETTINGS_ACCOUNT.QUICK_GUIDE.USE_COLORS);
    quickGuideUseColors.CheckedChanged = function (sender, args)
        SETTINGS_ACCOUNT.QUICK_GUIDE.USE_COLORS = not SETTINGS_ACCOUNT.QUICK_GUIDE.USE_COLORS;
        QuickGuideWinLoadFestival();
    end
    y = y + 30;

    local colorRow = CreateColorRow("LOCATION");
    colorRow:SetParent(options);
    colorRow:SetPosition(0, y);
    y = y + 30;

    colorRow = CreateColorRow("QUEST");
    colorRow:SetParent(options);
    colorRow:SetPosition(0, y);
    y = y + 30;

    colorRow = CreateColorRow("NPC");
    colorRow:SetParent(options);
    colorRow:SetPosition(0, y);
    y = y + 30;

    colorRow = CreateColorRow("QUEST_ITEM");
    colorRow:SetParent(options);
    colorRow:SetPosition(0, y);
    y = y + 30;

    y = y + 40;
    -- end Colors section

    local questsToIncludeLabel = Turbine.UI.Label();
    questsToIncludeLabel:SetParent(options);
    questsToIncludeLabel:SetText(GetString(_LANG.OPTIONS.QUICK_GUIDE_QUESTS_TO_INCLUED));
    questsToIncludeLabel:SetSize(400, 20);
    questsToIncludeLabel:SetPosition(10, y);
    y = y + 20;

    -- Festival-specific section:

    -- iterate through festivals table so guides appear in same order here:
    for k,festival in ipairs(FESTIVALS_UI_ORDER) do
        if (QUICK_GUIDES[festival]) then

            local quickGuideFestivalLabel = Turbine.UI.Label();
            quickGuideFestivalLabel:SetParent(options);
            quickGuideFestivalLabel:SetText(GetString(_LANG.FESTIVALS[festival]) .. ":");
            quickGuideFestivalLabel:SetSize(400, 20);
            quickGuideFestivalLabel:SetPosition(20, y);
            y = y + 20;

            -- We want to present the quest chains alphabetically.
            -- Put them into a table with numerical indicies (questNames) and sort that table.
            -- Then iterate through that table, looking up the keys in questNameToKey
            local questNameToKey = {};
            local questNames = {};
            for k,v in pairs(_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CHAINS[festival]) do
                local name = GetString(_LANG.QUESTS[festival][k]);
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
                questCheckbox:SetSize(325, 20);
                questCheckbox:SetPosition(30, y);
                questCheckbox:SetChecked(SETTINGS.QUICK_GUIDE_QUESTS_TO_USE[festival][questKey]);
                questCheckbox.CheckedChanged = function (sender, args)
                    SETTINGS.QUICK_GUIDE_QUESTS_TO_USE[festival][questKey] = not SETTINGS.QUICK_GUIDE_QUESTS_TO_USE[festival][questKey];
                    wQuickGuideWinParent.treeView:Refresh();
                end
                y = y + 20;
            end
            y = y + 20;
        end
    end

    return y;
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

function DrawHobnanigansDebug_StartStopQuests(options, y, fieldNumber, debugText)
    local field2Label = Turbine.UI.Label();
    field2Label:SetParent(options);
    field2Label:SetText("Field " .. fieldNumber .. " Quest: ");
    field2Label:SetSize(120, 20);
    field2Label:SetPosition(10, y);
    field2Label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    local startField2QuestFF = Turbine.UI.Lotro.Button();
    startField2QuestFF:SetParent(options)
    startField2QuestFF:SetText("Start");
    startField2QuestFF:SetWidth(50);
    startField2QuestFF:SetPosition(120, y);
    startField2QuestFF.Click = function(sender, args)
        FilterQuest(debugText["START_FIELD_" .. fieldNumber].FF[CLIENTLANG]);
    end

    local stopField2QuestFF = Turbine.UI.Lotro.Button();
    stopField2QuestFF:SetParent(options)
    stopField2QuestFF:SetText("Stop");
    stopField2QuestFF:SetWidth(50);
    stopField2QuestFF:SetPosition(180, y);
    stopField2QuestFF.Click = function(sender, args)
        FilterQuest(debugText["STOP_FIELD_" .. fieldNumber].FF[CLIENTLANG]);
    end

    local startField2QuestSB = Turbine.UI.Lotro.Button();
    startField2QuestSB:SetParent(options)
    startField2QuestSB:SetText("Start");
    startField2QuestSB:SetWidth(50);
    startField2QuestSB:SetPosition(240, y);
    startField2QuestSB.Click = function(sender, args)
        FilterQuest(debugText["START_FIELD_" .. fieldNumber].SB[CLIENTLANG]);
    end

    local stopField2QuestSB = Turbine.UI.Lotro.Button();
    stopField2QuestSB:SetParent(options)
    stopField2QuestSB:SetText("Stop");
    stopField2QuestSB:SetWidth(50);
    stopField2QuestSB:SetPosition(300, y);
    stopField2QuestSB.Click = function(sender, args)
        FilterQuest(debugText["STOP_FIELD_" .. fieldNumber].SB[CLIENTLANG]);
    end
    y = y + 30;
    return y;
end

function DrawHobnanigansDebug_BeginEndGame(options, y, fieldNumber, debugText)
    local gameLabel = Turbine.UI.Label();
    gameLabel:SetParent(options);
    gameLabel:SetText("Game " .. fieldNumber .. ":");
    gameLabel:SetSize(120, 20);
    gameLabel:SetPosition(10, y);
    gameLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    local startGame = Turbine.UI.Lotro.Button();
    startGame:SetParent(options)
    startGame:SetText("Start");
    startGame.Click = function(sender, args)
        FilterSay(debugText["START_GAME_" .. fieldNumber][CLIENTLANG]);
    end
    startGame:SetWidth(50);
    startGame:SetPosition(60, y);

    local stopGameFF = Turbine.UI.Lotro.Button();
    stopGameFF:SetParent(options)
    stopGameFF:SetText("Stop");
    stopGameFF.Click = function(sender, args)
        FilterSay(debugText["STOP_GAME_" .. fieldNumber].FF[CLIENTLANG]);
    end
    stopGameFF:SetWidth(50);
    stopGameFF:SetPosition(180, y);

    local stopGameSB = Turbine.UI.Lotro.Button();
    stopGameSB:SetParent(options)
    stopGameSB:SetText("Stop");
    stopGameSB.Click = function(sender, args)
        FilterSay(debugText["STOP_GAME_" .. fieldNumber].SB[CLIENTLANG]);
    end
    stopGameSB:SetWidth(50);
    stopGameSB:SetPosition(300, y);
    y = y + 30;
    return y;
end

function DrawHobnanigansDebug_Score(options, x, y, team, fieldNumber, debugText)
    local gameScore = Turbine.UI.Lotro.Button();
    gameScore:SetParent(options)
    gameScore:SetText(team .. fieldNumber);
    gameScore.Click = function(sender, args)
        FilterSay(debugText["SCORE_" .. fieldNumber][team][CLIENTLANG])
    end
    gameScore:SetWidth(50);
    gameScore:SetPosition(x, y);
end

function DrawHobnanigansDebug_Time(options, x, y, secondsRemaining)
    local timeMarker = " s";
    local time = secondsRemaining;
    if (time > 60) then
        time = time / 60;
        timeMarker = " m";
    end

    local gameTime = Turbine.UI.Lotro.Button();
    gameTime:SetParent(options)
    gameTime:SetText(time .. timeMarker);
    gameTime.Click = function(sender, args)
        TimerSetTimeRemaining(hobnanigansTimer, secondsRemaining + 2);
    end
    gameTime:SetWidth(50);
    gameTime:SetPosition(x, y);

end

function DrawHobnanigansDebug_Winner(options, x, y, team, fieldNumber, debugText)
    local winner = Turbine.UI.Lotro.Button();
    winner:SetParent(options)
    winner:SetText(team .. fieldNumber);
    winner.Click = function(sender, args)
        FilterSay(debugText["STOP_GAME_" .. fieldNumber][team][CLIENTLANG]);
    end
    winner:SetWidth(50);
    winner:SetPosition(x, y);
end

function DrawHobnanigansDebug(options)
    local debugText = {
        ["START_FIELD_1"] = {
            ["FF"] = {
                ["ENGLISH"] = "New Quest: A Game of Hobnanigans -- Flying Feathers";
                ["GERMAN"] = "Neue Aufgabe: Eine Runde Hobnanigans – Fliegende Federn";
                ["FRENCH"] = "Nouvelle quête : Une partie de chasse-poulet – Plumes Volantes";
            };
            ["SB"] = {
                ["ENGLISH"] = "New Quest: A Game of Hobnanigans -- Steel Beaks";
                ["GERMAN"] = "Neue Aufgabe: Eine Runde Hobnanigans – Stahlschnäbel";
                ["FRENCH"] = "Nouvelle quête : Une partie de chasse-poulet – Becs d’Acier";
            };
        };
        ["STOP_FIELD_1"] = {
            ["FF"] = {
                ["ENGLISH"] = "Failed: A Game of Hobnanigans -- Flying Feathers";
                ["GERMAN"] = "Gescheitert: Eine Runde Hobnanigans – Fliegende Federn";
                ["FRENCH"] = "Echec : Une partie de chasse-poulet – Plumes Volantes";
            };
            ["SB"] = {
                ["ENGLISH"] = "Failed: A Game of Hobnanigans -- Steel Beaks";
                ["GERMAN"] = "Gescheitert: Eine Runde Hobnanigans – Stahlschnäbel";
                ["FRENCH"] = "Echec : Une partie de chasse-poulet – Becs d’Acier";
            };
        };
        ["START_FIELD_2"] = {
            ["FF"] = {
                ["ENGLISH"] = "New Quest: A Game of Hobnanigans -- Flying Feathers - Field 2";
                ["GERMAN"] = "Neue Aufgabe: Eine Runde Hobnanigans – Fliegende Federn – Feld 2";
                ["FRENCH"] = "Nouvelle quête : Une partie de chasse-poulet – Plumes Volantes - Terrain 2";
            };
            ["SB"] = {
                ["ENGLISH"] = "New Quest: A Game of Hobnanigans -- Steel Beaks - Field 2";
                ["GERMAN"] = "Neue Aufgabe: Eine Runde Hobnanigans – Stahlschnäbel – Feld 2";
                ["FRENCH"] = "Nouvelle quête : Une partie de chasse-poulet – Becs d’Acier - Terrain 2";
            };
        };
        ["STOP_FIELD_2"] = {
            ["FF"] = {
                ["ENGLISH"] = "Failed: A Game of Hobnanigans -- Flying Feathers - Field 2";
                ["GERMAN"] = "Gescheitert: Eine Runde Hobnanigans – Fliegende Federn – Feld 2";
                ["FRENCH"] = "Echec : Une partie de chasse-poulet – Plumes Volantes - Terrain 2";
            };
            ["SB"] = {
                ["ENGLISH"] = "Failed: A Game of Hobnanigans -- Steel Beaks - Field 2";
                ["GERMAN"] = "Gescheitert: Eine Runde Hobnanigans – Stahlschnäbel – Feld 2";
                ["FRENCH"] = "Echec : Une partie de chasse-poulet – Becs d’Acier - Terrain 2";
            };
        };
        ["START_FIELD_3"] = {
            ["FF"] = {
                ["ENGLISH"] = "New Quest: A Game of Hobnanigans -- Flying Feathers - Field 3";
                ["GERMAN"] = "Neue Aufgabe: Eine Runde Hobnanigans – Fliegende Federn – Feld 3";
                ["FRENCH"] = "Nouvelle quête : Une partie de chasse-poulet – Plumes Volantes - Terrain 3";
            };
            ["SB"] = {
                ["ENGLISH"] = "New Quest: A Game of Hobnanigans -- Steel Beaks - Field 3";
                ["GERMAN"] = "Neue Aufgabe: Eine Runde Hobnanigans – Stahlschnäbel – Feld 3";
                ["FRENCH"] = "Nouvelle quête : Une partie de chasse-poulet – Becs d’Acier - Terrain 3";
            };
        };
        ["STOP_FIELD_3"] = {
            ["FF"] = {
                ["ENGLISH"] = "Failed: A Game of Hobnanigans -- Flying Feathers - Field 3";
                ["GERMAN"] = "Gescheitert: Eine Runde Hobnanigans – Fliegende Federn – Feld 3";
                ["FRENCH"] = "Echec : Une partie de chasse-poulet – Plumes Volantes - Terrain 3";
            };
            ["SB"] = {
                ["ENGLISH"] = "Failed: A Game of Hobnanigans -- Steel Beaks - Field 3";
                ["GERMAN"] = "Gescheitert: Eine Runde Hobnanigans – Stahlschnäbel – Feld 3";
                ["FRENCH"] = "Echec : Une partie de chasse-poulet – Becs d’Acier - Terrain 3";
            };
        };
        ["START_FIELD_4"] = {
            ["FF"] = {
                ["ENGLISH"] = "New Quest: A Game of Hobnanigans -- Flying Feathers - Field 4";
                ["GERMAN"] = "Neue Aufgabe: Eine Runde Hobnanigans – Fliegende Federn – Feld 4";
                ["FRENCH"] = "Nouvelle quête : Une partie de chasse-poulet – Plumes Volantes - Terrain 4";
            };
            ["SB"] = {
                ["ENGLISH"] = "New Quest: A Game of Hobnanigans -- Steel Beaks - Field 4";
                ["GERMAN"] = "Neue Aufgabe: Eine Runde Hobnanigans – Stahlschnäbel – Feld 4";
                ["FRENCH"] = "Nouvelle quête : Une partie de chasse-poulet – Becs d’Acier - Terrain 4";
            };
        };
        ["STOP_FIELD_4"] = {
            ["FF"] = {
                ["ENGLISH"] = "Failed: A Game of Hobnanigans -- Flying Feathers - Field 4";
                ["GERMAN"] = "Gescheitert: Eine Runde Hobnanigans – Fliegende Federn – Feld 4";
                ["FRENCH"] = "Echec : Une partie de chasse-poulet – Plumes Volantes - Terrain 4";
            };
            ["SB"] = {
                ["ENGLISH"] = "Failed: A Game of Hobnanigans -- Steel Beaks - Field 4";
                ["GERMAN"] = "Gescheitert: Eine Runde Hobnanigans – Stahlschnäbel – Feld 4";
                ["FRENCH"] = "Echec : Une partie de chasse-poulet – Becs d’Acier - Terrain 4";
            };
        };

        ["START_GAME_1"] = {
            ["ENGLISH"] = "Field 1 Referee says, ''The Game Hen has landed on the field. Begin play!''";
            ["GERMAN"] = "Schiedsrichter - Feld 1 sagt: ''Das Spielhuhn ist auf dem Feld gelandet. Fang an zu spielen!";
            ["FRENCH"] = "Arbitre du terrain 1 dit : ''Le poulet a atterri sur le terrain de jeu. Commencez la partie !''";
        };
        ["START_GAME_2"] = {
            ["ENGLISH"] = "Field 2 Referee says, ''The Game Hen has landed on the field. Begin play!''";
            ["GERMAN"] = "Schiedsrichter - Feld 2 sagt: ''Das Spielhuhn ist auf dem Feld gelandet. Fang an zu spielen!";
            ["FRENCH"] = "Arbitre du terrain 2 dit : ''Le poulet a atterri sur le terrain de jeu. Commencez la partie !''";
        };
        ["START_GAME_3"] = {
            ["ENGLISH"] = "Field 3 Referee says, ''The Game Hen has landed on the field. Begin play!''";
            ["GERMAN"] = "Schiedsrichter - Feld 3 sagt: ''Das Spielhuhn ist auf dem Feld gelandet. Fang an zu spielen!";
            ["FRENCH"] = "Arbitre du terrain 3 dit : ''Le poulet a atterri sur le terrain de jeu. Commencez la partie !''";
        };
        ["START_GAME_4"] = {
            ["ENGLISH"] = "Field 4 Referee says, ''The Game Hen has landed on the field. Begin play!''";
            ["GERMAN"] = "Schiedsrichter - Feld 4 sagt: ''Das Spielhuhn ist auf dem Feld gelandet. Fang an zu spielen!";
            ["FRENCH"] = "Arbitre du terrain 4 dit : ''Le poulet a atterri sur le terrain de jeu. Commencez la partie !''";
        };

        ["STOP_GAME_1"] = {
            ["FF"] = {
                ["ENGLISH"] = "Field 1 Referee says, ''Flying Feathers Win!!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 1 sagt: ''Die Fliegenden Federn haben gewonnen!!!''";
                ["FRENCH"] = "Arbitre du terrain 1 dit : ''Victoire des Plumes Volantes !''";
            };
            ["SB"] = {
                ["ENGLISH"] = "Field 1 Referee says, ''Steel Beaks Win!!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 1 sagt: ''Die Stahlschnäbel haben gewonnen!!!''";
                ["FRENCH"] = "Arbitre du terrain 1 dit : ''Victoire des Becs d’Acier !''";
            };
        };
        ["STOP_GAME_2"] = {
            ["FF"] = {
                ["ENGLISH"] = "Field 2 Referee says, ''Flying Feathers Win!!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 2 sagt: ''Die Fliegenden Federn haben gewonnen!!!''";
                ["FRENCH"] = "Arbitre du terrain 2 dit : ''Victoire des Plumes Volantes !''";
            };
            ["SB"] = {
                ["ENGLISH"] = "Field 2 Referee says, ''Steel Beaks Win!!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 2 sagt: ''Die Stahlschnäbel haben gewonnen!!!''";
                ["FRENCH"] = "Arbitre du terrain 2 dit : ''Victoire des Becs d’Acier !''";
            };
        };
        ["STOP_GAME_3"] = {
            ["FF"] = {
                ["ENGLISH"] = "Field 3 Referee says, ''Flying Feathers Win!!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 3 sagt: ''Die Fliegenden Federn haben gewonnen!!!''";
                ["FRENCH"] = "Arbitre du terrain 3 dit : ''Victoire des Plumes Volantes !''";
            };
            ["SB"] = {
                ["ENGLISH"] = "Field 3 Referee says, ''Steel Beaks Win!!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 3 sagt: ''Die Stahlschnäbel haben gewonnen!!!''";
                ["FRENCH"] = "Arbitre du terrain 3 dit : ''Victoire des Becs d’Acier !''";
            };
        };
        ["STOP_GAME_4"] = {
            ["FF"] = {
                ["ENGLISH"] = "Field 4 Referee says, ''Flying Feathers Win!!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 4 sagt: ''Die Fliegenden Federn haben gewonnen!!!''";
                ["FRENCH"] = "Arbitre du terrain 4 dit : ''Victoire des Plumes Volantes !''";
            };
            ["SB"] = {
                ["ENGLISH"] = "Field 4 Referee says, ''Steel Beaks Win!!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 4 sagt: ''Die Stahlschnäbel haben gewonnen!!!''";
                ["FRENCH"] = "Arbitre du terrain 4 dit : ''Victoire des Becs d’Acier !''";
            };
        };

        ["SCORE_1"] = {
            ["FF"] = {
                ["ENGLISH"] = "Field 1 Referee says, ''Flying Feathers score!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 1 sagt: ''Die Fliegenden Federn punkten!!''";
                ["FRENCH"] = "Arbitre du terrain 1 dit : ''Les Plumes Volantes marquent !''";
            };
            ["SB"] = {
                ["ENGLISH"] = "Field 1 Referee says, ''Steel Beaks score!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 1 sagt: ''Die Stahlschnäbel punkten!!''";
                ["FRENCH"] = "Arbitre du terrain 1 dit : ''Les Becs d’Acier marquent !''";
            };
        };
        ["SCORE_2"] = {
            ["FF"] = {
                ["ENGLISH"] = "Field 2 Referee says, ''Flying Feathers score!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 2 sagt: ''Die Fliegenden Federn punkten!!''";
                ["FRENCH"] = "Arbitre du terrain 2 dit : ''Les Plumes Volantes marquent !''";
            };
            ["SB"] = {
                ["ENGLISH"] = "Field 2 Referee says, ''Steel Beaks score!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 2 sagt: ''Die Stahlschnäbel punkten!!''";
                ["FRENCH"] = "Arbitre du terrain 2 dit : ''Les Becs d’Acier marquent !''";
            };
        };
        ["SCORE_3"] = {
            ["FF"] = {
                ["ENGLISH"] = "Field 3 Referee says, ''Flying Feathers score!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 3 sagt: ''Die Fliegenden Federn punkten!!''";
                ["FRENCH"] = "Arbitre du terrain 3 dit : ''Les Plumes Volantes marquent !''";
            };
            ["SB"] = {
                ["ENGLISH"] = "Field 3 Referee says, ''Steel Beaks score!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 3 sagt: ''Die Stahlschnäbel punkten!!''";
                ["FRENCH"] = "Arbitre du terrain 3 dit : ''Les Becs d’Acier marquent !''";
            };
        };
        ["SCORE_4"] = {
            ["FF"] = {
                ["ENGLISH"] = "Field 4 Referee says, ''Flying Feathers score!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 4 sagt: ''Die Fliegenden Federn punkten!!''";
                ["FRENCH"] = "Arbitre du terrain 4 dit : ''Les Plumes Volantes marquent !''";
            };
            ["SB"] = {
                ["ENGLISH"] = "Field 4 Referee says, ''Steel Beaks score!!''";
                ["GERMAN"] = "Schiedsrichter - Feld 4 sagt: ''Die Stahlschnäbel punkten!!''";
                ["FRENCH"] = "Arbitre du terrain 4 dit : ''Les Becs d’Acier marquent !''";
            };
        };
    };

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

    -- Start/Stop quests on Fields 1-4
    for i=1, 4 do
        y = DrawHobnanigansDebug_StartStopQuests(options, y, i, debugText);
    end

    -- Begin/End game on Fields 1-4:
    for i=1, 4 do
        y = DrawHobnanigansDebug_BeginEndGame(options, y, i, debugText);
    end

    -- Score on fields 1-4:
    local game2Score = Turbine.UI.Label();
    game2Score:SetParent(options);
    game2Score:SetText("Score:");
    game2Score:SetSize(120, 20);
    game2Score:SetPosition(10, y);
    game2Score:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    for i=1, 4 do
        DrawHobnanigansDebug_Score(options, 60 + i*60, y, "FF", i, debugText);
        DrawHobnanigansDebug_Score(options, 60 + i*60, y + 30, "SB", i, debugText);
    end

    y = y + 60;

    -- Move time to specific values:
    local gameAdvanceTime = Turbine.UI.Label();
    gameAdvanceTime:SetParent(options);
    gameAdvanceTime:SetText("Advance Time:");
    gameAdvanceTime:SetSize(150, 20);
    gameAdvanceTime:SetPosition(10, y);
    gameAdvanceTime:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    DrawHobnanigansDebug_Time(options, 120, y, 10 * 60);
    DrawHobnanigansDebug_Time(options, 180, y, 6 * 60);
    DrawHobnanigansDebug_Time(options, 240, y, 2 * 60);
    DrawHobnanigansDebug_Time(options, 300, y, 10);
    y = y + 30;

    -- Declare winner:
    local declareWinner = Turbine.UI.Label();
    declareWinner:SetParent(options);
    declareWinner:SetText("Winner:");
    declareWinner:SetSize(150, 20);
    declareWinner:SetPosition(10, y);
    declareWinner:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    for i=1, 4 do
        DrawHobnanigansDebug_Winner(options, 60 + i*60, y, "FF", i, debugText);
        DrawHobnanigansDebug_Winner(options, 60 + i*60, y + 30, "SB", i, debugText);
    end
    y = y + 60;

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

--- Draw a section to allow testing of the Alert functionality
---@param options Control
---@param y number
---@return number
function DrawAlertDebug(options, optionsY)
    local y = 0;
    local seconds = 5;

    local alertDebugControl = Turbine.UI.Control();
    alertDebugControl:SetParent(options);
    --alertDebugControl:SetBackColor(Turbine.UI.Color.DarkOrange);
    alertDebugControl:SetSize(options:GetWidth(), 100);
    alertDebugControl:SetTop(optionsY);


    -- A call to Alert looks like this:
--    Alert(
--        "<rgb=#00FFFF>"..message.."</rgb>",
--        secondsToShow,
--        showRemaningTime,
--        callback,
--        alert_cancellation_token);
    -- Support changing message, secondsToShow, showRemainingTime.

    local alertDebugLabel = Turbine.UI.Label();
    alertDebugLabel:SetParent(alertDebugControl);
    alertDebugLabel:SetWidth(200);
    alertDebugLabel:SetPosition(0, y);
    alertDebugLabel:SetText("Alerts:");
    y = y + 30;

    local messageLabel = Turbine.UI.Label();
    messageLabel:SetParent(alertDebugControl);
    messageLabel:SetWidth(200);
    messageLabel:SetPosition(20, y);
    messageLabel:SetText("Message:");

    local messageTextBox = Turbine.UI.Lotro.TextBox();
    messageTextBox:SetParent(alertDebugControl);
    messageTextBox:SetPosition(100, y-10);
    messageTextBox:SetSize(300, 30);
    messageTextBox:SetMultiline(true); -- Alert allows multiline messages
    messageTextBox:SetText("Sample Message");
    y = y + 35;
    -- <rgb=#00FFFF>Sample Message</rgb>

    local secondsLabel = Turbine.UI.Label();
    secondsLabel:SetParent(alertDebugControl);
    secondsLabel:SetWidth(200);
    secondsLabel:SetPosition(20, y);
    secondsLabel:SetText("Seconds:");

    local secondsTextBox = Turbine.UI.Lotro.TextBox();
    secondsTextBox:SetParent(alertDebugControl);
    secondsTextBox:SetPosition(100, y-10);
    secondsTextBox:SetSize(100, 30);
    secondsTextBox:SetMultiline(false);
    secondsTextBox:SetText(tostring(seconds));
    secondsTextBox.FocusLost = function(sender, args)
        local newSeconds = tonumber(secondsTextBox:GetText());
        if (newSeconds) then
            seconds = newSeconds;
        else
            secondsTextBox:SetText(tostring(seconds));
        end
    end
    y = y + 35;

    local showRemainingCheckBox = Turbine.UI.Lotro.CheckBox();
    showRemainingCheckBox:SetParent(alertDebugControl);
    showRemainingCheckBox:SetSize(200, 20);
    showRemainingCheckBox:SetPosition(20, y);
    showRemainingCheckBox:SetText("Show Remaining Time");
    showRemainingCheckBox:SetChecked(true);
    y = y + 30;

    local showButton = Turbine.UI.Lotro.Button();
    showButton:SetParent(alertDebugControl);
    showButton:SetText("Send Alert");
    showButton:SetWidth(100);
    showButton:SetPosition(75, y);
    showButton.Click = function(sender, args)
        Alert(
            messageTextBox:GetText(),
            seconds,
            showRemainingCheckBox:IsChecked(),
            nil,
            alert_cancellation_token);
    end

    local cancelButton = Turbine.UI.Lotro.Button();
    cancelButton:SetParent(alertDebugControl);
    cancelButton:SetText("Cancel Alert");
    cancelButton:SetWidth(100);
    cancelButton:SetPosition(200, y);
    cancelButton.Click = function(sender, args)
        CancelAlert();
    end

    y = y + 30;



    alertDebugControl:SetHeight(y);
    return optionsY + alertDebugControl:GetHeight();
end

function CreateColorPickerWindow()
    -- the color picker window
    ColorPickerWindow = Turbine.UI.Lotro.Window();
    ColorPickerWindow:SetSize(300,230);
    ColorPickerWindow:SetPosition(
        SETTINGS_ACCOUNT.QUICK_GUIDE.COLOR_PICKER_WIN.X,
        SETTINGS_ACCOUNT.QUICK_GUIDE.COLOR_PICKER_WIN.Y);
    ColorPickerWindow:SetText(GetString(_LANG.OPTIONS.COLOR_PICKER));
    ColorPickerWindow.PositionChanged = function(sender, args)
        local left, top = ColorPickerWindow:GetPosition();
        SETTINGS_ACCOUNT.QUICK_GUIDE.COLOR_PICKER_WIN.X = left;
        SETTINGS_ACCOUNT.QUICK_GUIDE.COLOR_PICKER_WIN.Y = top;
    end

    ColorPickerWindow.SaveCallback = nil;

    -- slightly not-black background to see the edges more easily:
    local background = Turbine.UI.Control();
    background:SetParent(ColorPickerWindow);
    background:SetSize(284, 145 - 38 + 25*2);
    background:SetPosition(8, 38);
    background:SetBackColor(Turbine.UI.Color(0.1, 0.1, 0.1));

    -- the color picker
    local topMargin = 40;
    local colorPickerHeight = 70;
    local colorPicker = Libraries.ColorPicker.Create();
    colorPicker:SetParent(ColorPickerWindow);
    colorPicker:SetSize(280, colorPickerHeight);
    colorPicker:SetPosition(10, topMargin);

    local presetRowsY = topMargin + colorPickerHeight + 10;

    -- based on a 24-pack of Crayola crayons:
    local presetColors = {
        [1] = {
            [1] = "FFAACC"; -- carnation pink
            [2] = "C0448F"; -- red violet
            [3] = "F75394"; -- violet red
            [4] = "EE204D"; -- red
            [5] = "FC2847"; -- scarlet
            [6] = "FF5349"; -- red orange
            [7] = "FF7538"; -- orange
            [8] = "FFB653"; -- yellow orange
            [9] = "FDD9B5"; -- apricot
            [10] = "FDDB6D"; -- dandelion
            [11] = "FCE883"; -- yellow
            [12] = "F0E891"; -- green yellow            
        };
        [2] = {
            [1] = "C5E384"; -- yellow green
            [2] = "1CAC78"; -- green
            [3] = "199EBD"; -- blue green
            [4] = "1DACD6"; -- cerulean
            [5] = "1F75FE"; -- blue
            [6] = "5D76CB"; -- indigo
            [7] = "7366BD"; -- blue violet
            [8] = "926EAE"; -- violet
            [9] = "B4674D"; -- brown
            [10] = "232323"; -- black
            [11] = "95918C"; -- gray
            [12] = "EDEDED"; -- white            
        };
    };

    for i = 1, 2 do
        for j = 1, 12 do
            local color = presetColors[i][j];
            local _, _, rStr, gStr, bStr = string.find(presetColors[i][j], "([%da-fA-F][%da-fA-F])([%da-fA-F][%da-fA-F])([%da-fA-F][%da-fA-F])");
            local r = tonumber(rStr, 16);
            local g = tonumber(gStr, 16);
            local b = tonumber(bStr, 16);
    
            local presetColorControl = Turbine.UI.Control();
            presetColorControl:SetParent(ColorPickerWindow);
            presetColorControl:SetBackColor(Turbine.UI.Color(r/255, g/255, b/255));
            presetColorControl:SetSize(20, 20);
            presetColorControl:SetPosition((j-1) * 23 + 12, (i-1) * 23 + presetRowsY);
            presetColorControl.color = color;
            presetColorControl.MouseClick = function(sender, args)
                ColorPickerWindow.SetColor(r, g, b);
            end
        end
    end

    local previewRowY = presetRowsY + (25*2);
    -- selected color preview
    local x = 50;
    local colorPreview = Turbine.UI.Control();
    colorPreview:SetParent(ColorPickerWindow);
    colorPreview:SetSize(23,23);
    colorPreview:SetPosition(x, previewRowY);

    local colorLabelFont = Turbine.UI.Lotro.Font.TrajanPro14;
    local colorLabelColor = Turbine.UI.Color((229/255),(209/255),(136/255));

    -- selected color hex value
    local colorLabel = Turbine.UI.Label();
    colorLabel:SetParent(ColorPickerWindow);
    colorLabel:SetPosition(x + 30, previewRowY + 5);
    colorLabel:SetSize(50, 23);
    colorLabel:SetText("Hex: #");

    local colorTextBox = Turbine.UI.Lotro.TextBox();
    colorTextBox:SetParent(ColorPickerWindow);
    colorTextBox:SetPosition(x + 80, previewRowY);
    colorTextBox:SetSize(75,23);
    colorTextBox:SetForeColor(colorLabelColor);
    colorTextBox:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    colorTextBox:SetFont(colorLabelFont);
    colorTextBox:SetMultiline(false);
    colorTextBox.FocusGained = function(sender, events)
        colorTextBox.previousValue = colorTextBox:GetText();
    end
    colorTextBox.FocusLost = function(sender, events)
        local value = colorTextBox:GetText();
        if (not value:match("^[%da-fA-F][%da-fA-F][%da-fA-F][%da-fA-F][%da-fA-F][%da-fA-F]$")) then
            colorTextBox:SetText(colorTextBox.previousValue);
        else
            colorTextBox.previousValue = value;
        end
    end

    local updateButton = Turbine.UI.Lotro.Button();
    updateButton:SetParent(ColorPickerWindow);
    updateButton:SetText(GetString(_LANG.OPTIONS.UPDATE));
    updateButton:SetPosition(x + 160, previewRowY);
    updateButton:SetWidth(60);

    -- button which updates the SETTINGS and recolours the window.
    local saveButton = Turbine.UI.Lotro.Button();
    saveButton:SetParent(ColorPickerWindow);
    saveButton:SetText(GetString(_LANG.OPTIONS.SAVE_COLOR));
    saveButton:SetPosition(100, previewRowY + 30);
    saveButton:SetWidth(100);
    saveButton.Click = function(sender, args)
        local red, green, blue = colorPicker:GetRGBColor();
        if (ColorPickerWindow.SaveCallback) then
            ColorPickerWindow.SaveCallback(red, green, blue);
        end
        ColorPickerWindow:SetVisible(false);
    end

    updateButton.Click = function(sender, args)
        local _, _, rStr, gStr, bStr = string.find(colorTextBox:GetText(), "([%da-fA-F][%da-fA-F])([%da-fA-F][%da-fA-F])([%da-fA-F][%da-fA-F])");
        local r = tonumber(rStr, 16);
        local g = tonumber(gStr, 16);
        local b = tonumber(bStr, 16);
        ColorPickerWindow.SetColor(r, g, b);
    end

    -- respond to clicks:
    colorPicker.LeftClick = function ()
        colorPreview:SetBackColor(colorPicker:GetTurbineColor());
        colorTextBox:SetText(colorPicker:GetHexColor());
    end

    ColorPickerWindow.SetColor = function(red, green, blue, saveCallback)
        colorPicker.SetRGBColor(red, green, blue);
        colorPreview:SetBackColor(Turbine.UI.Color(red / 255, green / 255, blue / 255));
        colorTextBox:SetText(string.format("%02x%02x%02x", red, green, blue));

        if (saveCallback ~= nil) then
            ColorPickerWindow.SaveCallback = saveCallback;
        end
        ColorPickerWindow:SetVisible(true);
        ColorPickerWindow:Activate();
    end

end

function DrawOptionsWin()
    CreateColorPickerWindow();

    -- UI hierarchy:
    -- options
    --      non-debug options
    --      debug options

    local options = Turbine.UI.Control();
    options:SetWidth(500);
    plugin.GetOptionsPanel = function(self) return options; end

    local nonDebugOptions = Turbine.UI.Control();
    nonDebugOptions:SetParent(options);
    nonDebugOptions:SetWidth(350);

    local y = topMargin;
    y = DrawGenericOptions(nonDebugOptions, y);
    y = DrawQuickGuideOptions(nonDebugOptions, y);
    y = DrawMapOptions(nonDebugOptions, y);
    nonDebugOptions:SetHeight(y);

    if (not SHOW_DEBUG_OPTIONS) then
        options:SetHeight(nonDebugOptions:GetHeight());
        return;
    end

    -- Calculate where all the debug sections should be:
    questAcceptCompleteFailY = 0;
    hobnanigansY = questAcceptCompleteFailY + 100;
    fireworksY = hobnanigansY + 480;
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
    y = DrawAlertDebug(debugOptions, y);

    debugOptions:SetHeight(y);
    options:SetHeight(nonDebugOptions:GetHeight() + debugOptions:GetHeight());
end


