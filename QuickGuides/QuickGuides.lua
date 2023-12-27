function AddNextQuickguideValue(table, index, value)
    table[value] = index;
    return index + 1;
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