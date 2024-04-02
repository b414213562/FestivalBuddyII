
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

    if (settings.IN_PROGRESS_QUESTS == nil) then settings.IN_PROGRESS_QUESTS = {}; end
    -- Loop through IN_PROGRESS_QUESTS and do the following:

    -- Delete any entry that doesn't correspond to a backgroundable quest.
    -- For any IN_PROGRESS_QUESTS entries that are [questkey] = festivalNumber,
    --     Convert to [questkey] = festivalkey:
    --     Note: This probably only applies to the developer's files, as many got a partial upgrade.
    for questKey,festivalKey in pairs (settings.IN_PROGRESS_QUESTS) do
        local isQuestBackgroundable = BACKROUNDABLE_QUESTS[questKey];

        -- If it's not backgroundable, we don't want it in IN_PROGRESS_QUESTS
        if (not isQuestBackgroundable) then
            settings.IN_PROGRESS_QUESTS[questKey] = nil;
        else
            -- If it is, double-check that the number-to-festival conversion happened,
            -- and that we don't have a rogue SUMMER reference.
            if (type(festivalKey) == "number") then
                if (festivalKey == 2) then festivalKey = 6; end
                settings.IN_PROGRESS_QUESTS[questKey] = _V10_FESTIVAL_DATA[festivalKey];
            elseif (festivalKey == "SUMMER") then
                settings.IN_PROGRESS_QUESTS[questKey] = "FARMERSFAIRE";
            end
        end
    end

end
