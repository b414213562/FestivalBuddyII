-- Yule Quest Indexes:

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_INDICIES[YULE] = {};
QG_YULE_INDEX = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_INDICIES[YULE];

local index = 1;
index = AddNextQuickguideValue(QG_YULE_INDEX, index, "IN_THE_SPIRIT_OF_YULE_PICKUP");
index = AddNextQuickguideValue(QG_YULE_INDEX, index, "IN_THE_SPIRIT_OF_YULE_END");

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CHAINS[YULE] = {
    ["IN_THE_SPIRIT_OF_YULE"] = {
        [QG_YULE_INDEX.IN_THE_SPIRIT_OF_YULE_END] = true;
        [QG_YULE_INDEX.IN_THE_SPIRIT_OF_YULE_PICKUP] = true;
    };

};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CHAIN_LOOKUP[YULE] = {
    [QG_YULE_INDEX.IN_THE_SPIRIT_OF_YULE_END] = "IN_THE_SPIRIT_OF_YULE";
    [QG_YULE_INDEX.IN_THE_SPIRIT_OF_YULE_PICKUP] = "IN_THE_SPIRIT_OF_YULE";
};

local language = Turbine.Engine:GetLanguage();
if (language == Turbine.Language.French) then
    import "CubePlugins.FestivalBuddyII.QuickGuides.Yule.QuickGuideStrings_YuleFR";
elseif (language == Turbine.Language.German) then
    import "CubePlugins.FestivalBuddyII.QuickGuides.Yule.QuickGuideStrings_YuleDE";
else
    import "CubePlugins.FestivalBuddyII.QuickGuides.Yule.QuickGuideStrings_YuleEN";
end