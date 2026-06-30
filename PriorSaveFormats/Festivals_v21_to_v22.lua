
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
                -- Now that the old settings are saved off, start from scratch,
                settings.QUICK_GUIDE_QUESTS_TO_USE[festival][guideId] = {};
                -- Copy any defaulted settings in:
                if (oldSettings[guideId]) then
                    settings.QUICK_GUIDE_QUESTS_TO_USE[festival][guideId] = deepcopy(oldSettings[guideId]);
                end
            end

            -- Then overwrite with any previously-existing values:
            for questName, value in pairs(oldSettings) do
                if (type(value) == "boolean") then
                    local index = 1;
                    settings.QUICK_GUIDE_QUESTS_TO_USE[festival][index][questName] = value;

                    -- Duplicate the wrapper to each of Minas Tirith and Furtherholm:
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
