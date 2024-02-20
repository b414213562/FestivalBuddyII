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
import "CubePlugins.FestivalBuddyII.Tokens";
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

function UnloadReloader()
    Turbine.PluginManager.RefreshAvailablePlugins();

    ReloaderUnloader = Turbine.UI.Control();
    ReloaderUnloader:SetWantsUpdates( true );

    ReloaderUnloader.Update = function( sender, args )
        ReloaderUnloader:SetWantsUpdates( false );
        Turbine.PluginManager.RefreshAvailablePlugins();
        local loadedPlugins = Turbine.PluginManager.GetLoadedPlugins();

        for k,v in pairs(loadedPlugins) do
            if v.Name == "~Festival Buddy II Reloader" then
                Turbine.PluginManager.UnloadScriptState( 'FestivalBuddyReloader' );
            end
        end
    end
end

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

function LoadSettingsFileCharacter()
    -- SAVED SETTINGS --
    local SavedSettings = LoadFileIntoTable(
        Turbine.DataScope.Character,
        "FestivalBuddy_Settings",
        _LANG.ERRORS.LOAD.SETTINGS);
    SETTINGS = MergeDefaultIntoTable(SavedSettings, DEFAULT_SETTINGS);

    -- Assume the HUD is toggled to visible when the plugin is loaded.
    SETTINGS.SHOWSCREEN = true;

    -- Populate a global variable:
    SELECTEDFESTIVAL = SETTINGS.FESTIVAL;

    -- Currently Festival Buddy II doesn't provide an option for the user
    -- to modify this setting. But, the code in MinimizedIcon expects it to be there.
    -- Change this to true if you want to have to hold shift to move the minimize icon.
    SETTINGS.MOVE_ICON_REQUIRES_SHIFT = false;

    if (SETTINGS.SETTINGS_VERSION == nil) then
        SETTINGS.SETTINGS_VERSION = "v1.0";
    end

    if (SETTINGS.SETTINGS_VERSION == "v1.0") then
        SETTINGS["SELFESTIVAL"] = nil; -- obsolete setting
        SETTINGS["LANGUAGE"] = nil; -- no longer saving languge in settings as of 1.4.5.2.

        SETTINGS.SETTINGS_VERSION = "v1.1";
    end -- end 1.0 to 1.1 update

end

function LoadSettingsFileServer()
    -- SAVED SERVER SETTINGS --
    local serverSettings = LoadFileIntoTable(
            Turbine.DataScope.Server,
            "FestivalBuddy_ServerSettings",
            GetString(_LANG.ERRORS.LOAD.SETTINGS_SERVER));
    SETTINGS_SERVER = MergeDefaultIntoTable(serverSettings, DEFAULT_SETTINGS_SERVER);

    if (SETTINGS_SERVER.SETTINGS_SERVER_VERSION == nil) then
        SETTINGS_SERVER.SETTINGS_SERVER_VERSION = "v1.0";
    end
end

function LoadSettingsFileAccount()
    -- SAVED ACCOUNT SETTINGS --
    local accountSettings = LoadFileIntoTable(
        Turbine.DataScope.Account,
        "FestivalBuddy_AccountSettings",
        GetString(_LANG.ERRORS.LOAD.SETTINGS_ACCOUNT));
    SETTINGS_ACCOUNT = MergeDefaultIntoTable(accountSettings, DEFAULT_SETTINGS_ACCOUNT);

    if (SETTINGS_ACCOUNT.SETTINGS_ACCOUNT_VERSION == nil) then
        SETTINGS_ACCOUNT.SETTINGS_ACCOUNT_VERSION = "v1.0";
    end
end

function LoadServerWideCharacterData()
    -- SAVED CHARACTER DATA --

    local SavedCharData = {};

    -- Load the settings
    function GetSavedCharData()
        SavedCharData = PatchDataLoad(Turbine.DataScope.Server, "FestivalBuddy_CharData");
    end

    if not pcall(GetSavedCharData) then
        -- Loaded with errors
        SavedCharData = nil;
        Turbine.Shell.WriteLine(GetString(_LANG.ERRORS.LOAD.SETTINGS));
    end

    if (SavedCharData == nil) then
        SavedCharData = {};
    end

    -- Version nil covers anything before plugin version 2.0.5.
    if (SavedCharData.SAVED_CHAR_DATA_VERSION == nil) then
        -- Check the saved settings to make sure it is still compatible with newer updates, add in any missing default settings

        -- Update old format to new format
        for playerName,festivalsTable in pairs (SavedCharData) do
            if festivalsTable["Spring"] ~= nil then
                SavedCharData[playerName][1] = deepcopy(festivalsTable["Spring"]);
                festivalsTable["Spring"] = nil;
            end

            if festivalsTable["Harvestmath"] ~= nil then
                SavedCharData[playerName][3] = deepcopy(festivalsTable["Harvestmath"]);
                festivalsTable["Harvestmath"] = nil;
            end

            if festivalsTable["Yule"] ~= nil then
                SavedCharData[playerName][4] = deepcopy(festivalsTable["Yule"]);
                festivalsTable["Yule"] = nil;
            end

            -- Use _OLD_FESTIVAL_TOKEN_DATA in Tokens_v10_to_v11 to check the TOKEN data.
            import "CubePlugins.FestivalBuddyII.PriorSaveFormats.Tokens_v10_to_v11";

            for festivalID,dataCategory in pairs (festivalsTable) do
                if dataCategory.TOKENS ~= nil then
                    for k,v in pairs (dataCategory.TOKENS) do
                        if (not PriorSaveFormats._OLD_FESTIVAL_TOKEN_DATA[festivalID][k]) then
                            SavedCharData[playerName][festivalID].TOKENS[k] = nil;
                        end
                    end
                end
            end
        end

        -- Remove any session play characters
        -- Note: This should fix any existing session play characters in save files,
        -- and prevent new session plays from persisting.
        for playerName,_ in pairs(SavedCharData) do
            if (playerName:sub(1,1) == "~") then
                Turbine.Shell.WriteLine("Found a character with a leading ~: " .. playerName);

                SavedCharData[playerName] = nil;
            end
        end

        SavedCharData.SAVED_CHAR_DATA_VERSION = "v1.0";
    end -- end 1.0

    -- Version 1.1 introduced in plugin version 2.0.5.
    if (SavedCharData.SAVED_CHAR_DATA_VERSION == "v1.0") then
        Turbine.Shell.WriteLine("Updating 1.0 to 1.1");

        -- Nest characters under new table so that we can iterate through a table and only find characters.
        SavedCharData.CHARS = {};
        for playerName,festivalsTable in pairs (SavedCharData) do
            if (playerName ~= "SAVED_CHAR_DATA_VERSION" and
                playerName ~= "CHARS") then
                -- Moving data for playerName under CHARS
                SavedCharData.CHARS[playerName] = festivalsTable;
                SavedCharData[playerName] = nil;
            end
        end

        -- Change cooldowns keys from localized quest names to quest keys:
        -- For each player's festival data:
        for playerName,festivalsTable in pairs(SavedCharData.CHARS) do
            -- For each festival in the festival data:
            for festivalNumber, festivalData in pairs(festivalsTable) do
                -- Check the cooldowns for this festival of this character:
                local cooldowns = festivalData["COOLDOWNS"];

                if (cooldowns and next(cooldowns) ~= nil) then
                    local updatedCooldowns = {};

                    -- For each debuff listed:
                    for localizedDebuffName,cooldownValue in pairs(cooldowns) do
                        -- Convert to using debuff key instead of localized value:
                        local debuffKey = GetDebuffKeyFromLocalizedName(localizedDebuffName);

                        -- if the key is already in the cooldowns table
                        -- then prefer a non-zero number to a zero
                        -- and prefer a larger non-zero number to a smaller non-zero number
                        if (updatedCooldowns[debuffKey]) then
                            local keyValue = updatedCooldowns[debuffKey];

                            if (tonumber(cooldownValue) > tonumber(keyValue)) then
                                updatedCooldowns[debuffKey] = cooldownValue;
                            end
                        else
                            updatedCooldowns[debuffKey] = cooldownValue;
                        end
                    end

                    festivalData["COOLDOWNS"] = deepcopy(updatedCooldowns);
                end

            end
        end

        import "CubePlugins.FestivalBuddyII.PriorSaveFormats.Tokens_v10_to_v11";

        PriorSaveFormats.Update_tokens_from_v10_to_v11(SavedCharData.CHARS);


        SavedCharData.SAVED_CHAR_DATA_VERSION = "v1.1";
    end -- end 1.0 to 1.1 update

    _CHARDATA = deepcopy(SavedCharData);
end

---Gets the debuff key (e.g. "APPLEBOBBING") for a localized debuff name (e.g. "Apfeltauchen"). If no key is found, returns the original string instead.
---@param debuffNameToCheck string
---@return string
function GetDebuffKeyFromLocalizedName(debuffNameToCheck)
    -- Loop through all possible debuffs, checking for a match:
    for festivalNumber, festivalDebuffs in pairs(_LANG.DEBUFFS) do
        for debuffIndex, debuffData in pairs(festivalDebuffs) do
            for language, localizedDebuffName in pairs(debuffData.name) do
                if (debuffNameToCheck == localizedDebuffName) then
                    return debuffData.key;
                end
            end
        end
    end

    -- These aren't matching for some reason, handle them manually:
    if (debuffNameToCheck == "Chasse au tr#195##169#sor : Coffre" or
        debuffNameToCheck == "Chasse au trésor : Coffre") then
        return "THCHEST";
    elseif (debuffNameToCheck == "Tr#195##169#sor secret : Coffre" or
            debuffNameToCheck == "Trésor secret : Coffre") then
        return "SECRETREASURECHEST";
    elseif (debuffNameToCheck == "Chasse au tr#195##169#sor : Cassette" or
            debuffNameToCheck == "Chasse au trésor : Cassette") then
        return "THLOCKBOX";
    end

    -- If we didn't find a match, just return the original value:
    return debuffNameToCheck
end

function LoadSavedImageData()
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
end

function LoadData()
    ---------------------------------------------------------------------------------------------------------------------------------
    LoadSettingsFileCharacter();
    LoadSettingsFileServer();
    LoadSettingsFileAccount();
    ----------------------------------------------------------------------------------------------------------------------------------
    LoadServerWideCharacterData();
    ----------------------------------------------------------------------------------------------------------------------------------
    LoadSavedImageData();
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
UnloadReloader();
LoadData();
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
