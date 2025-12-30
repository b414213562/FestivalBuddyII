
function DrawNpcCooldownWin()
    local windowWidth = 650;
    local windowHeight = 0;

    wNpcCooldownWinParent = Turbine.UI.Lotro.Window();
    wNpcCooldownWinParent:SetSize(windowWidth, windowHeight);
    wNpcCooldownWinParent:SetPosition(SETTINGS.NPC_COOLDOWN_WIN.X, SETTINGS.NPC_COOLDOWN_WIN.Y);
    wNpcCooldownWinParent:SetText(GetString(_LANG.OTHER.WINDOWS.NPC_COOLDOWN_WIN.TITLE))
    wNpcCooldownWinParent:SetVisible(false);
    wNpcCooldownWinParent.PositionChanged = function(sender, args)
        SETTINGS.NPC_COOLDOWN_WIN.X = wNpcCooldownWinParent:GetLeft();
        SETTINGS.NPC_COOLDOWN_WIN.Y = wNpcCooldownWinParent:GetTop();
    end
    wNpcCooldownWinParent.RowHeight = 35;

    Onscreen(wNpcCooldownWinParent);

    local npcCooldownControl = Turbine.UI.Control();
    npcCooldownControl:SetParent(wNpcCooldownWinParent);
    --npcCooldownControl:SetBackColor(Turbine.UI.Color.DarkSeaGreen);
    npcCooldownControl:SetPosition(25, 35);
    npcCooldownControl:SetSize(windowWidth - 50, windowHeight - 50);
    wNpcCooldownWinParent.NpcCooldownControl = npcCooldownControl

    local timerListBox = Turbine.UI.ListBox();
    timerListBox:SetParent(npcCooldownControl);
    timerListBox:SetSize(npcCooldownControl:GetSize());
    --timerListBox:SetBackColor(Turbine.UI.Color.DarkOliveGreen);
    wNpcCooldownWinParent.ListBox = timerListBox;
    wNpcCooldownWinParent.TimerListBox = timerListBox;


    -- DEBUG:
    -- wNpcCooldownWinParent:SetBackColor(Turbine.UI.Color.DarkViolet);

--    CreateNpcTimer(
--        "Barrett Nowell\n  (next to Mara Sandydowns)",
--        8);
--    CreateNpcTimer(
--        "Ted Ives\n  (midway between Ona Kay and Daley Utteridge)",
--        15);
--    CreateNpcTimer(
--        "Regina Judson\n  (midway between Daley Utteridge and the Theatre)",
--        10);
--    CreateNpcTimer(
--        "Jack Judson\n  (next to Theatre entrance)",
--        5);
--    CreateNpcTimer(
--        "Bill Hyde\n  (next to final Biggest Stomach table)",
--        12);
    -- END DEBUG
end

function AddTimer(timerControl)
    wNpcCooldownWinParent.ListBox:AddItem(timerControl);
    UpdateWindowHeight();
    wNpcCooldownWinParent:SetVisible(true);
end

function RemoveTimer(timerControl)
    wNpcCooldownWinParent.ListBox:RemoveItem(timerControl);
    UpdateWindowHeight();
    if (wNpcCooldownWinParent.ListBox:GetItemCount() == 0) then
        wNpcCooldownWinParent:SetVisible(false);
    end
end

function UpdateWindowHeight()
    local rowHeight = wNpcCooldownWinParent.RowHeight;
    local window = wNpcCooldownWinParent;
    local control = wNpcCooldownWinParent.NpcCooldownControl;
    local listBox = wNpcCooldownWinParent.ListBox;
    local count = listBox:GetItemCount();

    local windowMargins = 50;
    local rowHeights = count * rowHeight;
    local windowHeight = windowMargins + rowHeights;

    window:SetHeight(windowHeight);
    control:SetHeight(rowHeights);
    listBox:SetHeight(rowHeights);
end

--- Creates a row containing an NPC label and Progress Bar. Automatically starts the row's timer.
function CreateNpcTimer(npcName, cooldownInSeconds)
    local controlWidth = wNpcCooldownWinParent.NpcCooldownControl:GetWidth();
    local progressBarImageWidth = 200;
    local progressBarImageHeight = 18;
    local rowHeight = wNpcCooldownWinParent.RowHeight;

    local npcControl = Turbine.UI.Control();
    npcControl:SetSize(controlWidth, rowHeight);
    -- npcControl:SetBackColor(Turbine.UI.Color.DarkOrchid);
    npcControl.StartTime = Turbine.Engine.GetGameTime();
    npcControl.StopTime = npcControl.StartTime + cooldownInSeconds;
    npcControl.PreviousUpdateTime = 0;
    npcControl:SetWantsUpdates(true);

    -- Label for NPC name:
    local npcLabelWidth = controlWidth - progressBarImageWidth;
    local npcLabel = Turbine.UI.Label();
    npcLabel:SetParent(npcControl);
    npcLabel:SetText(npcName);
    npcLabel:SetSize(npcLabelWidth, rowHeight)
    -- npcLabel:SetBackColor(Turbine.UI.Color.DarkGreen);

    -- Overall deed progress bars
    local progressBarBack = Turbine.UI.Control();
    progressBarBack:SetParent(npcControl);
    progressBarBack:SetSize(progressBarImageWidth,progressBarImageHeight);
    progressBarBack:SetPosition(npcLabelWidth,0);
    progressBarBack:SetBackground(_IMAGES.PROGRESS.PROGRESS_BACK);
    progressBarBack:SetBlendMode(4);

    local progressBar = Turbine.UI.Control();
    progressBar:SetParent(progressBarBack);
    progressBar:SetSize(0,9);
    progressBar:SetPosition(10,5);
    progressBar:SetBackground(_IMAGES.PROGRESS.PROGRESS_BAR);
    progressBar:SetBlendMode(4);
    progressBar:SetMouseVisible(false);

    local progressLabel = Turbine.UI.Label();
    progressLabel:SetParent(progressBarBack);
    progressLabel:SetSize(progressBarImageWidth,progressBarImageHeight);
    progressLabel:SetPosition(0,0);
    progressLabel:SetForeColor(Turbine.UI.Color.Beige);
    progressLabel:SetFont(Verdana12);
    progressLabel:SetOutlineColor(Turbine.UI.Color(0.1,0.1,0.1));
    progressLabel:SetFontStyle(Turbine.UI.FontStyle.Outline);
    progressLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    progressLabel:SetZOrder(1000);
    progressLabel:SetMouseVisible(false);
    progressLabel:SetText("0 s / " .. cooldownInSeconds .. " s");

    npcControl.Update = function(sender, args)
        local currentTime = Turbine.Engine.GetGameTime();
        local elapsedTime = currentTime - npcControl.StartTime;
        local remainingTime = cooldownInSeconds - elapsedTime;

        local updateInterval = 0.1;
        if (currentTime > (npcControl.PreviousUpdateTime + updateInterval)) then
            local proportionCompleted = elapsedTime / cooldownInSeconds;
            local pixels = proportionCompleted * 179;
            progressBar:SetWidth(pixels);

            progressLabel:SetText(string.format("%d s", remainingTime));
        end

        if (currentTime > npcControl.StopTime) then
            npcControl:SetWantsUpdates(false);
            RemoveTimer(npcControl);
        end

    end

    AddTimer(npcControl);
end

function HandleSayChat_WinterHomeBeggars(message)
    if (_NPC_COOLDOWN_STRINGS[CLIENTLANG][message]) then
        local entry = _NPC_COOLDOWN_STRINGS[CLIENTLANG][message];
        local npc = entry["NPC"];
        local type = entry["TYPE"];
        local seconds = _NPC_COOLDOWNS[type][npc];
        CreateNpcTimer(
            GetString(_LANG.OTHER.YULE_NPC_COOLDOWN_LABELS[npc]),
            seconds);
    end
end

_NPC_COOLDOWNS = {
    ["MOVE"] = {
        ["BARRETT"] = 48;
        ["TED"] = 20;
        ["REGINA"] = 20;
        ["JACK"] = 20;
        ["BILL"] = 30;
    };
    ["SUPPORT"] = {
        ["BARRETT"] = 25;
        ["TED"] = 15;
        ["REGINA"] = 20;
        ["JACK"] = 20;
        ["BILL"] = 20;
    };
}

_NPC_COOLDOWN_STRINGS = {
    ["ENGLISH"] = {
        -- Moving Them Off:
        ["Barrett Nowell says, ''And I'm sure you or someone will tell me to leave the next place I end up, too....''\n"] = { ["NPC"] = "BARRETT"; ["TYPE"] = "MOVE"; };
        ["Ted Ives says, ''It's bad, just bad, the way you rich folks treat us!''\n"] = { ["NPC"] = "TED"; ["TYPE"] = "MOVE"; };
        ["Regina Judson says, ''There's nowhere for me to go!''\n"] = { ["NPC"] = "REGINA"; ["TYPE"] = "MOVE"; };
        ["Jack Judson says, ''...So very hungry!''\n"] = { ["NPC"] = "JACK"; ["TYPE"] = "MOVE"; };
        ["Bill Hyde says, ''I'm sorry if I was upsettin' folks.''\n"] = { ["NPC"] = "BILL"; ["TYPE"] = "MOVE"; };

        -- Support the Poor:
        ["Barrett Nowell says, ''I am so happy!''\n"] = { ["NPC"] = "BARRETT"; ["TYPE"] = "SUPPORT"; };
        ["Ted Ives says, ''I can't believe it!''\n"] = { ["NPC"] = "TED"; ["TYPE"] = "SUPPORT"; };
        ["Regina Judson says, ''Such wonderful news! I'll go to the worksite now.''\n"] = { ["NPC"] = "REGINA"; ["TYPE"] = "SUPPORT"; };
        ["Jack Judson says, ''You are the bearer of such marvellous news! I can hardly believe my ears....''\n"] = {["NPC"] = "JACK"; ["TYPE"] = "SUPPORT"; };
        ["Bill Hyde says, ''I'm so happy!''\n"] = { ["NPC"] = "BILL"; ["TYPE"] = "SUPPORT"; };
    };
    ["GERMAN"] = {
        -- Moving Them Off:
        ["Benno Niebrunn sagt: ''Sicher werdet Ihr oder jemand anders mir am nächsten Ort, an dem ich lande, wieder sagen, dass ich verschwinden soll ...''\n"] = { ["NPC"] = "BARRETT"; ["TYPE"] = "MOVE"; };
        ["Theo Iwo sagt: ''Es ist einfach eine Schande, wie Ihr Reichen uns behandelt!''\n"] = { ["NPC"] = "TED"; ["TYPE"] = "MOVE"; };
        ["Regina Iudsen sagt: ''Ich kann nirgendwo hin!''\n"] = { ["NPC"] = "REGINA"; ["TYPE"] = "MOVE"; };
        ["Jakob Iudsen sagt: ''... hab ich einen Hunger!''\n"] = { ["NPC"] = "JACK"; ["TYPE"] = "MOVE"; };
        ["Willi Heide sagt: ''Tut mir leid, wenn ich die Leute verärgert habe.''\n"] = { ["NPC"] = "BILL"; ["TYPE"] = "MOVE"; };

        -- Support the Poor:
        ["Benno Niebrunn sagt: ''Ich bin so glücklich!''\n"] = { ["NPC"] = "BARRETT"; ["TYPE"] = "SUPPORT"; };
        ["Theo Iwo sagt: ''Ich glaub's nicht!''\n"] = { ["NPC"] = "TED"; ["TYPE"] = "SUPPORT"; };
        ["Regina Iudsen sagt: ''Was für wunderbare Neuigkeiten! Ich gehe jetzt zur Baustelle.''\n"] = { ["NPC"] = "REGINA"; ["TYPE"] = "SUPPORT"; };
        ["Jakob Iudsen sagt: ''Ihr überbringt solch wunderbare Nachrichten! Ich kann kaum meinen Ohren trauen ...''\n"] = {["NPC"] = "JACK"; ["TYPE"] = "SUPPORT"; };
        ["Willi Heide sagt: ''Ich freue mich so!''\n"] = { ["NPC"] = "BILL"; ["TYPE"] = "SUPPORT"; };
    };
    ["FRENCH"] = {
        -- Moving Them Off:
        ["Barrett Patraque dit : ''Et je suis sûr qu'on me dira de partir du prochain endroit où je vais atterrir...''\n"] = { ["NPC"] = "BARRETT"; ["TYPE"] = "MOVE"; };
        ["Ted Fermeron dit : ''Vous, les riches, vous nous traitez de façon vraiment intolérable !''\n"] = { ["NPC"] = "TED"; ["TYPE"] = "MOVE"; };
        ["Régine Latombe dit : ''Je n'ai nulle part où aller !''\n"] = { ["NPC"] = "REGINA"; ["TYPE"] = "MOVE"; };
        ["Jacques Latombe dit : ''... J'ai si faim !''\n"] = { ["NPC"] = "JACK"; ["TYPE"] = "MOVE"; };
        ["Bill Cachette dit : ''Excusez-moi si je dérangeais.''\n"] = { ["NPC"] = "BILL"; ["TYPE"] = "MOVE"; };

        -- Support the Poor:
        ["Barrett Patraque dit : ''Quelle joie !''\n"] = { ["NPC"] = "BARRETT"; ["TYPE"] = "SUPPORT"; };
        ["Ted Fermeron dit : ''Je n'en crois pas mes yeux !''\n"] = { ["NPC"] = "TED"; ["TYPE"] = "SUPPORT"; };
        ["Régine Latombe dit : ''Quelle bonne nouvelle ! Je vais aller sur le chantier.''\n"] = { ["NPC"] = "REGINA"; ["TYPE"] = "SUPPORT"; };
        ["Jacques Latombe dit : ''Vous apportez de merveilleuses nouvelles ! J'ai dû mal à en croire mes oreilles...''\n"] = {["NPC"] = "JACK"; ["TYPE"] = "SUPPORT"; };
        ["Bill Cachette dit : ''Je suis tellement heureux !''\n"] = { ["NPC"] = "BILL"; ["TYPE"] = "SUPPORT"; };
    };

};

