function AddNextQuickguideValue(table, index, value)
    table[value] = index;
    return index + 1;
end

_G.AddNextQuickguideValue = AddNextQuickguideValue;

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_RESET_TEXT = "";
local language = Turbine.Engine:GetLanguage();
if (language == Turbine.Language.French) then
    _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_RESET_TEXT = "Reset this quick guide";
elseif (language == Turbine.Language.German) then
    _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_RESET_TEXT = "Reset this quick guide";
else
    _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_RESET_TEXT = "Reset this quick guide";
end

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE = {};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS = {};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS = {};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS = {};
