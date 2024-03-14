
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

function GetFestivalKeyAndQuestKeyFromNewQuest(cMessage)
    -- loop through quest names to see if there's a match in the table
    for festivalKey in pairs (_LANG.FESTIVALS) do
        for questKey,questNames in pairs (_LANG.QUESTS[festivalKey]) do

            local starting_character = 1;
            local use_plain_text_find = true;

            local questToCheck = GetString(questNames);
            local findResult = string.find(cMessage, questToCheck, starting_character, use_plain_text_find);

            if findResult then
                return festivalKey, questKey;
            end
        end
    end
    return nil, nil;
end

function FilterNewQuests(cMessage)
    local festivalKey, questKey = GetFestivalKeyAndQuestKeyFromNewQuest(cMessage);
    if (questKey) then
        RefreshFestival(festivalKey);
        RefreshQuestGuide(GetString(_LANG.QUESTS[festivalKey][questKey]));
        SETTINGS.IN_PROGRESS_QUESTS[questKey] = festivalKey;
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
    for questKey,festivalKey in pairs (SETTINGS.IN_PROGRESS_QUESTS) do
        local questToCheck = GetString(_LANG.QUESTS[festivalKey][questKey]);

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

    if type (_CHARDATA.CHARS[CHARNAME]) ~= 'table' then _CHARDATA.CHARS[CHARNAME] = {} end;

    CheckFestivalData(_CHARDATA.CHARS[CHARNAME]);

end


function CheckFestivalData(_TABLE)

    if type (_TABLE) ~= 'table' then return end;

    -- Checks if the current festival exists in the characters data, if so then it adds any newer fields that may have been
    -- added in newer updates whilst retaining the values of old values that have been loaded.
    for festivalKey,f in pairs(_LANG.FESTIVALS) do

        if _TABLE[festivalKey] == nil then _TABLE[festivalKey] = {} end;


        -- COOLDOWNS ---
        if _TABLE[festivalKey]["COOLDOWNS"] == nil then _TABLE[festivalKey]["COOLDOWNS"] = {} end;

        local _CDTABLE = _TABLE[festivalKey]["COOLDOWNS"];

        for k,v in ipairs (_LANG.DEBUFFS[festivalKey]) do
            if _CDTABLE[v.key] == nil then
                _CDTABLE[v.key] = 0;
            end
        end


        -- TOKENS ---
        if _TABLE[festivalKey]["TOKENS"] == nil then _TABLE[festivalKey]["TOKENS"] = {} end;

        for k,v in pairs (TOKEN_IDS[festivalKey]) do
            if _TABLE[festivalKey]["TOKENS"][k] == nil then
                _TABLE[festivalKey]["TOKENS"][k] = 0;
            end
        end

    end

end


function GetAltNames()

    -- This function gets the names of the alts which have data stored and builds the names into a returned table.
    local _ALTS = {};

    for k,v in pairs (_CHARDATA.CHARS) do
        if k ~= MYCHAR:GetName() then
            table.insert(_ALTS,k);
        end
    end

    return _ALTS;
end


---Returns the _LANG.DEBUFF[FESTIVAL] index that matches the given key.
---@param debuffKey string
---@return integer
function GetDebuffIndexFromDebuffKey(debuffKey)
    for festivalKey, festivalDebuffs in pairs(_LANG.DEBUFFS) do
        for debuffIndex, debuffData in pairs(festivalDebuffs) do
            if (debuffData.key == debuffKey) then
                return debuffIndex;
            end
        end
    end
    return 1;
end
