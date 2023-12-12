
function DrawQuickGuideWin()

    local tempWidth = 400;
    local tempHeight = SETTINGS.QUICK_GUIDE_WIN.HEIGHT;

    wQuickGuideWinParent = Turbine.UI.Lotro.Window();
    wQuickGuideWinParent:SetSize(tempWidth, tempHeight);
    wQuickGuideWinParent:SetMinimumWidth(tempWidth);
    wQuickGuideWinParent:SetMaximumWidth(tempWidth);
    wQuickGuideWinParent:SetPosition(SETTINGS.QUICK_GUIDE_WIN.X, SETTINGS.QUICK_GUIDE_WIN.Y);
    wQuickGuideWinParent:SetText("Quick Guide");
    wQuickGuideWinParent:SetVisible(SETTINGS.QUICK_GUIDE_WIN.VISIBLE);
    wQuickGuideWinParent:SetResizable(true);
    wQuickGuideWinParent.IsFilterQuestHappening = false;
    wQuickGuideWinParent.PositionChanged = function(sender, args)
        SETTINGS.QUICK_GUIDE_WIN.X = wQuickGuideWinParent:GetLeft();
        SETTINGS.QUICK_GUIDE_WIN.Y = wQuickGuideWinParent:GetTop();
    end
    wQuickGuideWinParent.Closing = function(sender, arg)
        SETTINGS.QUICK_GUIDE_WIN.VISIBLE = false;
    end

    Onscreen(wQuickGuideWinParent);

    local treeView = Turbine.UI.TreeView();
    treeView:SetParent(wQuickGuideWinParent);
    treeView:SetPosition(20, 32);
    treeView:SetSize(tempWidth - 40, tempHeight - 50);
    treeView:SetFilter(QuickGuideTreeViewFilterFunction);
    wQuickGuideWinParent.treeView = treeView;

    local scrollbar = Turbine.UI.Lotro.ScrollBar();
    scrollbar:SetParent(treeView);
    scrollbar:SetSize(8, treeView:GetHeight());
    scrollbar:SetPosition(treeView:GetWidth() - 8, 0);
    scrollbar:SetOrientation(Turbine.UI.Orientation.Vertical);
    scrollbar:SetVisible(false);
    treeView:SetVerticalScrollBar(scrollbar);
    treeView.scrollbar = scrollbar;

    QuickGuideWinLoadFestival(SELECTEDFESTIVAL);

    wQuickGuideWinParent.SizeChanged = function(sender, args)
        SETTINGS.QUICK_GUIDE_WIN.HEIGHT = wQuickGuideWinParent:GetHeight();
        local newHeight = SETTINGS.QUICK_GUIDE_WIN.HEIGHT - 50;
        treeView:SetHeight(newHeight);
        scrollbar:SetHeight(newHeight);
    end
end

function QuickGuideTreeViewFilterFunction(treeNode)
    -- Don't proceed if this festival doesn't have a quick guide:
    if (not QUICK_GUIDES[SELECTEDFESTIVAL]) then return false; end

    local index = treeNode.index;
    local questChain = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CHAIN_LOOKUP[SELECTEDFESTIVAL][index];

    local isChainUsed = SETTINGS.QUICK_GUIDE_QUESTS_TO_USE[SELECTEDFESTIVAL][questChain];
    local isEntryComplete = treeNode.complete;
    local isReset = treeNode.isReset;

    local isFiltered = not isReset and (isEntryComplete or not isChainUsed);
    return isFiltered;
end

function QuickGuideFilterQuestBegin()
    wQuickGuideWinParent.IsFilterQuestHappening = true;
end

function QuickGuideFilterQuestEnd()
    wQuickGuideWinParent.IsFilterQuestHappening = false;
end

function QuickGuideWinCreateNode(index)
    local treeView = wQuickGuideWinParent.treeView;
    local isCompleted = QuickGuideWinIsCompleted(index);
    local treeNode = Turbine.UI.TreeNode();
    treeNode:SetSize(treeView:GetWidth() - 8, 40);
    treeNode.complete = isCompleted;
    treeNode.index = index;

    local checkBox = Turbine.UI.Lotro.CheckBox();
    checkBox:SetParent(treeNode);
    checkBox:SetText(_QUICK_GUIDE[SELECTEDFESTIVAL][index]["DISPLAY"]);
    checkBox:SetSize(treeView:GetWidth() - 8, 40);
    checkBox:SetMarkupEnabled(true);
    checkBox.CheckedChanged = function(sender, args)
        QuickGuidWinHandleCheckedEntry(treeNode);
    end
    checkBox.Update = function(sender, args)
        local time = Turbine.Engine.GetGameTime();
        if (time > checkBox.hideTime) then
            checkBox:SetWantsUpdates(false);
            treeNode.complete = true;
            treeView:Refresh();
        end
    end
    treeNode.checkBox = checkBox;
    return treeNode;
end

function QuickGuideWinLoadFestival()
    local treeView = wQuickGuideWinParent.treeView;
    treeView:GetNodes():Clear();

    if (_QUICK_GUIDE[SELECTEDFESTIVAL] == nil) then
        return;
    end

    for i = 1, #_QUICK_GUIDE[SELECTEDFESTIVAL] do
        local treeNode = QuickGuideWinCreateNode(i);
        treeView:GetNodes():Add(treeNode);
    end

    local resetNode = Turbine.UI.TreeNode();
    resetNode:SetSize(treeView:GetWidth(), 20);
    resetNode.isReset = true;

    local resetItem = Turbine.UI.Lotro.Button();
    resetItem:SetParent(resetNode);
    resetItem:SetText("Reset this quick guide");
    resetItem:SetSize(175, 20);
    resetItem:SetLeft((resetNode:GetWidth() / 2) - resetItem:GetWidth() / 2);
    treeView:GetNodes():Add(resetNode);
    resetItem.Click = function(sender, args)
        QuickGuideWinClearCompleted();
        QuickGuideWinLoadFestival();
    end

    local creditNode = Turbine.UI.TreeNode();
    creditNode:SetSize(treeView:GetWidth(), 70);
    creditNode.isReset = true;

    local creditLabel = Turbine.UI.Label();
    creditLabel:SetParent(creditNode);
    creditLabel:SetText(_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[SELECTEDFESTIVAL]);
    creditLabel:SetSize(treeView:GetWidth(), 70);
    treeView:GetNodes():Add(creditNode);
end

function QuickGuidWinHandleCheckedEntry(treeNode)
    local checkBox = treeNode.checkBox;
    if (not wQuickGuideWinParent.IsFilterQuestHappening and
        checkBox:IsShiftKeyDown()) then
        for i=1, treeNode.index - 1 do
            local possibleCheckbox = GetCheckbox(i);
            if (possibleCheckbox) then
                possibleCheckbox:SetChecked(true);
            end
        end
    end

    if (SETTINGS.QUICK_GUIDE_REMOVE_COMPLETED) then
        checkBox.hideTime = Turbine.Engine.GetGameTime() + SETTINGS.QUICK_GUIDE_CLEAR_DELAY;
        checkBox:SetWantsUpdates(checkBox:IsChecked());
        if (checkBox:IsChecked()) then
            checkBox:SetBackColor(Turbine.UI.Color.DarkGreen);
        else
            -- Revert back color to the default for checkboxes:
            local sampleCheckBox = Turbine.UI.Lotro.CheckBox();
            local color = sampleCheckBox:GetBackColor();
            checkBox:SetBackColor(color.R, color.G, color.B);
        end
    end

    local index = treeNode.index;
    if (_QUICK_GUIDE[SELECTEDFESTIVAL][index]) then
        QuickGuideWinSetCompleted(index);
    end

end

function QuickGuideWinSetVisible(newIsVisible)
    local currentIsVisible = wQuickGuideWinParent:IsVisible();
    if newIsVisible == currentIsVisible then return; end

    if currentIsVisible == false then
        wQuickGuideWinParent:SetVisible(true);
        SETTINGS.QUICK_GUIDE_WIN.VISIBLE = true;

        wQuickGuideWinParent:Activate();
    else
        wQuickGuideWinParent:SetVisible(false);
        SETTINGS.QUICK_GUIDE_WIN.VISIBLE = false;
    end

end

---@return CheckBox
function GetCheckbox(index)
    local treeView = wQuickGuideWinParent.treeView;
    for i = 1, treeView:GetNodes():GetCount() do
        local treeNode = treeView:GetNodes():Get(i);
        if (treeNode.index == index) then
            return treeNode.checkBox;
        end
    end

    return nil;
end

-- TODO: How can we call this correctly when the user clicks a box manually?
function QuickGuideWinMarkComplete(index)
    local checkbox = GetCheckbox(index);
    if (checkbox) then
        checkbox:SetChecked(true);
    else
        -- index corresponds to a box that is already checked off, do nothing.
        --Turbine.Shell.WriteLine("Tried to get index \"" .. index .. "\", but didn't find anything");
    end

    if (_QUICK_GUIDE[SELECTEDFESTIVAL][index]) then
        if (_QUICK_GUIDE[SELECTEDFESTIVAL][index]["ALSO_COMPLETES"]) then
            for i=1, #_QUICK_GUIDE[SELECTEDFESTIVAL][index]["ALSO_COMPLETES"] do
                local alsoIndex = _QUICK_GUIDE[SELECTEDFESTIVAL][index]["ALSO_COMPLETES"][i];
                QuickGuideWinMarkComplete(alsoIndex);
            end
        end

        -- only override the quest selection if they're actively using the quick guide:
        local isUsingQuickGuide = wQuickGuideWinParent:IsVisible();
        local loadQuestDirective = _QUICK_GUIDE[SELECTEDFESTIVAL][index]["LOAD_QUEST"];
        if (isUsingQuickGuide and
            loadQuestDirective) then

            -- make sure this chain isn't already completed:
            local chainName = loadQuestDirective;
            local chainEndName = chainName .. "_END";
            local chainEndIndex = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_INDICIES[SELECTEDFESTIVAL][chainEndName];
            local checkBox = GetCheckbox(chainEndIndex);
            local isChainComplete = checkBox:IsChecked();

            -- make sure this chain is included:
            local isChainUsed = SETTINGS.QUICK_GUIDE_QUESTS_TO_USE[SELECTEDFESTIVAL][chainName];

            if (isChainUsed and not isChainComplete) then
                LoadQuest(loadQuestDirective);
            end
        end
    end

end

function QuickGuideWinIsCompleted(index)
    return SETTINGS.QUICK_GUIDE_PROGRESS[SELECTEDFESTIVAL][index] ~= nil;
end

function QuickGuideWinSetCompleted(index)
    SETTINGS.QUICK_GUIDE_PROGRESS[SELECTEDFESTIVAL][index] = true;
end

function QuickGuideWinClearCompleted()
    SETTINGS.QUICK_GUIDE_PROGRESS[SELECTEDFESTIVAL] = {};
end

function QuickGuideWinGetIndexFromChat(cMessage, objectiveTable)
    local index = nil;
    if (_QUICK_GUIDE[SELECTEDFESTIVAL]) then
        index = objectiveTable[SELECTEDFESTIVAL][cMessage];
    end
    return index;
end

function QuickGuideWinHandleQuestChainBeginOrEnd(index)
    local objective = _QUICK_GUIDE[SELECTEDFESTIVAL][index];
    local isChainBegin = objective.CHAIN_BEGIN ~= nil;
    local isChainEnd = objective.CHAIN_END ~= nil;
    if (isChainBegin or isChainEnd) then
        local state = false;
        if (isChainEnd) then state = true; end

        local chain = nil;
        if (isChainBegin) then chain = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CHAINS[SELECTEDFESTIVAL][objective.CHAIN_BEGIN];
        elseif (isChainEnd) then chain = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CHAINS[SELECTEDFESTIVAL][objective.CHAIN_END];
        end
        local treeView = wQuickGuideWinParent.treeView;
        local nodeChanged = false;
        for i = 1, treeView:GetNodes():GetCount() do
            local treeNode = treeView:GetNodes():Get(i);
            if (chain[treeNode.index]) then
                treeNode.complete = state;
                nodeChanged = true;
                treeNode.checkBox:SetChecked(state);
            end
        end
        if (nodeChanged and isChainBegin) then
            treeView:Refresh();
        end
    end

end

function QuickGuideWinHandleQuestChannelText(cMessage)
    -- If there's a quick guide and a corresponding quest objective, mark the objective complete:
    local index = QuickGuideWinGetIndexFromChat(cMessage, _QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS);
    if (index) then
        QuickGuideWinHandleQuestChainBeginOrEnd(index);
        QuickGuideWinMarkComplete(index);
    end
end

function QuickGuideWinHandleQuestAccept(cMessage)
    local index = QuickGuideWinGetIndexFromChat(cMessage, _QUICK_GUIDE_NEW_QUEST_STRINGS);
    -- If there's a quick guide and a corresponding quest, mark the quest chain picked up:
    if (index) then
        QuickGuideWinHandleQuestChainBeginOrEnd(index);
        QuickGuideWinMarkComplete(index);
    end
end

function QuickGuideWinHandleQuestCompleted(cMessage)
    -- If there's a quick guide and a corresponding quest, mark the quest chain:
    local index = QuickGuideWinGetIndexFromChat(cMessage, _QUICK_GUIDE_COMPLETED_QUEST_STRINGS);
    if (index) then
        QuickGuideWinMarkComplete(index);
        QuickGuideWinHandleQuestChainBeginOrEnd(index);
    end
end
