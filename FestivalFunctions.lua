
-- General functions specific to Festival Buddy

-- THIS FUNCTION IS CURRENTLY NOT USED.

function GetDebuffs()

    local EFFECTSCOUNT = EFFECTS:GetCount();

    for i=1, EFFECTSCOUNT do

        local CUREFFECT = EFFECTS:Get(i);
        local CUREFFECTNAME = CUREFFECT:GetName();

        for k,v in ipairs (_LANG.DEBUFFS[SELECTEDFESTIVAL]) do
            if GetString(v.name) == CUREFFECTNAME then

                local CDREMAINING = CUREFFECT:GetDuration() - (Turbine.Engine.GetGameTime() - CUREFFECT:GetStartTime());

                local TIME = ConvertTime(CDREMAINING);

                --Debug(CUREFFECT:GetName() .. " = " .. TIME.DAYS .. ":" .. TIME.HOURS .. ":" .. TIME.MINUTES .. ":" .. TIME.SECONDS);

                break;
            end

        end

    end

end

function ClearSelectedQuest()
    lblQuestGuide:SetText("");
    ddQuests:SetText("");
    SELECTEDQUEST = "";
    SELECTEDQUESTKEY = "";
    SETTINGS.QUEST = nil;
    CloseHelperWindows();
    backgroundCheckbox:SetVisible(false);
    autoOpenCheckbox:SetVisible(false);
    questMapImage:SetVisible(false);
end

function GetFestivalNumberAndQuestKeyFromNewQuest(cMessage)
    -- loop through quest names to see if there's a match in the table
    for festivalNumber in pairs (_LANG.FESTIVALS) do
        for k,v in pairs (_LANG.QUESTS[festivalNumber]) do

            local starting_character = 1;
            local use_plain_text_find = true;

            local questToCheck = GetString(v);
            local findResult = string.find(cMessage, questToCheck, starting_character, use_plain_text_find);

            if findResult then
                return festivalNumber, k;
            end
        end
    end
    return nil, nil;
end

function FilterNewQuests(cMessage)
    local festivalNumber, questKey = GetFestivalNumberAndQuestKeyFromNewQuest(cMessage);
    if (questKey) then
        RefreshFestival(festivalNumber);
        RefreshQuestGuide(GetString(_LANG.QUESTS[festivalNumber][questKey]));
        SETTINGS.IN_PROGRESS_QUESTS[questKey] = festivalNumber;
    end

    QuickGuideWinHandleQuestAccept(cMessage);
end

function FindSelectedQuestInChatText(cMessage)
    local starting_character = 1;
    local use_plain_text_find = true;
    local findResult = string.find(
        cMessage,
        SELECTEDQUEST,
        starting_character,
        use_plain_text_find);
    return findResult;
end

function CheckForInProgressThatIsCompletedOrFailed(cMessage)
    local starting_character = 1;
    local use_plain_text_find = true;

    -- Stop tracking in-progress quests even if it's not the selected quest:
    for questKey,festivalNumber in pairs (SETTINGS.IN_PROGRESS_QUESTS) do
        local questToCheck = GetString(_LANG.QUESTS[festivalNumber][questKey]);

        local findResult = string.find(cMessage, questToCheck, starting_character, use_plain_text_find);
        if (findResult) then
            SETTINGS.IN_PROGRESS_QUESTS[questKey] = nil;
        end
    end
end

function FilterCompletedQuests(cMessage)
    if FindSelectedQuestInChatText(cMessage) then
        ClearSelectedQuest();
    end

    QuickGuideWinHandleQuestCompleted(cMessage);
end

function FilterFailedQuests(cMessage)
    if FindSelectedQuestInChatText(cMessage) then
        ClearSelectedQuest();
    end
end

-- Inspired by this answer: https://stackoverflow.com/a/2705804
function GetNumberOfInProgressQuests()
    local count = 0;
    for _ in pairs(SETTINGS.IN_PROGRESS_QUESTS) do count = count + 1; end
    return count;
end

function CheckCharData()

    -- This function checks if there is an entry in the _CHARDATA table, if not then it creates it.
    local CHARNAME = MYCHAR:GetName();

    if type (_CHARDATA[CHARNAME]) ~= 'table' then _CHARDATA[CHARNAME] = {} end;

    CheckFestivalData(_CHARDATA[CHARNAME]);

end


function CheckFestivalData(_TABLE)

    if type (_TABLE) ~= 'table' then return end;

    -- Checks if the current festival exists in the characters data, if so then it adds any newer fields that may have been
    -- added in newer updates whilst retaining the values of old values that have been loaded.
    for e,f in pairs(_LANG.FESTIVALS) do

        if _TABLE[e] == nil then _TABLE[e] = {} end;


        -- COOLDOWNS ---
        if _TABLE[e]["COOLDOWNS"] == nil then _TABLE[e]["COOLDOWNS"] = {} end;

        local _CDTABLE = _TABLE[e]["COOLDOWNS"];

        for k,v in ipairs (_LANG.DEBUFFS[e]) do
            if _CDTABLE[v.name[CLIENTLANG]] == nil then
                _CDTABLE[v.name[CLIENTLANG]] = 0;
            end
        end


        -- TOKENS ---
        if _TABLE[e]["TOKENS"] == nil then _TABLE[e]["TOKENS"] = {} end;

        for k,v in pairs (_LANG.TOKENS[e]) do
            if _TABLE[e]["TOKENS"][k] == nil then
                _TABLE[e]["TOKENS"][k] = 0;
            end
        end

    end

end


function GetAltNames()

    -- This function gets the names of the alts which have data stored and builds the names into a returned table.
    local _ALTS = {};

    for k,v in pairs (_CHARDATA) do
        if k ~= MYCHAR:GetName() then
            table.insert(_ALTS,k);
        end
    end

    return _ALTS;
end

