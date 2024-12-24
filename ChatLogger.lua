
-- Chat log filter.
-- Controls chat messages and actions the appropriate functions based on the message.
alert_cancellation_token = {};

function ResetCancellationToken()
    alert_cancellation_token = {};
end

function CancelAlert()
    if (alert_cancellation_token) then
        DoCallbacks(alert_cancellation_token, "Cancel");
    end
end

function InitiateChatLogger()

    CHATLOG = Turbine.Chat;
    CHATLOG.Received = function (sender, args)

        local tempMessage = tostring(args.Message);

        if args.ChatType == Turbine.ChatType.Standard then
            FilterStandard(tempMessage);
        end

        if args.ChatType == Turbine.ChatType.Say then
            FilterSay(tempMessage);
        end

        if args.ChatType == Turbine.ChatType.Quest then
            FilterQuest(tempMessage);
        end

    end
end


function FilterStandard(cMessage)
-- Filters here for use with the Standard channel.

    -- Yule Festival: Theatre emote prompt filters.
    if ISACTING == true then

        if string.find(cMessage,GetString(_LANG.OTHER.TIMETOPERFORM)) then
            -- Target checking
            local SELTARGET = MYCHAR:GetTarget();

            if SELTARGET ~= nil then
                if SELTARGET:GetName() ~= GetString(_LANG.OTHER.AUDIENCE) then local tmpMsg = Alert(GetString(_LANG.OTHER.YULESELAUDIENCE)) end;
            else
                local tmpMsg = Alert(GetString(_LANG.OTHER.YULESELAUDIENCE));
            end
        end
    end
    ----

    CheckStandardChatForServerTime(cMessage);
    MazeMapHandleStandardChatMessage(cMessage);

end

function FilterQuest(cMessage)
    -- Should be first thing in this function
    QuickGuideFilterQuestBegin();
-- Filters here for use with the Quest channel.

    local CompQuest = string.find(cMessage,(GetString(_LANG.QUESTS.COMPLETEDQUEST)));
    local FailQuest = string.find(cMessage,(GetString(_LANG.QUESTS.FAILEDQUEST)));
    if CompQuest ~= nil then FilterCompletedQuests(cMessage) end;
    if FailQuest ~= nil then FilterFailedQuests(cMessage) end;

    if (CompQuest or FailQuest) then
        CheckForInProgressThatIsCompletedOrFailed(cMessage);
    end

    local NewQuest = string.find(cMessage,(GetString(_LANG.QUESTS.NEWQUEST)));
    if NewQuest ~= nil then FilterNewQuests(cMessage) end;

    -- Hobnanigans uses quests to track which field the player is on:
    if (SELECTEDFESTIVAL == HOBNANIGANS) then
        HandleQuestChat_HobnanigansTracker(GetRawText(cMessage));
    end

    -- Farmers Faire - Fat Mayor / Will Whitfoot
    if (SELECTEDFESTIVAL == FARMERSFAIRE) then
        if SELECTEDQUEST == GetString(_LANG.QUESTS[FARMERSFAIRE].FAT_MAYOR) then
            if (string.find(cMessage, GetString(_LANG.OTHER.FARMERS_FAIRE_WILL_WHITFOOT_SUCCESS_FAIL.SUCCESS))) then
                CancelAlert();
            elseif (string.find(cMessage, GetString(_LANG.OTHER.FARMERS_FAIRE_WILL_WHITFOOT_SUCCESS_FAIL.FAILURE))) then
                CancelAlert();
            end
        end
    end

    QuickGuideWinHandleQuestChannelText(cMessage);

    -- Should be last thing in this function:
    QuickGuideFilterQuestEnd();
end

-- This label is for stripping markup, do not touch!
getRawText = Turbine.UI.Label();
getRawText:SetMarkupEnabled(true);

function GetRawText(textWithMarkup)
    getRawText:SetText(textWithMarkup);
    return getRawText:GetText();
end
-- End stripping markup

-- _LANG.QUESTS[ANNIVERSARY].BREEFIREWORKS <-- should we handle this quest's chat?
-- Check for:
--   is selected quest
--     OR
--   is quest backgroundable AND in progress
function ShouldProcessChat(questKey) -- e.g. "BREEFIREWORKS", string
    local isSelectedQuest = SELECTEDQUESTKEY == questKey;
    local isQuestBackgrounded = SETTINGS_ACCOUNT.QUEST_IS_BACKGROUNDED[questKey];
    local isInProgress = SETTINGS.IN_PROGRESS_QUESTS[questKey];

    local result = isSelectedQuest or (isQuestBackgrounded and isInProgress);
    return result;
end

function FilterSay(cMessage)
-- Filters here for use with the say channel.

    -- Dance instructor filters.
    if wDanceParent:IsVisible() then

        local a = string.find(cMessage, GetString(_LANG.DANCES.DANCE_INSTRUCTOR_ELF)); -- Nedhrien
        local b = string.find(cMessage, GetString(_LANG.DANCES.DANCE_INSTRUCTOR_HOBBIT)); -- Oger Brockhouse
        local c = string.find(cMessage, GetString(_LANG.DANCES.DANCE_INSTRUCTOR_DWARF)); -- Galmi
        local d = string.find(cMessage, GetString(_LANG.DANCES.DANCE_INSTRUCTOR_MAN)); -- Ada Musgrove

        if a ~= nil then
            FilterDanceStep(cMessage, GetString(_LANG.DANCES.DANCE_INSTRUCTOR_ELF)); -- Dance instructor message
        elseif b ~= nil then
            FilterDanceStep(cMessage, GetString(_LANG.DANCES.DANCE_INSTRUCTOR_HOBBIT)); -- Dance instructor message
        elseif c ~= nil then
            FilterDanceStep(cMessage, GetString(_LANG.DANCES.DANCE_INSTRUCTOR_DWARF)); -- Dance instructor message
        elseif d ~= nil then
            FilterDanceStep(cMessage, GetString(_LANG.DANCES.DANCE_INSTRUCTOR_MAN)); -- Dance instructor message
        end
    end

    if (SELECTEDFESTIVAL == ANNIVERSARY) then

        -- Bree Fireworks Announcer (Anniversary)
        if (ShouldProcessChat("BREEFIREWORKS")) then
            local rawText = GetRawText(cMessage);
            if string.find(rawText,"^" .. GetString(_LANG.OTHER.NPC_FIREWORKANNOUNCER)) then
                HandleFireworksAnnouncerSay(rawText);
            end
        end

    end

    if (SELECTEDFESTIVAL == FARMERSFAIRE) then

        -- Farmers Faire - Fat Hobbit / Will Whitfoot
        if (ShouldProcessChat("FAT_MAYOR")) then
            local pattern = _LANG.OTHER.FARMERS_FAIRE_WILL_WHITFOOT_PARSE[CLIENTLANG];
            local request = string.match(cMessage, pattern);

            if (request) then
                HandleFarmersFaireWillWhitfootRequest(request);
            end
        end

        -- Farmers Faire - Bounder Rounds
        if (ShouldProcessChat("BOUNDER_ROUNDS")) then
            local textToShow = _LANG.OTHER.FARMERS_FAIRE_BOUNDER_ROUNDS_PARTY_GOERS[CLIENTLANG][cMessage];
            if (textToShow) then
                local secondsToShow = 10;
                local showRemaningTime = false;

                Alert(
                    "<rgb=#00FFFF>"..textToShow.."</rgb>",
                    secondsToShow,
                    showRemaningTime);
            end
        end
    end

    -- Hobnanigans uses say to track the beginning of play, points, and the end of play:
    if (SELECTEDFESTIVAL == HOBNANIGANS) then
        HandleSayChat_HobnanigansTracker(GetRawText(cMessage));
    end

    -- Other filters


end

function HandleFireworksAnnouncerSay(rawText)
    local message = string.match(rawText,"[\"'](.*)[\"']");
    Alert("<rgb=#00FFFF>"..message.."</rgb>",18,true, function() HighlightAllowedFireworks(NO_FIREWORKS); end);

    local fireworksType = _LANG.OTHER.FIREWORKS_ANNOUNCEMENTS[CLIENTLANG][rawText];
    if (fireworksType ~= nil) then
        HighlightAllowedFireworks(fireworksType);
    end
end

function HandleFarmersFaireWillWhitfootRequest(request)
    local itemToUse = _LANG.OTHER.FARMERS_FAIRE_WILL_WHITFOOT_ANNOUNCEMENTS[CLIENTLANG][request];
    if (itemToUse == nil) then
        Turbine.Shell.WriteLine("Could not find item for \"" .. request .. "\"");
        return;
    end
    local itemMessage = _LANG.OTHER.FARMERS_FAIRE_WILL_WHITFOOT_ITEMS[CLIENTLANG][itemToUse];
    if (itemMessage == nil) then
        Turbine.Shell.WriteLine("Could not find item for \"" .. request .. "\"");
        return;
    end

    local message = itemMessage .. "\n\n" .. request;
    local secondsToShow = 19;
    local showRemaningTime = true;
    local callback = nil;
    ResetCancellationToken();
    Alert(
        "<rgb=#00FFFF>"..message.."</rgb>",
        secondsToShow,
        showRemaningTime,
        callback,
        alert_cancellation_token);
end

function CheckStandardChatForServerTime(message)
    local pattern = GetString(_LANG.OPTIONS.SERVERTIME_CHAT_PATTERN)

    local matches = {string.match(message, pattern)};
    if (matches[1]) then
        local month = tonumber(matches[1]);
        local day = tonumber(matches[2]);
        local hour = tonumber(matches[3]);
        local minute = tonumber(matches[4]);
        local amPm = matches[5];

        if (CLIENTLANG ~= "ENGLISH") then
            month = tonumber(matches[2]);
            day = tonumber(matches[1]);
        end

        hour = hour % 12;
        if (amPm == "PM") then hour = hour + 12; end

        local offset = DetectTimeZone(month, day, hour, minute, amPm);
        SaveTimeOffset(offset);
    end
end

--- Algorithm inspired by Thurallor's Reminders
---@param serverMonth any
---@param serverDay any
---@param serverHour any
---@param serverMinute any
---@param serverAmPm any
function DetectTimeZone(serverMonth, serverDay, serverHour, serverMinute, serverAmPm)
    local serverMinuteOfDay = serverHour * 60 + serverMinute;

    local localDate = Turbine.Engine.GetDate();
    local localDay, localHour, localMinute = localDate.Day, localDate.Hour, localDate.Minute;
    local localMinuteOfDay = localHour * 60 + localMinute;

    -- Detect day offset between server and local time
    local offsetDays = localDay - serverDay;
    if (offsetDays > 1) then
        -- Server time is next month
        offsetDays = -1;
    elseif (offsetDays < -1) then
        -- Server time is last month
        offsetDays = 1;
    end

    -- Chat message is not exactly synched with GetDate() function.
    -- To cope with this, round the offset to the nearest 15-minute interval.
    -- All time zone offsets in the world are multiples of 15 minutes.
    local offsetMinutes = (24 * 60 * offsetDays) + localMinuteOfDay - serverMinuteOfDay;
    offsetMinutes = 15 * math.floor(0.5 + offsetMinutes / 15);
    local offsetHours = offsetMinutes / 60;

    -- Turbine.Shell.WriteLine("Offset hours: " .. offsetHours);

    -- Take into account plausible DST ending overlap.
    local easternStandardTimeOffset = -5;
    local easternDaylightTimeOffset = -4;

    local ukMinimumOffset = 0;
    local easternEuropeMaximumOffset = 3;

    local minimumEuropeOffset = ukMinimumOffset - easternDaylightTimeOffset;
    local maximumEuropeOffset = easternEuropeMaximumOffset - easternStandardTimeOffset;

    local isProbablyEurope = offsetHours >= minimumEuropeOffset and offsetHours <= maximumEuropeOffset;
    local isProbablyDstOverlap = IsDstStartStopOverlap(localDate);
    local dstAdjustment = 0;
    if (isProbablyDstOverlap) then dstAdjustment = 1; end

    -- Turbine.Shell.WriteLine("isProbablyEurope: " .. dump(isProbablyEurope));
    -- Turbine.Shell.WriteLine("isProbablyDstOverlap: " .. dump(isProbablyDstOverlap));
    -- Turbine.Shell.WriteLine("dstAdjustment: " .. dstAdjustment);

    return offsetHours + dstAdjustment;
end
