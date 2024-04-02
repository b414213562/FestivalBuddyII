
-- Any numbers in IN_PROGRESS_QUESTS are the festival number in this list:
_V10_FESTIVAL_DATA = {
    [1] = "SPRING";
    [2] = "SUMMER"; -- Any of these should be changed to "FARMERSFAIRE" instead of "SUMMER"
    [3] = "HARVESTMATH";
    [4] = "YULE";
    [5] = "ANNIVERSARY";
    [6] = "FARMERSFAIRE";
    [7] = "HOBNANIGANS";
    [8] = "MIDSUMMER";
    [9] = "ILAA";
    [10] = "GENERIC"; -- Generated during the v1.0 to v2.0 upgrade
};

function Update_FestivalBuddySettings_from_v20_to_v21(settings)

    -- For any IN_PROGRESS_QUESTS entries that are [questkey] = festivalNumber
    -- Convert to [questkey] = festivalkey:
    if (settings.IN_PROGRESS_QUESTS == nil) then settings.IN_PROGRESS_QUESTS = {}; end

    for questKey,festivalKey in pairs (settings.IN_PROGRESS_QUESTS) do
        if (type(festivalKey) == "number") then
            if (festivalKey == 2) then festivalKey = 6; end
            settings.IN_PROGRESS_QUESTS[questKey] = _V10_FESTIVAL_DATA[festivalKey];
        end
    end

    -- Delete any entry that doesn't correpsond to a backgroundable quest:
    local entriesToDelete = {};
    for questKey,festivalKey in pairs (settings.IN_PROGRESS_QUESTS) do
        local isQuestBackgroundable = BACKROUNDABLE_QUESTS[questKey];

        if (not isQuestBackgroundable) then
            table.insert(entriesToDelete, questKey);
        end
    end
    for index, questKey in pairs(entriesToDelete) do
        settings.IN_PROGRESS_QUESTS[questKey] = nil;
    end

end
