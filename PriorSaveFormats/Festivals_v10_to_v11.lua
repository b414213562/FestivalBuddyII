
-- Prior to this update, the festival number also controlled the UI display order.
_V10_FESTIVAL_DATA = {
    [1] = "SPRING";
    [2] = "SUMMER";
    [3] = "HARVESTMATH";
    [4] = "YULE";
    [5] = "ANNIVERSARY";
    [6] = "FARMERSFAIRE";
    [7] = "HOBNANIGANS";
    [8] = "MIDSUMMER";
    [9] = "ILAA";
};

function Update_FestivalBuddy_CharData_Festivals_from_v10_to_v11(charsTable)
    -- For each player's festival data:
    for playerName,festivalsTable in pairs(charsTable) do
        -- For each festival in the festival data:
        local newFESTIVALS = { };
        for festivalNumber, festivalData in pairs(festivalsTable) do
            -- Fix up the TOKENS table:

            local festivalName = _V10_FESTIVAL_DATA[festivalNumber];
            newFESTIVALS[festivalName] = festivalData;
        end
        charsTable[playerName] = newFESTIVALS;
    end

end

function Update_FestivalBuddySettings_Festivals_from_v10_to_v11(settings)

    local selectedFestivalName = _V10_FESTIVAL_DATA[settings["FESTIVAL"]];
    settings["FESTIVAL"] = selectedFestivalName;

    -- Update the numeric festival indicies in QUICK_GUIDE_QUESTS_TO_USE to be strings:
    local newQuickGuidesToUse = { };
    for festivalIndex, festivalData in pairs(settings.QUICK_GUIDE_QUESTS_TO_USE) do
        local festivalName = _V10_FESTIVAL_DATA[festivalIndex];
        if (festivalName) then
            -- This needs to be converted
            newQuickGuidesToUse[festivalName] = festivalData;
        else
            newQuickGuidesToUse[festivalIndex] = festivalData;
        end
    end
    settings.QUICK_GUIDE_QUESTS_TO_USE = newQuickGuidesToUse;

    -- Update the numeric festival indicies in QUICK_GUIDE_PROGRESS to be strings:
    local newQuickGuideProgress = { };
    for festivalIndex, festivalData in pairs(settings.QUICK_GUIDE_PROGRESS) do
        local festivalName = _V10_FESTIVAL_DATA[festivalIndex];
        if (festivalName) then
            newQuickGuideProgress[festivalName] = festivalData;
        else
            newQuickGuideProgress[festivalIndex] = festivalData;
        end
    end
    settings.QUICK_GUIDE_PROGRESS = newQuickGuideProgress;

end
