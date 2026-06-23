-- The QUEST_LOOKUP logic is only needed for my test characters

QUEST_LOOKUP = {
    ["MIDSUMMER"] = {
        ["A_CURE_FOR_ALL_ILLS"] = 1;
        ["AIDING_THE_STABLE_HANDS"] = 1;
        ["ARRANGING_ARRANGEMENTS"] = 1;
        ["ARTISTIC_DIRECTION"] = 1;
        ["FLORAL_CROWNS"] = 1;
        ["GROWING_PAINS"] = 1;
        ["HONOURING_HEALERS"] = 1;
        ["IN_CELEBRATION_OF_MIDSUMMER"] = 1;
        ["LOVE_IS_IN_THE_AIR"] = 1;
        ["SOMETHING_FLORAL"] = 1;
        ["SOMETHING_MISPLACED"] = 1;
        ["SWEET_TREATS"] = 1;
        ["TASTY_MORSELS"] = 1;
        ["TO_THE_LAST_DROP"] = 1;
        ["TOSS_A_COIN"] = 1;
        ["UNHELPFUL_HOUNDS"] = 1;
        ["WEDDING_SUPPLIES"] = 1;
        ["WHAT_ALES_YOU"] = 1;

        ["HOUSEKEEPING"] = 2;
        ["TIDAL_TREASURES"] = 2;
        ["ASSISTING_THE_COOK"] = 2;
        ["BUILDING_CASTLES"] = 2;
        ["FISHING_FOR_ADVICE"] = 2;
        ["OFFERING_TO_HELP"] = 2;
        ["SEARCHING_FOR_SWIMMING_SPOTS"] = 2;
        ["A_FLOCK_OF_SEAGULLS"] = 2;
        ["CAT_CONUNDRUM"] = 2;
        ["EYESORES_DRIFTED_ASHORE"] = 2;
        ["LETS_GO_FLY_A_KITE"] = 2;
    };
};

function Update_FestivalBuddySettings_from_v21_to_v22(settings)
    -- Changed quick guide storage from one-guide-per-festival to multiple.
    -- Need to convert any existing quick guide save data:

    -- Update options:
    for festival, festivalSettings in pairs(settings.QUICK_GUIDE_QUESTS_TO_USE) do
        local count = 0;
        for k,v in pairs(settings.QUICK_GUIDE_QUESTS_TO_USE[festival]) do
            count = count + 1;
        end
        -- The old system had a number of quests for each quick guide. However,
        -- if the save file is missing the process of creating it ends up coming through this function.
        -- (Maybe fix that later?)
        -- Only do the following logic if it looks like the old system instead of quests per quick guide per festival.
        if (count > MAX_QUICK_GUIDES) then
            local oldSettings = deepcopy(settings.QUICK_GUIDE_QUESTS_TO_USE[festival]);
            settings.QUICK_GUIDE_QUESTS_TO_USE[festival] = {};

            for guideId, guideName in ipairs(_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[festival]) do
                settings.QUICK_GUIDE_QUESTS_TO_USE[festival][guideId] = {};
            end

            for questName, value in pairs(oldSettings) do
                if (type(value) == "boolean") then
                    local index = 1;
                    if (festival == MIDSUMMER) then
                        index = QUEST_LOOKUP.MIDSUMMER[questName];
                        if (index == 1) then value = true; end
                    end
                    settings.QUICK_GUIDE_QUESTS_TO_USE[festival][index][questName] = value;
                    if (questName == "IN_CELEBRATION_OF_MIDSUMMER") then
                        settings.QUICK_GUIDE_QUESTS_TO_USE[festival][1][questName] = value;
                        settings.QUICK_GUIDE_QUESTS_TO_USE[festival][2][questName] = value;
                    end
                end
            end
        end
    end

    -- Update progress:
    for festival, progress in pairs(settings.QUICK_GUIDE_PROGRESS) do
        local oldProgress = deepcopy(settings.QUICK_GUIDE_PROGRESS[festival]);
        settings.QUICK_GUIDE_PROGRESS[festival] = {};

        for guideId, guideName in ipairs(_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[festival]) do
            settings.QUICK_GUIDE_PROGRESS[festival][guideId] = {};
        end
        settings.QUICK_GUIDE_PROGRESS[festival][1] = {};

        for quickGuideEntryId, value in pairs(oldProgress) do
            if (type(value) == "boolean") then
                settings.QUICK_GUIDE_PROGRESS[festival][1][quickGuideEntryId] = value;
            end
        end

    end


end
