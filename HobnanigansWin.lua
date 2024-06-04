local flyingFeathersBorderColor = Turbine.UI.Color(0.5,0.55,0,0);
local steelBeaksBorderColor = Turbine.UI.Color(0.5,0,0,0.55);

function DrawHobnanigansWin()
    wHobnanigans = Turbine.UI.Control();
    wHobnanigans:SetBackColorBlendMode(Turbine.UI.BlendMode.AlphaBlend);
    --wHobnanigans:SetBackColor(Turbine.UI.Color(0.3,0.22,0.22,0.71));
    wHobnanigans:SetSize(260, 300);
    wHobnanigans:SetMouseVisible(false);
    wHobnanigans:SetZOrder(1);
    wHobnanigans.locked = true; -- Reposition UI is Off
    wHobnanigans.isHudOn = true;
    wHobnanigans.isWindowVisible = false;
    wHobnanigans.questActive = false;
    wHobnanigans.team = nil;
    wHobnanigans.fieldNumber = nil;
    wHobnanigans.playActive = false;

    hobnanigansFieldLabel = Turbine.UI.Label();
    hobnanigansFieldLabel:SetParent(wHobnanigans);
    hobnanigansFieldLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro28);
    hobnanigansFieldLabel:SetFontStyle(Turbine.UI.FontStyle.Outline);
    hobnanigansFieldLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    SetField(nil);
    hobnanigansFieldLabel:SetSize(260, 40);
    hobnanigansFieldLabel:SetPosition(0, 20);

    hobnanigansFlyingFeathersLabel = Turbine.UI.Label();
    hobnanigansFlyingFeathersLabel:SetParent(wHobnanigans);
    hobnanigansFlyingFeathersLabel:SetBackColorBlendMode(Turbine.UI.BlendMode.AlphaBlend);
    hobnanigansFlyingFeathersLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro24);
    hobnanigansFlyingFeathersLabel:SetFontStyle(Turbine.UI.FontStyle.Outline);
    hobnanigansFlyingFeathersLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    hobnanigansFlyingFeathersLabel:SetText(GetString(_LANG.OTHER.HOBNANIGANS_TEAMS.FLYING_FEATHERS));
    hobnanigansFlyingFeathersLabel:SetSize(130, 50);
    hobnanigansFlyingFeathersLabel:SetPosition(0, 60);

    hobnanigansFfScoreLabel = Turbine.UI.Label();
    hobnanigansFfScoreLabel:SetParent(wHobnanigans);
    hobnanigansFfScoreLabel:SetFont(Turbine.UI.Lotro.Font.TrajanProBold36);
    hobnanigansFfScoreLabel:SetFontStyle(Turbine.UI.FontStyle.Outline);
    hobnanigansFfScoreLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    hobnanigansFfScoreLabel:SetText("0");
    hobnanigansFfScoreLabel:SetSize(130, 50);
    hobnanigansFfScoreLabel:SetPosition(0, 115);

    hobnanigansSteelBeaksLabel = Turbine.UI.Label();
    hobnanigansSteelBeaksLabel:SetParent(wHobnanigans);
    hobnanigansSteelBeaksLabel:SetBackColorBlendMode(Turbine.UI.BlendMode.AlphaBlend);
    hobnanigansSteelBeaksLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro24);
    hobnanigansSteelBeaksLabel:SetFontStyle(Turbine.UI.FontStyle.Outline);
    hobnanigansSteelBeaksLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    hobnanigansSteelBeaksLabel:SetText(GetString(_LANG.OTHER.HOBNANIGANS_TEAMS.STEEL_BEAKS));
    hobnanigansSteelBeaksLabel:SetSize(110, 50);
    hobnanigansSteelBeaksLabel:SetPosition(140, 60);

    hobnanigansSbScoreLabel = Turbine.UI.Label();
    hobnanigansSbScoreLabel:SetParent(wHobnanigans);
    hobnanigansSbScoreLabel:SetFont(Turbine.UI.Lotro.Font.TrajanProBold36);
    hobnanigansSbScoreLabel:SetFontStyle(Turbine.UI.FontStyle.Outline);
    hobnanigansSbScoreLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    hobnanigansSbScoreLabel:SetText("0");
    hobnanigansSbScoreLabel:SetSize(110, 50);
    hobnanigansSbScoreLabel:SetPosition(140, 115);

    wHobnanigans.score = {
        ["FLYING_FEATHERS"] = hobnanigansFfScoreLabel;
        ["STEEL_BEAKS"] = hobnanigansSbScoreLabel;
    };

    hobnanigansTimer = MakeTimerControl(
        260, 20, 10 * 60 - 5, -- minus a few seconds between start and chicken drop
        0, 0,
        Turbine.UI.Color.Green,
        Turbine.UI.Color.Yellow, 6 * 60,
        Turbine.UI.Color.Red, 2 * 60);
    hobnanigansTimer:SetParent(wHobnanigans);
    hobnanigansTimer:SetPosition(0, 270);

    hobnanigansStatus = Turbine.UI.Label();
    hobnanigansStatus:SetParent(wHobnanigans);
    if (CLIENTLANG == "GERMAN") then
        hobnanigansStatus:SetFont(Turbine.UI.Lotro.Font.TrajanProBold30);
    else
        hobnanigansStatus:SetFont(Turbine.UI.Lotro.Font.TrajanProBold36);
    end
    hobnanigansStatus:SetFontStyle(Turbine.UI.FontStyle.Outline);
    hobnanigansStatus:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    hobnanigansStatus:SetSize(260, 40);
    hobnanigansStatus:SetPosition(0, 260);
    hobnanigansStatus:SetText(GetString(_LANG.OTHER.HOBNANIGANS_TEXT.NEED_QUEST));
    --hobnanigansStatus:SetBackColor(Turbine.UI.Color.BlanchedAlmond);
end

function SetField(fieldNumber)
    wHobnanigans.fieldNumber = fieldNumber;
    if (fieldNumber == nil) then
        hobnanigansFieldLabel:SetText(string.format("%s: %s",
            GetString(_LANG.OTHER.HOBNANIGANS_TEXT.FIELD),
            GetString(_LANG.OTHER.HOBNANIGANS_TEXT.NONE)));
    else
        hobnanigansFieldLabel:SetText(string.format("%s: %s",
            GetString(_LANG.OTHER.HOBNANIGANS_TEXT.FIELD),
            fieldNumber));
    end
end

function GetScore(teamIndex)
    return wHobnanigans.score[teamIndex]:GetText();
end

function SetScore(teamIndex, score)
    wHobnanigans.score[teamIndex]:SetText(score);
end

function SetHobnanigansTeam(team)
    wHobnanigans.team = team;
    if (team == GetString(_LANG.OTHER.HOBNANIGANS_TEAMS.FLYING_FEATHERS)) then
        hobnanigansTimer:SetBackColor(flyingFeathersBorderColor);
        hobnanigansFlyingFeathersLabel:SetBackColor(flyingFeathersBorderColor);
        hobnanigansSteelBeaksLabel:SetBackColor(nil);
    elseif (team == GetString(_LANG.OTHER.HOBNANIGANS_TEAMS.STEEL_BEAKS)) then
        hobnanigansTimer:SetBackColor(steelBeaksBorderColor);
        hobnanigansFlyingFeathersLabel:SetBackColor(nil);
        hobnanigansSteelBeaksLabel:SetBackColor(steelBeaksBorderColor);
    else
        hobnanigansTimer:SetBackColor(nil);
        hobnanigansFlyingFeathersLabel:SetBackColor(nil);
        hobnanigansSteelBeaksLabel:SetBackColor(nil);
    end
end

function ClearScores()
    SetScore("FLYING_FEATHERS", 0);
    SetScore("STEEL_BEAKS", 0);
end

function ShowHobnanigansText(textType)
    if (textType == nil) then
        hobnanigansStatus:SetVisible(false);
    else
        hobnanigansStatus:SetVisible(true);
        hobnanigansStatus:SetText(GetString(_LANG.OTHER.HOBNANIGANS_TEXT[textType]));
    end
end

function HandleQuestChat_HobnanigansTracker(rawText)
    if (not wHobnanigans.questActive) then
        local team, fieldNumber = string.match(rawText, GetString(_LANG.OTHER.HOBNANIGANS_ACCOUNCEMENTS.HOBNANIGANS_QUEST_BEGIN_TEXT));
        if (team ~= nil and fieldNumber ~= nil) then
            -- Quest begins!
            --Turbine.Shell.WriteLine("Quest started: '" .. team .. "' on field '" .. fieldNumber .. "'");
            wHobnanigans.questActive = true;
            SetHobnanigansTeam(team)
            SetField(fieldNumber);
            wHobnanigans.playActive = false;
            ClearScores();
            ShowHobnanigansText("WAITING_FOR_START");
        end
    else
        -- Quest might end:
        local team, fieldNumber = string.match(rawText, GetString(_LANG.OTHER.HOBNANIGANS_ACCOUNCEMENTS.HOBNANIGANS_QUEST_END_TEXT));
        if (team ~= nil and fieldNumber ~= nil) then
            -- Quest ends!
            --Turbine.Shell.WriteLine("Quest failed: team '" .. team .. "' on field '" .. fieldNumber .. "'");
            wHobnanigans.questActive = false;
            SetHobnanigansTeam(nil);
            SetField(nil);
            wHobnanigans.playActive = false;
            TimerStop(hobnanigansTimer);
            ShowHobnanigansText("NEED_QUEST");
        end
    end
end

function HandleSayChat_HobnanigansTracker(rawText)
    --Turbine.Shell.WriteLine("Checking say text: '" .. rawText .. "'");

    -- We won't care about what the referee has to say about the game until
    -- we have a quest for a field.
    -- (This prevents stray chickes after a game from triggering the timer.)
    if (not wHobnanigans.questActive) then
        return;
    end

    if (not wHobnanigans.playActive) then
        -- Play might begin:
        local fieldNumber = string.match(rawText, GetString(_LANG.OTHER.HOBNANIGANS_ACCOUNCEMENTS.HOBNANIGANS_ACTIVE_PLAY_BEGIN));
        if (fieldNumber ~= nil and fieldNumber == wHobnanigans.fieldNumber and not wHobnanigans.playActive) then
            --Turbine.Shell.WriteLine("Play begins on field '" .. fieldNumber .. "'!");
            wHobnanigans.playActive = true;
            TimerStart(hobnanigansTimer);
            ShowHobnanigansText(nil);
        end
    else -- Play is active
        local fieldNumber, team = string.match(rawText, GetString(_LANG.OTHER.HOBNANIGANS_ACCOUNCEMENTS.HOBNANIGANS_POINT_SCORED));
        if (fieldNumber ~= nil and team ~= nil and fieldNumber == wHobnanigans.fieldNumber) then
            local teamIndex = _LANG.OTHER.HOBNANIGANS_TEAMS[team];
            if (teamIndex ~= nil) then
                local oldScore = GetScore(teamIndex);
                local newScore = oldScore + 1;
                SetScore(teamIndex, newScore);
                --Turbine.Shell.WriteLine("Point by '" .. dump(team) .. "', total score '" .. wHobnanigans.score[teamIndex]:GetText() .. "'!");
            end
        else
            local fieldNumber, team = string.match(rawText, GetString(_LANG.OTHER.HOBNANIGANS_ACCOUNCEMENTS.HOBNANIGANS_GAME_END));
            if (fieldNumber ~= nil and team ~= nil and fieldNumber == wHobnanigans.fieldNumber) then
                --Turbine.Shell.WriteLine("Game over, '" .. team .. "' wins!");
                wHobnanigans.questActive = false;
                wHobnanigans.playActive = false;
                TimerStop(hobnanigansTimer);
                ShowHobnanigansText("GAME_OVER");
            else
                local fieldNumber = string.match(rawText, GetString(_LANG.OTHER.HOBNANIGANS_ACCOUNCEMENTS.HOBNANIGANS_TIME_REMAINING_6));
                if (fieldNumber ~= nil and fieldNumber == wHobnanigans.fieldNumber) then
                    --Turbine.Shell.WriteLine("6 Minute Announcement");
                    TimerSetTimeRemaining(hobnanigansTimer, 6 * 60);
                else
                    local fieldNumber = string.match(rawText, GetString(_LANG.OTHER.HOBNANIGANS_ACCOUNCEMENTS.HOBNANIGANS_TIME_REMAINING_2));
                    if (fieldNumber ~= nil and fieldNumber == wHobnanigans.fieldNumber) then
                        --Turbine.Shell.WriteLine("2 Minute Announcement");
                        TimerSetTimeRemaining(hobnanigansTimer, 2 * 60);
                    end
                end
            end
        end
    end

end

