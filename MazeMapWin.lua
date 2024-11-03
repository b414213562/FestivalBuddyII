
function DrawMazeMapWin()
    wMazeMapWinParent = Turbine.UI.Lotro.Window();

    wMazeMapWinParent.mapWidth = 500;
    wMazeMapWinParent.mapHeight = 500;

    wMazeMapWinParent.mapCenterX = wMazeMapWinParent.mapWidth / 2;
    wMazeMapWinParent.mapCenterY = wMazeMapWinParent.mapHeight / 2;

    wMazeMapWinParent.checkForNewMazeIdSeconds = 15;

    local windowLeftBorder = 20;
    local windowRightBorder = 20;
    local windowTopBorder = 40;
    local windowBottomBorder = 20;

    wMazeMapWinParent.cornerCoordinates = {};

    wMazeMapWinParent:SetSize(
        wMazeMapWinParent.mapWidth + windowLeftBorder + windowRightBorder,
        wMazeMapWinParent.mapHeight + windowTopBorder + windowBottomBorder);
    wMazeMapWinParent:SetPosition(SETTINGS.MAZEMAPWIN.X,SETTINGS.MAZEMAPWIN.Y);
    wMazeMapWinParent:SetText("Generic Maze Map Window");
    wMazeMapWinParent:SetVisible(SETTINGS.MAZEMAPWIN.VISIBLE);

    -- I think this is a Window instead of Control to help stuff showing on top of other stuff?
    -- Update: SetOpacity seems to only work on Window, not Control.
    local map = Turbine.UI.Window();
    wMazeMapWinParent.map = map;
    map:SetParent(wMazeMapWinParent);
    map:SetPosition(windowLeftBorder, windowTopBorder);
    map:SetSize(wMazeMapWinParent.mapWidth, wMazeMapWinParent.mapHeight);
    map:SetBackground(_IMAGES[SPRING].MAZEMAP);
    map:SetMouseVisible(false);
    -- Note: Never set this to false, because then the rotations affect the parent control. Which is bad.
    -- TODO: Find out if resizing the screen also clears rotations.
    map:SetVisible(true);
    MazeMapSetRotationFromOrientation();

    local testControl = Turbine.UI.Control();
    testControl:SetBackground(_IMAGES["MAPPOINT"]);
    testControl:SetStretchMode(2);
    local imageWidth = testControl:GetWidth();
    local imageHeight = testControl:GetHeight();

    local finalImageWidth = 36;
    local finalImageHeight = 36;

    local mapPoint = Turbine.UI.Window();
    wMazeMapWinParent.mapPoint = mapPoint;
    mapPoint:SetParent(map);
    mapPoint:SetSize(imageWidth, imageHeight);
    mapPoint:SetBackground(_IMAGES["MAPPOINT"]);

    mapPoint:SetStretchMode(1);
    mapPoint:SetSize(finalImageWidth, finalImageHeight);

    mapPoint.width = finalImageWidth;
    mapPoint.height = finalImageHeight;
    mapPoint.radius = mapPoint.width / 2;

    mapPoint:SetVisible(false);
    mapPoint:SetMouseVisible(false);
    mapPoint:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);

    local decayTime = 5;
    local decayDelayTime = 3;
    local persistTime = decayTime - decayDelayTime;

    mapPoint.Update = function(sender, args)
        local delta = Turbine.Engine.GetGameTime() - mapPoint.refreshTime;
        -- gradually fade us out:
        -- Ignore the first decayDelayTime seconds, then fade out evenly across the rest.
        -- e.g.: after 1 second seconds: (5 - 1) / (5 - 3) = 4 / 2, = 100% opacity
        --       after 2 second seconds: (5 - 2) / (5 - 3) = 3 / 2, = 100% opacity
        --       after 4 second seconds: (5 - 4) / (5 - 3) = 1 / 2, = 50% opacity

        mapPoint:SetOpacity((decayTime - delta)/(decayTime - decayDelayTime));
        if (delta > 5) then
            mapPoint:SetWantsUpdates(false);
            mapPoint:SetVisible(false);
        end
    end

    AddCallback(wMazeMapWinParent, "PositionChanged", function(sender, args)
        SETTINGS.MAZEMAPWIN.X = wMazeMapWinParent:GetLeft();
        SETTINGS.MAZEMAPWIN.Y = wMazeMapWinParent:GetTop();
    end);

    AddCallback(wMazeMapWinParent, "Closing", function(sender, args)
        MazeMapSetVisible(false);
    end);

    -- TODO: enable this once all logic issues are fixed
--    local changingMazeMapTimer = Turbine.UI.Control();
--    changingMazeMapTimer.lastUpdate = Turbine.Engine.GetGameTime();
--    changingMazeMapTimer.Update = function(sender, args)
--        local gameTime = Turbine.Engine.GetGameTime();
--        if (gameTime > changingMazeMapTimer.lastUpdate + wMazeMapWinParent.checkForNewMazeIdSeconds) then
--            changingMazeMapTimer.lastUpdate = gameTime;
--
--            MazeMapLoadHarvestFestivalDetails();
--        end
--    end
--    wMazeMapWinParent.changingMazeMapTimer = changingMazeMapTimer;

    MazeMapUpdateFestival(SELECTEDFESTIVAL);
end

---Sets the title of the Maze Map Window.
---@param title string Already-localized text to use as title.
function MazeMapSetWindowTitle(title)
    wMazeMapWinParent:SetText(title);
end

---Sets the corner coordinates used in calculating image position from /loc text.
---@param cornerCoords table A table with west, north, east, and south entries.
function MazeMapSetCornerCoordinates(cornerCoords)
    wMazeMapWinParent.cornerCoordinates = cornerCoords;
end

function MazeMapSetVisible(newVisibility)
    if (wMazeMapWinParent == nil) then return; end
    SETTINGS.MAZEMAPWIN.VISIBLE = newVisibility;
    wMazeMapWinParent:SetVisible(SETTINGS.MAZEMAPWIN.VISIBLE);
    if (newVisibility) then
        wMazeMapWinParent.map:SetRotation( { x = 0, y = 0, z = wMazeMapWinParent.rotation } );
        wMazeMapWinParent:Activate();
    end
end

function MazeMapToggleVisibility()
    MazeMapSetVisible(not SETTINGS.MAZEMAPWIN.VISIBLE);
end

function MazeMapUpdateFestival(selectedFestival)
    local festivalMapData = _QUESTSTRINGS[selectedFestival].MAP;
    if (festivalMapData) then
        -- Start timer checking for new map:
        -- wMazeMapWinParent.changingMazeMapTimer:SetWantsUpdates(true);

        -- load title and default map (if present) for festival:
        if (festivalMapData.defaultImage) then
            wMazeMapWinParent.map:SetBackground(festivalMapData.defaultImage);
            MazeMapSetWindowTitle(GetString(festivalMapData.name));
        elseif (selectedFestival == HARVESTMATH) then
            local mazeNumber = MazeMapGetHarvestmapMazeId();
            wMazeMapWinParent.map:SetBackground(festivalMapData["defaultImage" .. mazeNumber]);
            local windowTitle = GetString(festivalMapData.name) .. " #" .. mazeNumber;
            MazeMapSetWindowTitle(windowTitle);
        end
    else
        -- Stop timer checking for new map:
        -- wMazeMapWinParent.changingMazeMapTimer:SetWantsUpdates(false);
    end
end

function MazeMapGetHarvestmapMazeId()
    local now = Turbine.Engine.GetDate();
    local previousTen = GetPreviousHourTen(now);

    local storedId = SETTINGS_SERVER.HARVESTMATH_MAZE_ID.NUMBER;
    local storedTienUur = SETTINGS_SERVER.HARVESTMATH_MAZE_ID.ID_DATE;

    -- Add code so this function cannot be called without storedTienUur being valid.
    if (previousTen == nil or previousTen.Year == nil or storedTienUur == nil or storedTienUur.Year == nil) then
        return 1;
    end

    local difference = GetDayDifference(previousTen, storedTienUur);
    local mazeNumber = (storedId + difference) % 5;
    if (mazeNumber == 0) then mazeNumber = 5; end

    return mazeNumber;
end

function MazeMapLoadHarvestFestivalDetails()
    -- If there's no quest key, then we might need to update festival-level maps.
    -- Dispatch this there and then return.
    if (SELECTEDQUESTKEY == "") then
        MazeMapUpdateFestival(SELECTEDFESTIVAL);
        return;
    end

    local questDetails = _QUESTSTRINGS[SELECTEDFESTIVAL][SELECTEDQUESTKEY];

    -- Redo the maze-calculation:
    if (questDetails.MAP) then
        local mazeNumber = MazeMapGetHarvestmapMazeId();
        wMazeMapWinParent.map:SetBackground(questDetails.MAP["image" .. mazeNumber]);

        local windowTitle = GetString(_QUESTSTRINGS[SELECTEDFESTIVAL].MAP.name) .. " #" .. mazeNumber;
        MazeMapSetWindowTitle(windowTitle);
    end
end

function MazeMapUpdateQuest(questKey)
    MazeMapUpdateFestival(SELECTEDFESTIVAL);

    local questDetails = _QUESTSTRINGS[SELECTEDFESTIVAL][questKey];
    MazeMapSetRotationFromOrientation();

    if (questDetails and questDetails.MAP and wMazeMapWinParent) then
        -- Use quest coordinates if present, otherwise the festival coordinates:
        if (questDetails.cornerCoordinates) then
            MazeMapSetCornerCoordinates(questDetails.cornerCoordinates);
        else
            MazeMapSetCornerCoordinates(_QUESTSTRINGS[SELECTEDFESTIVAL].MAP.cornerCoordinates);
        end
        -- Use the Festival title for the window.
        local windowTitle = GetString(_QUESTSTRINGS[SELECTEDFESTIVAL].MAP.name);

        -- Load the correct image:
        if (SELECTEDFESTIVAL == HARVESTMATH) then
            -- Harvestmath requires extra logic:
            if (not SETTINGS_SERVER.HARVESTMATH_MAZE_ID.NUMBER) then
                HarvestmathMazeIdSetVisible(true);
                return;
            else
                MazeMapLoadHarvestFestivalDetails();
            end
        else
            wMazeMapWinParent.map:SetBackground(questDetails.MAP.image);
            MazeMapSetWindowTitle(windowTitle);
        end


        -- Respect the auto-open option:
        if (SETTINGS.MAZEMAPWIN.AUTO_OPEN_MAP) then
            MazeMapSetVisible(true);
        end
    else
        MazeMapSetVisible(false);
    end

end

function MazeMapSetRotationFromOrientation()
    local orientation = SETTINGS.MAZEMAPWIN.ORIENTATION;
    if (orientation == 5) then
        orientation = math.random(1, 4);
    end

    local newRotation = 0; -- north
    if (orientation == 1) then newRotation = 0;
    elseif (orientation == 2) then newRotation = 90;
    elseif (orientation == 3) then newRotation = 180;
    elseif (orientation == 4) then newRotation = 270;
    end

    MazeMapSetRotation(newRotation);
end

function MazeMapSetRotation(newRotation)
    if (wMazeMapWinParent) then
        wMazeMapWinParent.rotation = newRotation;
        wMazeMapWinParent.map:SetRotation( { x = 0, y = 0, z = newRotation } );
    end
end

function MazeMapSetMapPointRotation(newRotation)
    -- rotating only works correctly if the element is visible:
    if (not wMazeMapWinParent.mapPoint:IsVisible()) then return; end

    wMazeMapWinParent.mapPoint.rotation = newRotation;
    local baseRotation = 90; -- Red arrow points right by default
    local compositeRotation = baseRotation + wMazeMapWinParent.rotation - newRotation;

    -- rotating only works correctly if the element is visible:
    wMazeMapWinParent.mapPoint:SetRotation({ x = 0, y = 0, z = compositeRotation } );
end

function MazeMapRotatedPixelsFromUnrotatedPixels(unrotatedX, unrotatedY)
    if (wMazeMapWinParent.rotation == 0) then
        return { x = unrotatedX, y = unrotatedY};
    end

    -- Convert to center-based coords:
    local deltaX = unrotatedX - wMazeMapWinParent.mapCenterX;
    local deltaY = wMazeMapWinParent.mapCenterY - unrotatedY;

    -- Change coordinates based on rotation:
    local rotatedDeltaX = deltaX;
    local rotatedDeltaY = deltaY;

    if (wMazeMapWinParent.rotation == 90) then
        rotatedDeltaX = -deltaY;
        rotatedDeltaY = deltaX;
    elseif (wMazeMapWinParent.rotation == 180) then
        rotatedDeltaX = -deltaX;
        rotatedDeltaY = -deltaY;
    elseif (wMazeMapWinParent.rotation == 270) then
        rotatedDeltaX = deltaY;
        rotatedDeltaY = -deltaX;
    end

    -- Convert back to image-based coords:
    local rotatedX = rotatedDeltaX + wMazeMapWinParent.mapCenterX;
    local rotatedY = wMazeMapWinParent.mapCenterY - rotatedDeltaY;

    return { x = rotatedX, y = rotatedY};
end

function MazeMapMoveMapPoint(unrotatedX, unrotatedY, heading)
    local pointRadius = wMazeMapWinParent.mapPoint.radius;

    -- Assuming the map rotation is only 0, 90, 180, or 270:
    -- Skip converting to/from polar coordinates and just swap signs / values a la matrix multiplication
    local rotatedPixels = MazeMapRotatedPixelsFromUnrotatedPixels(unrotatedX, unrotatedY);

    local x = rotatedPixels.x;
    local y = rotatedPixels.y;

    -- If the arrow would be off screen, don't let it leave:
    local offMap = false;
    if (x < 0) then x = 0; offMap = true; end
    if (y < 0) then y = 0; offMap = true; end
    if (x > wMazeMapWinParent.mapWidth) then x = wMazeMapWinParent.mapWidth; offMap = true; end
    if (y > wMazeMapWinParent.mapHeight) then y = wMazeMapWinParent.mapHeight; offMap = true; end

    wMazeMapWinParent.mapPoint:SetVisible(not offMap);
    -- Adjust the rotation if the arrow is visible:
    if (wMazeMapWinParent.mapPoint:IsVisible()) then
        MazeMapSetMapPointRotation(heading);
    end

    -- Adjust the final point to account for the size of the map point:
    wMazeMapWinParent.mapPoint:SetPosition(x - pointRadius, y - pointRadius);

    -- Let it phase out:
    wMazeMapWinParent.mapPoint.refreshTime = Turbine.Engine.GetGameTime();
    wMazeMapWinParent.mapPoint:SetWantsUpdates(true);
end

function MazeMapHandleStandardChatMessage(message)
    if (not wMazeMapWinParent:IsVisible()) then return; end

    local coordinates = MazeMapParseChatLocation(message);
    if (coordinates) then
        local pixels = PixelsFromCoords(coordinates);

        MazeMapMoveMapPoint(pixels.x, pixels.y, coordinates.heading)
    end
end

-- Todo: the bounding coordinates and map pixel count should be parameterized.
function PixelsFromCoords(coords)

    local west = wMazeMapWinParent.cornerCoordinates.west;
    local north = wMazeMapWinParent.cornerCoordinates.north;
    local east = wMazeMapWinParent.cornerCoordinates.east;
    local south = wMazeMapWinParent.cornerCoordinates.south;

    local x = wMazeMapWinParent.mapWidth * (coords.longitude - west) / (east - west);
    local y = wMazeMapWinParent.mapHeight * (coords.latitude - north) / (south - north);
    return { x = x, y = y };
end

-- Todo: Make a library out of the "where am I" code?
-- You are on [EN-RP] Laurelin server 65 at r1 lx959 ly996 ox155.94 oy81.83 oz416.53 h87.2. Game timestamp 497716977.002.
-- You are on [EN-RP] Laurelin server 52 at r1 lx960 ly996 i5 ox3.41 oy82.72 oz416.53 h90.0. Game timestamp 497717344.548.
-- Ihr seid auf dem Server "[DE] Gwaihir" (27) in r1 lx952 ly997 ox2.36 oy118.58 oz414.44 h30.9. Spiel-Zeitstempel 422606916.679.
-- Ihr seid auf dem Server "[DE] Gwaihir" (28) in r1 lx331 ly1953 i23 ox72.54 oy28.97 oz0.05. Spiel-Zeitstempel 441604528.234.
local LOC_MESSAGES = {
    -- Needed for The Hedge Maze and Tanglecorn
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) i%d+ ox(%d+%.?%d*) oy(%d+%.?%d*) oz(%d+%.?%d*)',
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) i%d+ ox(%d+%.?%d*) oy(%d+%.?%d*) oz(%d+%.?%d*) h(%d+%.?%d*)',
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) ox(%d+%.?%d*) oy(%d+%.?%d*) oz(%d+%.?%d*)',
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) ox(%d+%.?%d*) oy(%d+%.?%d*) oz(%d+%.?%d*) h(%d+%.?%d*)',

    -- Other locations from Wapyoint, not likely to match:
	-- 'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) i%d+ cInside ox(%d+%.?%d*) oy(%d+%.?%d*) oz(%d+%.?%d*) h(%d+%.?%d*)',
	-- 'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) i%d+ cInside ox(%d+%.?%d*) oy(%d+%.?%d*) oz(%d+%.?%d*)',
	-- 'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) cInside ox(%d+%.?%d*) oy(%d+%.?%d*) oz(%d+%.?%d*) h(%d+%.?%d*)',
	-- 'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) cInside ox(%d+%.?%d*) oy(%d+%.?%d*) oz(%d+%.?%d*)'
};

function MazeMapParseChatLocation(message)
    for i, suffix in ipairs(LOC_MESSAGES) do
        local r, lx, ly, ox, oy, oz, h = message:match(suffix);
        if r ~= nil then

            h = h or 0; -- heading is not always included. Fill it in if missing.
            local x = (( math.floor( lx / 8 ) * 160 + tonum(ox) ) - 29360) / 200;
            local y = (( math.floor( ly / 8 ) * 160 + tonum(oy) ) - 24880) / 200;
            return { longitude = x, latitude = y, heading = h };
        end
    end
end

function round(num, idp)
    if idp and idp>0 then
        local mult = 10^idp
        return math.floor(num * mult + 0.5) / mult
    end
    return math.floor(num + 0.5)
end

-- a sample from shadowfax (german client):
-- Ihr seid auf dem Server "Shadowfax" (15) in r1 lx2000 ly168 i20 cInside ox-40.33 oy7.96 oz-224.99 h95.6. Spiel-Zeitstempel 53785058.704.
function tonum(val)
    if CLIENTLANG ~= 'ENGLISH' then
        return tonumber((string.gsub(val,"%.",",")))
    else
        return tonumber(val);
    end
end

-- End of "Where am I" code
