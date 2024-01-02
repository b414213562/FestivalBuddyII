-- Turbine Imports..
import "Turbine";
import "Turbine.Gameplay";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "CubePlugins.FestivalBuddyII.TurbineFiles.Class";


-- Plugin Imports..
import "CubePlugins.FestivalBuddyII.Libraries.VindarPatch";
import "CubePlugins.FestivalBuddyII.Libraries.DisplaySizeListener";
import "CubePlugins.FestivalBuddyII.Libraries.Onscreen";
import "CubePlugins.FestivalBuddyII.Libraries.DropDown";
import "CubePlugins.FestivalBuddyII.Libraries.Alert";
import "CubePlugins.FestivalBuddyII.Libraries.CallBack";
import "CubePlugins.FestivalBuddyII.Libraries.DragBar";
import "CubePlugins.FestivalBuddyII.GeneralFunctions";
import "CubePlugins.FestivalBuddyII.TimeFunctions";
import "CubePlugins.FestivalBuddyII.Strings";
import "CubePlugins.FestivalBuddyII.Images";
import "CubePlugins.FestivalBuddyII.QuestStrings";
import "CubePlugins.FestivalBuddyII.FestivalFunctions";
import "CubePlugins.FestivalBuddyII.Globals";
--import "CubePlugins.FestivalBuddyII.Libraries.Tooltip";
import "CubePlugins.FestivalBuddyII.ChatLogger";
import "CubePlugins.FestivalBuddyII.BarterItems";
import "CubePlugins.FestivalBuddyII.TimerControl";
import "CubePlugins.FestivalBuddyII.QuickGuides.QuickGuides";
import "CubePlugins.FestivalBuddyII.QuickGuides.InnLeagueAleAssociation.QuickGuideStrings_InnLeagueAleAssociation";
import "CubePlugins.FestivalBuddyII.QuickGuides.Midsummer.QuickGuideStrings_Midsummer";
import "CubePlugins.FestivalBuddyII.QuickGuides.Yule.QuickGuideStrings_Yule";

-- Windows --
import "CubePlugins.FestivalBuddyII.Libraries.ColorPicker";
import "CubePlugins.FestivalBuddyII.OptionsWin";
import "CubePlugins.FestivalBuddyII.BarterWin";
import "CubePlugins.FestivalBuddyII.MainWin";
import "CubePlugins.FestivalBuddyII.AltWin";
import "CubePlugins.FestivalBuddyII.HarvestmathMazeIdWin";
import "CubePlugins.FestivalBuddyII.MazeMapWin";
import "CubePlugins.FestivalBuddyII.FireworksEventQuickslotWin";
import "CubePlugins.FestivalBuddyII.HobnanigansWin";
import "CubePlugins.FestivalBuddyII.QuickGuideWin";
import "CubePlugins.FestivalBuddyII.MinimizedIcon";


import "CubePlugins.FestivalBuddyII.Dance";


-- Other imports --
import "CubePlugins.FestivalBuddyII.Commands";


-----------------------------------------------------------------------------------------------------------

function saveData()

    -- Store the settings table.
    PatchDataSave(Turbine.DataScope.Character, "FestivalBuddy_Settings", SETTINGS);
    PatchDataSave(Turbine.DataScope.Server, "FestivalBuddy_CharData", _CHARDATA);
    PatchDataSave(Turbine.DataScope.Account, "FestivalBuddy_ImageIDs", _SAVEDIMAGES);
    PatchDataSave(Turbine.DataScope.Server, "FestivalBuddy_ServerSettings", SETTINGS_SERVER);
    PatchDataSave(Turbine.DataScope.Account, "FestivalBuddy_AccountSettings", SETTINGS_ACCOUNT);
end

function LoadFileIntoTable(scope, filename, error)
    local loadedTable = {};

    -- Load the settings
    function GetSavedSettings()
        loadedTable = PatchDataLoad(scope, filename);
    end

    if not pcall(GetSavedSettings) then
        -- Loaded with errors
        Turbine.Shell.WriteLine(error);
        loadedTable = nil;
    end

    return loadedTable;
end

function MergeDefaultIntoTable(loadedTable, defaultTable)
    -- Check the saved settings to make sure it is still compatible with newer updates, add in any missing default settings
    local mergedTable = {};

    if type(loadedTable) == 'table' then
        local defaultsCopy = {};
        defaultsCopy = deepcopy(defaultTable);
        mergedTable = mergeTables(defaultsCopy,loadedTable);
    else
        mergedTable = deepcopy(defaultTable);
    end

    return mergedTable;
end

function loadData()

    ---------------------------------------------------------------------------------------------------------------------------------

    -- SAVED SETTINGS --
    local SavedSettings = LoadFileIntoTable(
        Turbine.DataScope.Character,
        "FestivalBuddy_Settings",
        _LANG.ERRORS.LOAD.SETTINGS);
    SETTINGS = MergeDefaultIntoTable(SavedSettings, DEFAULT_SETTINGS);

    -- Assume the HUD is toggled to visible when the plugin is loaded.
    SETTINGS.SHOWSCREEN = true;

    -- SAVED SERVER SETTINGS --
    local serverSettings = LoadFileIntoTable(
            Turbine.DataScope.Server,
            "FestivalBuddy_ServerSettings",
            GetString(_LANG.ERRORS.LOAD.SETTINGS_SERVER));
    SETTINGS_SERVER = MergeDefaultIntoTable(serverSettings, DEFAULT_SETTINGS_SERVER);

    -- SAVED ACCOUNT SETTINGS --
    local accountSettings = LoadFileIntoTable(
        Turbine.DataScope.Account,
        "FestivalBuddy_AccountSettings",
        GetString(_LANG.ERRORS.LOAD.SETTINGS_ACCOUNT));
    SETTINGS_ACCOUNT = MergeDefaultIntoTable(accountSettings, DEFAULT_SETTINGS_ACCOUNT);

    SELECTEDFESTIVAL = SETTINGS.FESTIVAL;
    SETTINGS["SELFESTIVAL"] = nil; -- obsolete setting
    SETTINGS["LANGUAGE"] = nil; -- no longer saving languge in settings as of 1.4.5.2.

    SETTINGS.MOVE_ICON_REQUIRES_SHIFT = false;

    ----------------------------------------------------------------------------------------------------------------------------------


    -- SAVED CHARACTER DATA --

    local SavedCharData = {};

    -- Load the settings
    function GetSavedCharData()
        SavedCharData = PatchDataLoad(Turbine.DataScope.Server, "FestivalBuddy_CharData");
    end

    if pcall(GetSavedCharData) then
        -- Loaded without error
        SavedCharData = PatchDataLoad(Turbine.DataScope.Server, "FestivalBuddy_CharData");
    else
        -- Loaded with errors
        SavedCharData = nil;
        Turbine.Shell.WriteLine(GetString(_LANG.ERRORS.LOAD.SETTINGS));
    end


    -- Check the saved settings to make sure it is still compatible with newer updates, add in any missing default settings
    if type(SavedCharData) == 'table' then
        _CHARDATA = deepcopy(SavedCharData);
    end

    -- Update old format to new format
    for playerName,festivalsTable in pairs (_CHARDATA) do
        if festivalsTable["Spring"] ~= nil then
            _CHARDATA[playerName][1] = deepcopy(festivalsTable["Spring"]);
            festivalsTable["Spring"] = nil;
        end

        if festivalsTable["Harvestmath"] ~= nil then
            _CHARDATA[playerName][3] = deepcopy(festivalsTable["Harvestmath"]);
            festivalsTable["Harvestmath"] = nil;
        end

        if festivalsTable["Yule"] ~= nil then
            _CHARDATA[playerName][4] = deepcopy(festivalsTable["Yule"]);
            festivalsTable["Yule"] = nil;
        end

        for festivalID,dataCategory in pairs (festivalsTable) do
            if dataCategory.TOKENS ~= nil then
                for k,v in pairs (dataCategory.TOKENS) do
                    if _LANG.TOKENS[festivalID][k] == nil then _CHARDATA[playerName][festivalID].TOKENS[k] = nil end;
                end
            end
        end

    end

    -- Remove any session play characters
    -- Note: This should fix any existing session play characters in save files,
    -- and prevent new session plays from persisting.
    for playerName,_ in pairs(_CHARDATA) do
        if (playerName:sub(1,1) == "~") then
            Turbine.Shell.WriteLine("Found a character with a leading ~: " .. playerName);

            _CHARDATA[playerName] = nil;
        end
    end

    ----------------------------------------------------------------------------------------------------------------------------------

    -- SAVED IMAGE IDs --

    local SavedImageData = {};

    -- Load the settings
    function GetSavedImageData()
        SavedImageData = PatchDataLoad(Turbine.DataScope.Account, "FestivalBuddy_ImageIDs");
    end

    if pcall(GetSavedImageData) then
        -- Loaded without error
        SavedImageData = PatchDataLoad(Turbine.DataScope.Account, "FestivalBuddy_ImageIDs");
    else
        -- Loaded with errors
        SavedImageData = nil;
        Turbine.Shell.WriteLine(GetString(_LANG.ERRORS.LOAD.SETTINGS_ACCOUNT));
    end


    -- Check the saved settings to make sure it is still compatible with newer updates, add in any missing default settings
    if type(SavedImageData) == 'table' then

        _SAVEDIMAGES = deepcopy(SavedImageData);

    end

    ----------------------------------------------------------------------------------------------------------------------------------


end


function DrawWindows()

    DrawOptionsWin();
    DrawHobnanigansWin();
    DrawFireworksEventQuickslotWin();
    DrawDanceWin();
    DrawBarterWin();
    DrawHarvestmathMazeIdWin();
    DrawMazeMapWin();
    DrawMainWin();
    DrawAltWin();
    DrawQuickGuideWin();

end


Turbine.Plugin.Unload = function (sender, args)
    -- Save the data when the plugin unloads.
    saveData();
end


-- Initiate load sequence
loadData();
CheckCharData();
DrawWindows();
InitiateChatLogger();
RegisterCommands();
RefreshTokenView();

-- Load text
print("Loaded Festival Buddy II v" .. Plugins[PLUGIN_NAME]:GetVersion() .. " by Cube");
if wMainWinParent:IsVisible() == false then
    print(GetString(_LANG.OTHER.COMMAND));
end
