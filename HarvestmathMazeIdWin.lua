
function DrawHarvestmathMazeIdWin()
    wHarvestmathMazeIdWinParent = Turbine.UI.Lotro.Window();

    local imageWidth = 240;

    local contentWidth = imageWidth + 50;
    local contentHeight = (100 + 10) * 5;

    local windowLeftBorder = 20;
    local windowRightBorder = 20;
    local windowTopBorder = 40;
    local windowBottomBorder = 20;

    local labelHeight = 100;


    wHarvestmathMazeIdWinParent:SetSize(
        contentWidth + windowLeftBorder + windowRightBorder,
        labelHeight + contentHeight + windowTopBorder + windowBottomBorder);
    wHarvestmathMazeIdWinParent:SetPosition(
        SETTINGS.HARVESTMATH_MAZE_ID_WIN.X,
        SETTINGS.HARVESTMATH_MAZE_ID_WIN.Y);
    wHarvestmathMazeIdWinParent:SetText(GetString(_LANG.OTHER.WINDOWS.HARVESTMATH_MAZE_ID_WIN_TITLE));

    AddCallback(wHarvestmathMazeIdWinParent, "PositionChanged", function(sender, args)
        SETTINGS.HARVESTMATH_MAZE_ID_WIN.X = wHarvestmathMazeIdWinParent:GetLeft();
        SETTINGS.HARVESTMATH_MAZE_ID_WIN.Y = wHarvestmathMazeIdWinParent:GetTop();
    end);

    AddCallback(wHarvestmathMazeIdWinParent, "Closing", function(sender, args)
        HarvestmathMazeIdSetVisible(false);
    end);

    local explanationLabel = Turbine.UI.Label();
    explanationLabel:SetParent(wHarvestmathMazeIdWinParent);
    explanationLabel:SetSize(wHarvestmathMazeIdWinParent:GetWidth() - 20, labelHeight);
    explanationLabel:SetMultiline(true);
    explanationLabel:SetPosition(10, windowTopBorder + 10);
    explanationLabel:SetText(GetString(_LANG.OTHER.WINDOWS.HARVESTMATH_MAZE_ID_WIN_INSTRUCTIONS));

    -- A control to hold all of the other stuff:
    local selectionControlsParent = Turbine.UI.Control();
    selectionControlsParent:SetParent(wHarvestmathMazeIdWinParent);
    selectionControlsParent:SetSize(contentWidth, contentHeight);
    selectionControlsParent:SetPosition(windowLeftBorder, windowTopBorder + labelHeight);

    -- Add each image and button
    for i=1, 5 do
        local y = (i - 1) * 100 + ((i - 1) * 10);

        local mazeImage = Turbine.UI.Control();
        mazeImage:SetParent(selectionControlsParent);
        mazeImage:SetSize(imageWidth, 100);
        mazeImage:SetPosition(0, y);
        mazeImage:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
        mazeImage:SetBackground(_IMAGES[HARVESTMATH]["TANGLECORN_ID_" .. i]);
    
        local buttonY = y + (100 / 2) - (20 / 2);
        local mazeButton = Turbine.UI.Lotro.Button();
        mazeButton:SetParent(selectionControlsParent);
        mazeButton:SetText("#" .. i);
        mazeButton:SetSize(40, 20);
        mazeButton:SetPosition(imageWidth + 5, buttonY);
        mazeButton.Click = function(sender, args)
            -- Call a function that
            -- a) saves the value, plus the start time that value is valid for
            -- b) load the correct map into the window
            -- c) closes this window
            HarvestmathMazeIdSetId(i);
            MazeMapUpdateQuest(SELECTEDQUESTKEY);
            HarvestmathMazeIdSetVisible(false);
        end
    end
end

function HarvestmathMazeIdSetVisible(newVisibility)
    if (wHarvestmathMazeIdWinParent == nil) then return; end
    wHarvestmathMazeIdWinParent:SetVisible(newVisibility);
    wHarvestmathMazeIdWinParent:Activate();
end

--- Sets the current Harvestmath maze ID.
---@param id integer Maze # from 1 to 5
function HarvestmathMazeIdSetId(id)
    -- Get the current time:
    local now = Turbine.Engine.GetDate();
    local previousMazeResetHour = GetPreviousMazeResetHour(now);

    --Turbine.Shell.WriteLine("Using " .. PrettyPrintDate(previousMazeResetHour) .. " as roll-over to current maze.");
    SETTINGS_SERVER.HARVESTMATH_MAZE_ID.NUMBER = id;
    SETTINGS_SERVER.HARVESTMATH_MAZE_ID.ID_DATE = previousMazeResetHour;
end
