
_G.DefaultHighlightColors = {
    ["LOCATION"]    = { R = 0xFF; G = 0x77; B = 0x77; };
    ["QUEST"]       = { R = 0x77; G = 0x77; B = 0xFF; };
    ["NPC"]         = { R = 0x77; G = 0xFF; B = 0x77; };
    ["QUEST_ITEM"]  = { R = 0xCC; G = 0xCC; B = 0xCC; };
}

function AddNextQuickguideValue(table, index, value)
    table[value] = index;
    return index + 1;
end

---Check if the color for the given setting is in use.
---@param colorSetting string
---@return boolean 
function IsUseColor(colorSetting)
    local result = false;
    if (SETTINGS_ACCOUNT and
        SETTINGS_ACCOUNT.QUICK_GUIDE) then

        local useColors = SETTINGS_ACCOUNT.QUICK_GUIDE.USE_COLORS;
        local useColor = SETTINGS_ACCOUNT.QUICK_GUIDE.COLORS[colorSetting].USE

        result = useColors and useColor;
    end
    return result;
end

---Get the color for a particular setting
---@param colorSetting string
---@return string
function GetColor(colorSetting)
    local setting = SETTINGS_ACCOUNT.QUICK_GUIDE.COLORS[colorSetting];
    local highlightColor = string.format("#%02x%02x%02x", setting.R, setting.G, setting.B)
    return highlightColor;
end

---Highlight text with the appropriate color, if turned on.
---@param text string
---@param colorSetting string
---@return string
function Highlight(text, colorSetting)
    if (IsUseColor(colorSetting)) then
        local highlightColor = GetColor(colorSetting);
        return "<rgb=" .. highlightColor .. ">" .. text .. "</rgb>";
    else
        -- This is where we could surround the text with quotes or some other way to mark it.
        -- For now, do nothing.
        return text;
    end
end

--- Highlight a location with the current color, if turned on.
---@param location string
---@return string
function _G.HighlightLocation(location)
    return Highlight(location, "LOCATION");
end

---Highlight a quest with the current color, if turned on.
---@param quest string
---@return string
function _G.HighlightQuest(quest)
    return Highlight(quest, "QUEST");
end

---Highlight an NPC with the current color, if turned on.
---@param npc string
---@return string
function _G.HighlightNpc(npc)
    return Highlight(npc, "NPC");
end

---Highlight a Quest Item with the current color, if turned on.
---@param questItem string
---@return string
function _G.HighlightQuestItem(questItem)
    return Highlight(questItem, "QUEST_ITEM");
end

QUICK_GUIDES_FORMAT_STRINGS = {
    ["TravelTurnInTo"] = { ["ENGLISH"] = "Travel to %s, turn in %s to %s"; ["GERMAN"] = "Reise nach %s, gib %s bei %s ab"; };
    ["TurnInTo"] = { ["ENGLISH"] = "Turn in %s to %s"; ["GERMAN"] = "Gib %s bei %s ab"; };
    ["Continue"] = { ["ENGLISH"] = "%s: %s"; };
    ["ContinueWith"] = { ["ENGLISH"] = "%s: Continue quest with %s"; ["GERMAN"] = "%s: Setze Aufgabe bei %s fort"; }; -- or "Setze Aufgabe %s bei %s fort"
    ["CollectFromNpc"] = { ["ENGLISH"] = "Collect %s from %s"; ["GERMAN"] = "Besorge %s von %s"; };
    ["CollectFromLocation"] = { ["ENGLISH"] = "Collect %s from %s"; ["GERMAN"] = "Besorge %s aus %s"; };
    ["TravelCollectFrom"] = { ["ENGLISH"] = "Travel to %s, collect %s from %s"; ["GERMAN"] = "Reise nach %s, besorge %s von %s"; };
    ["TakeFrom"] = { ["ENGLISH"] = "Take %s from %s"; ["GERMAN"] = "Nimm %s bei %s an"; };
}

---Helper for travelling to an objective, turning in a quest to an NPC.
---@param location string
---@param quest string
---@param npc string
---@return string
function _G.TravelTurnInTo(location, quest, npc)
    return string.format(GetString(QUICK_GUIDES_FORMAT_STRINGS.TravelTurnInTo), HighlightLocation(location), HighlightQuest(quest), HighlightNpc(npc));
end

---Helper for turning in a quest to an NPC
---@param quest string
---@param npc string
---@return string
function _G.TurnInTo(quest, npc)
    return string.format(GetString(QUICK_GUIDES_FORMAT_STRINGS.TurnInTo), HighlightQuest(quest), HighlightNpc(npc));
end

---Helper for continuing a quest with an action
---@param quest string
---@param objective string
---@return string
function _G.Continue(quest, objective)
    return string.format(GetString(QUICK_GUIDES_FORMAT_STRINGS.Continue), HighlightQuest(quest), objective);
end

---Helper for continuing a quest with an NPC
---@param quest string
---@param npc string
---@return string
function _G.ContinueWith(quest, npc)
    return string.format(GetString(QUICK_GUIDES_FORMAT_STRINGS.ContinueWith), HighlightQuest(quest), HighlightNpc(npc));
end

---Helper for collecting a quest item from an NPC
---@param questItem string
---@param npc string
---@return string
function _G.CollectFromNpc(questItem, npc)
    return string.format(GetString(QUICK_GUIDES_FORMAT_STRINGS.CollectFromNpc), HighlightQuestItem(questItem), HighlightNpc(npc));
end

---Helper for collecting a quest item from a location
---@param questItem string
---@param location string
---@return string
function _G.CollectFromLocation(questItem, location)
    return string.format(GetString(QUICK_GUIDES_FORMAT_STRINGS.CollectFromLocation), HighlightQuestItem(questItem), HighlightLocation(location));
end

---Helper for travelling to a location to collecte a quest item from an NPC
---@param location string
---@param questItem string
---@param npc string
---@return string
function _G.TravelCollectFrom(location, questItem, npc)
    return string.format(GetString(QUICK_GUIDES_FORMAT_STRINGS.TravelCollectFrom), HighlightLocation(location), HighlightQuestItem(questItem), HighlightNpc(npc));
end

---Helper for taking a quest from an NPC
---@param quest string
---@param npc string
---@return string
function _G.TakeFrom(quest, npc)
    return string.format(GetString(QUICK_GUIDES_FORMAT_STRINGS.TakeFrom), HighlightQuest(quest), HighlightNpc(npc));
end

_G.AddNextQuickguideValue = AddNextQuickguideValue;

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_INDICIES = {};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS = {};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CHAINS = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CHAIN_LOOKUP = {};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS = {};