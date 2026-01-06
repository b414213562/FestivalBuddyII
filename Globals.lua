PLUGIN_NAME = "Festival Buddy II";

SETTINGS = {}; -- Table used when loading settings.
SETTINGS_SERVER = {}; -- Table for server-wide settings.
SETTINGS_ACCOUNT = {}; -- Table for account-wide settings.
_CHARDATA = {}; -- Table used when loading saved character data.

blSAVED = false;

MYCHAR = Turbine.Gameplay.LocalPlayer.GetInstance();
MYWALLET = MYCHAR:GetWallet();
EFFECTS = MYCHAR:GetEffects();
MYBACKPACK = MYCHAR:GetBackpack();

CALLBACKS = {};

MYWALLET.ItemAdded = function (sender,args)
    RefreshTokenView();
end

MYWALLET.ItemRemoved = function (sender,args)
    wMainWinParent:SetWantsUpdates(true);
end


EFFECTS.EffectAdded = function (sender,args)
    RefreshDebuffView();
end

EFFECTS.EffectRemoved = function (sender,args)
    RefreshDebuffView();
end

--[[

    _ITEMCONTROLS =
        {
        [ITEMNAME] = SENDER
        };

--]]


-- When items are added / removed - need to check database to see if the item is assigned a slot anywhere that needs updating.
MYBACKPACK.ItemAdded = function (sender,args)
    local NEWITEM = args.Item;
    local ITEMNAME = NEWITEM:GetName();

    -- Search database for item
    if _ITEMCONTROLS[ITEMNAME] ~= nil then
        _ITEMCONTROLS[ITEMNAME]:SetItem(NEWITEM);
    end

end

MYBACKPACK.ItemRemoved = function (sender,args)
    -- Not needed at the moment
end

_ITEMCONTROLS = {};

SELECTEDQUEST = "";
SELECTEDQUESTKEY = "";
ISACTING = false; -- Flag used to determine if the character is acting in the yule festival.

SCREENWIDTH = Turbine.UI.Display.GetWidth();
SCREENHEIGHT = Turbine.UI.Display.GetHeight();

MainWindowWidth = 300;
MainWindowHeight = 520;

TRANSPARENT = Turbine.UI.Color(0,0,0,0); -- ARGB
WHITE = Turbine.UI.Color(1,1,1);
BLACK = Turbine.UI.Color(0,0,0);
DARKGREY = Turbine.UI.Color(0.1,0.1,0.1);
GREY = Turbine.UI.Color(0.5,0.5,0.5);
LIGHTGREY = Turbine.UI.Color(0.8,0.8,0.8);
GREEN = Turbine.UI.Color(0,1,0);
YELLOW = Turbine.UI.Color(1,1,0);
BEIGE = Turbine.UI.Color((229/255),(209/255),(136/255));
ORANGE = Turbine.UI.Color(247/255,148/255,29/255);

TrajanPro16 = Turbine.UI.Lotro.Font.TrajanPro16;
TrajanPro14 = Turbine.UI.Lotro.Font.TrajanPro14;
Verdana12 = Turbine.UI.Lotro.Font.Verdana12;


_QUALITYCOLORS =
{
    [0] = Turbine.UI.Color.White;       -- Undefined
    [5] = Turbine.UI.Color.White;       -- Common
    [4] = Turbine.UI.Color.Yellow;      -- Uncommon
    [2] = Turbine.UI.Color.Magenta;     -- Rare
    [3] = Turbine.UI.Color.Aqua;        -- Incomparable
    [1] = Turbine.UI.Color.Orange;      -- Legendary
};


-- Random Variables
blDRAGGING = false;
relX = 0;
relY = 0;

-- Detect client lang.
CLIENTLANG = GetClientLanguage();

-- Default Character Settings
DEFAULT_SETTINGS = {

    ["MSGCOLOR"] = "FFFFFF";
    ["FESTIVAL"] = "SPRING";
    ["QUEST"] = nil;
    ["EMOTESASSIST"] = true;
    ["QSASSIST"] = true;
    ["SHOWSCREEN"] = true;
    ["ESCAPE_KEY_CLOSES_WINDOWS"] = true;
    ["USE_NPC_COOLDOWN"] = true;
    ["QUICK_GUIDE_REMOVE_COMPLETED"] = true;
    ["QUICK_GUIDE_CLEAR_DELAY"] = 5;
    ["QUICK_GUIDE_USE_TIMER"] = true;

    ["MAINWIN"] = {
        ["VISIBLE"] = true;
        ["X"] = (SCREENWIDTH/2)-225;
        ["Y"] = SCREENHEIGHT/3;
    };

    ["MINIMIZED_ICON"] = {
        ["X"] = SCREENWIDTH/2;
        ["Y"] = SCREENHEIGHT/2;
    };

    ["DANCEWIN"] = {
        ["VISIBLE"] = false;
        ["X"] = (SCREENWIDTH/2)-100;
        ["Y"] = SCREENHEIGHT/3;
    };

    ["BARTERWIN"] = {
        ["VISIBLE"] = false;
        ["X"] = (SCREENWIDTH/2)-100;
        ["Y"] = SCREENHEIGHT/3;
    };

    ["ALTWIN"] = {
        ["VISIBLE"] = false;
        ["X"] = (SCREENWIDTH/2)-100;
        ["Y"] = SCREENHEIGHT/3;
    };

    ["MAZEMAPWIN"] = {
        ["VISIBLE"] = false;
        ["X"] = (SCREENWIDTH/2)-270;
        ["Y"] = SCREENHEIGHT/3;
        ["ORIENTATION"] = NORTH;
        ["AUTO_OPEN_MAP"] = true;
    };

    ["HARVESTMATH_MAZE_ID_WIN"] = {
        ["X"] = (SCREENWIDTH/2)-190;
        ["Y"] = SCREENHEIGHT/3;
    };

    ["EMOTEWIN"] = {
        ["VISIBLE"] = false;
        ["X"] = SCREENWIDTH/2;
        ["Y"] = SCREENHEIGHT/3;
    };

    ["QUICK_GUIDE_WIN"] = {
        ["VISIBLE"] = false;
        ["X"] = SCREENWIDTH/2;
        ["Y"] = SCREENHEIGHT/3;
        ["HEIGHT"] = 320;
    };

    ["NPC_COOLDOWN_WIN"] = {
        ["X"] = SCREENWIDTH/2;
        ["Y"] = SCREENHEIGHT/3;
    };

    ["QSWIN"] = {
        ["VISIBLE"] = false;
        ["X"] = SCREENWIDTH/2;
        ["Y"] = SCREENHEIGHT/3;
    };

    ["EVENT_QUICKSLOT"] = {
        ["VISIBLE"] = false;
        ["X"] = SCREENWIDTH/2;
        ["Y"] = SCREENHEIGHT/3;
    };

    ["IN_PROGRESS_QUESTS"] = {
        -- example:
        -- ["BOUNDER_ROUNDS"] = "FARMERSFAIRE"
    };

    ["QUICK_GUIDE_PROGRESS"] = {
        [MIDSUMMER] = {
        };
        [YULE] = {
        };
        [ILAA] = {
        };
    };

    ["QUICK_GUIDE_QUESTS_TO_USE"] = {
        [MIDSUMMER] = {
            ["A_CURE_FOR_ALL_ILLS"] = true;
            ["AIDING_THE_STABLE_HANDS"] = true;
            ["ARRANGING_ARRANGEMENTS"] = true;
            ["ARTISTIC_DIRECTION"] = true;
            ["FLORAL_CROWNS"] = true;
            ["GROWING_PAINS"] = true;
            ["HONOURING_HEALERS"] = true;
            ["IN_CELEBRATION_OF_MIDSUMMER"] = true;
            ["LOVE_IS_IN_THE_AIR"] = true;
            ["SOMETHING_FLORAL"] = true;
            ["SOMETHING_MISPLACED"] = true;
            ["SWEET_TREATS"] = true;
            ["TASTY_MORSELS"] = true;
            ["TO_THE_LAST_DROP"] = true;
            ["TOSS_A_COIN"] = true;
            ["UNHELPFUL_HOUNDS"] = true;
            ["WEDDING_SUPPLIES"] = true;
            ["WHAT_ALES_YOU"] = true;
        };
        [YULE] = {
            ["A_BROKEN_SNOWMAN"] = true;
            ["A_CHARITABLE_SPIRIT"] = true;
            ["COLD_AS_ICE"] = true;
            ["EMPTY_KEG_EMERGENCY"] = true;
            ["FILLING_THE_FIELD"] = true;
            ["IN_THE_SPIRIT_OF_YULE"] = true;
            ["MAKING_MISCHIEF"] = true;
            ["MOVING_THEM_OFF"] = true;
            ["STUFFING_THE_STUFFED"] = true;
            ["THE_ABOMINABLE_SNOW_BEASTS"] = true;
            ["THE_BIGGEST_STOMACH_OF_THEM_ALL"] = true;
            ["THE_BIGGEST_STOMACH_OF_THEM_ALL_2"] = true;
            ["THE_BIGGEST_STOMACH_OF_THEM_ALL_3"] = true;
            ["THE_BIGGEST_STOMACH_OF_THEM_ALL_4"] = true;
            ["THE_BIGGEST_STOMACH_OF_THEM_ALL_5"] = true;
            ["TIDYING_UP"] = true;
            ["UNWILLING_FIREWOOD"] = true;
        };
        [ILAA] = {
            ["ALL_BUT_THE_CIDER"] = true;
            ["NEVER_FAR_FROM_HOME"] = true;
            ["ONE_DRINK_TOO_MANY"] = true;
            ["QUITE_A_PICKLE"] = true;
            ["A_BIT_OF_BROWN"] = true;
            ["A_REMINDER_OF_RIVENDELL"] = true;
            ["A_MEMBER_IN_NEED"] = true;
            ["A_DRINK_OF_THE_WORST_CHARACTER"] = true;
            ["A_SIMPLE_WINE"] = true;
            ["A_DARK_DAY"] = true;
            ["ATLIS_FAVOURITE"] = true;
            ["ALL_BUT_THE_GOOD_CIDER"] = true;
            ["NEVER_FURTHER_FROM_HOME"] = true;
            ["ONE_DRINK_TOO_FEW"] = true;
            ["QUITE_A_TICKLE"] = true;
            ["A_BIT_OF_WHITE"] = true;
            ["BOMBURS_BREATH"] = true;
            ["A_DIFFERENT_REMINDER_OF_RIVENDELL"] = true;
            ["A_DRINK_OF_THE_BEST_CHARACTER"] = true;
            ["A_CONVOLUTED_WINE"] = true;
            ["A_DARK_PRANK"] = true;
            ["NOT_ATLIS_FAVOURITE"] = true;
        };
    };
};

DEFAULT_SETTINGS_SERVER = {
    ["HARVESTMATH_MAZE_ID"] = {
        ["NUMBER"] = nil;
        ["ID_DATE"] = {};
    };

};

-- Default Account-wide Settings
DEFAULT_SETTINGS_ACCOUNT = {
    ["QUEST_IS_AUTO_OPEN"] =
        {
        -- Farmers Faire
        ["A_SHOPPING_LIST"] = true;
        ["A_MARKET_LIST"] = true;
        ["A_VENDOR_LIST"] = true;
        };

    ["QUEST_IS_BACKGROUNDED"] =
        {
        -- Anniversary
        ["BREEFIREWORKS"] = true;

        -- Farmers Faire
        ["FAT_MAYOR"] = true;
        ["BOUNDER_ROUNDS"] = true;
        };

    ["QUICK_GUIDE"] = {
        ["USE_COLORS"] = true;
        ["COLOR_PICKER_WIN"] = {
            ["X"] = (SCREENWIDTH/2)-100;
            ["Y"] = SCREENHEIGHT/3;
        };
        ["COLORS"] = {
            ["LOCATION"] = {
                ["USE"] = true;
                ["R"] = 0xFF;
                ["G"] = 0x77;
                ["B"] = 0x77;
            };
            ["QUEST"] = {
                ["USE"] = true;
                ["R"] = 0x77;
                ["G"] = 0x77;
                ["B"] = 0xFF;
            };
            ["NPC"] = {
                ["USE"] = true;
                ["R"] = 0x77;
                ["G"] = 0xFF;
                ["B"] = 0x77;
            };
            ["QUEST_ITEM"] = {
                ["USE"] = true;
                ["R"] = 0xCC;
                ["G"] = 0xCC;
                ["B"] = 0xCC;
            };
        };
    };

    ["LOCAL_TIME_OFFSET"] = 0;
};

-- Add quest keys here that should be backgroundable.
-- (Chat monitoring should persist if the quest has been accepted,
--  and not completed / failed, even if the quest is not selected.)
BACKROUNDABLE_QUESTS = {
    -- Anniversary
    ["BREEFIREWORKS"] = true;

    -- Farmers Faire
    ["FAT_MAYOR"] = true;
    ["BOUNDER_ROUNDS"] = true;
};

QUICK_GUIDES = {
    [MIDSUMMER] = true;
    [YULE] = true;
    [ILAA] = true;
}

-- The default UI Order for the Festivals Drop Down
FESTIVALS_UI_ORDER = {
    [1] = SPRING;       -- 2024:  3/12@10am	4/1@3am
    [2] = ANNIVERSARY;  -- 2024:  4/18@10am	5/6@3am
    [3] = MIDSUMMER;    -- 2024:  6/6@10am	6/26@3am
    [4] = FARMERSFAIRE; -- 2024:  8/15@10am	9/4@3am
    [5] = HARVESTMATH;  -- 2024: 10/10@10am	11/4@3am
    [6] = YULE;         -- 2024: 12/12@10am	1/6/25@3am

    [7] = HOBNANIGANS;
    [8] = ILAA;
};

DoingTimeOffsetChanged = false;
function SaveTimeOffset(value)
    -- Don't process a save attempt if we're in the middle of broadcasting TimeOffsetChanged:
    if DoingTimeOffsetChanged then return; end

    local offset = tonumber(value);
    SETTINGS_ACCOUNT.LOCAL_TIME_OFFSET = offset;

    DoingTimeOffsetChanged = true
    DoCallbacks(CALLBACKS, "TimeOffsetChanged", offset);
    DoingTimeOffsetChanged = false;
end