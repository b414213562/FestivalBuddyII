-- _LANG.TOKENS is now split between:
--   TOKEN_IDS - the actual ids for the tokens
--   TOKEN_UI_ORDER - the order the tokens show up in the UI

-- BARTER TOKENS USED AT THE FESTIVALS:
TOKEN_IDS = {
    [SPRING] = {
        ["SPRING_FESTIVAL"] = 0x7001947F;
        ["SPRING_MITHRIL"]  = 0x70032BB7;
        ["SPRING_RACE"]     = 0x7001E78B;
        ["SPRING_VIOLET"]   = 0x7000D707;
        ["SPRING_MARIGOLD"] = 0x7000D70A;
        ["SPRING_PRIMROSE"] = 0x7000D709;
    };
    [SUMMER] = {
        ["SUMMER_RACE"]      = 0x700107BC;
        ["SUMMER_FESTIVAL"]  = 0x7001079F;
        ["SUMMER_HADDOCK"]   = 0x70010895;
        ["SUMMER_AMBERJACK"] = 0x7001079A;
        ["SUMMER_LUILLIM"]   = 0x7001079B;
        ["SUMMER_DRUM"]      = 0x7001079C;
        ["SUMMER_CELEBHAL"]  = 0x7001079E;
        ["SUMMER_GOLDRED"]   = 0x70010899;
        ["SUMMER_FLOUNDER"]  = 0x70010894;
        ["SUMMER_SMALLFISH"] = 0x70010897;
        ["SUMMER_MITHRIL"]   = 0x70032BB7;
    };
    [HARVESTMATH] = {
        ["HARVESTMATH_RACE"]               = 0x7000D145;
        ["HARVESTMATH_FESTIVAL"]           = 0x7000C3A0;
        ["HARVESTMATH_MITHRIL"]            = 0x70032BB7;

        ["HARVESTMATH_SMALLAPPLE"]         = 0x7000C39C;
        ["HARVESTMATH_MEDIUMAPPLE"]        = 0x7000C39B;
        ["HARVESTMATH_LARGEAPPLE"]         = 0x7000C39A;

        ["HARVESTMATH_CRACKEDGEODE"]       = 0x7000C396;
        ["HARVESTMATH_PRISTINEGEODE"]      = 0x7000C395;
        ["HARVESTMATH_FAULTLESSGEODE"]     = 0x7000C394;

        ["HARVESTMATH_UNIMPRESSIVESCROLL"] = 0x7000C399;
        ["HARVESTMATH_WELLWRITTENSCROLL"]  = 0x7000C398;
        ["HARVESTMATH_ELEGANTSCROLL"]      = 0x7000C397;

        ["HARVESTMATH_SMALLPUMPKIN"]       = 0x7000C39F;
        ["HARVESTMATH_MEDIUMPUMPKIN"]      = 0x7000C39E;
        ["HARVESTMATH_LARGEPUMPKIN"]       = 0x7000C39D;
    };
    [YULE] = {
        ["YULE_FESTIVAL"]     = 0x70032D81;
        ["YULE_GOLDFESTIVAL"] = 0x700331E4;
        ["YULE_TICKET"]       = 0x7002E769;
        ["YULE_RACE"]         = 0x70018CE7;
        ["YULE_MITHRIL"]      = 0x70032BB7;
    };
    [ANNIVERSARY] = {
        ["ANNIVERSARY_RACE"]     = 0x700255F2;
        ["ANNIVERSARY_FESTIVAL"] = 0x700253D1;

        ["ANNIVERSARY_STEEL"]    = 0x7003E4AF;
        ["ANNIVERSARY_MITHRIL"]  = 0x70032BB7;
    };
    [FARMERSFAIRE] = {
        ["FARMERSFAIRE_RACE"]     = 0x7002BBD0;
        ["FARMERSFAIRE_FESTIVAL"] = 0x7002ADA3;
        ["FARMERSFAIRE_MITHRIL"]  = 0x70032BB7;
    };
    [HOBNANIGANS] = {
        ["HOBNANIGANS_TOKEN"]                   = 0x7003ECEF; -- Inventory
        ["HOBNANIGANS_WHITE_CHICKEN_TOKEN"]     = 0x7003ECF4; -- Inventory
        ["HOBNANIGANS_RED_CHICKEN_TOKEN"]       = 0x7003ECF3; -- Inventory
        ["HOBNANIGANS_DORKING_CHICKEN_TOKEN"]   = 0x7003ECF0; -- Inventory
        ["HOBNANIGANS_SCRAPPER_CHICKEN_TOKEN"]  = 0x7003ECEE; -- Inventory
        ["HOBNANIGANS_BLACKFOOT_CHICKEN_TOKEN"] = 0x7003ECF1; -- Inventory
        ["HOBNANIGANS_ORANGE_WYANDOTTE_TOKEN"]  = 0x7003ECF2; -- Inventory
        ["HOBNANIGANS_MITHRIL"]                 = 0x70032BB7;
    };
    [MIDSUMMER] = {
        ["MIDSUMMER_TOKEN"] = 0x70057619; -- Wallet
        ["MIDSUMMER_MC"]    = 0x70032BB7;
    };
    [ILAA] = {
        ["ILAA_BADGE_OF_TASTE"]     = 0x700216F0;
        ["ILAA_BADGE_OF_DISHONOUR"] = 0x70020F1D;
    };
};

-- ORDER OF BARTER TOKENS IN THE UI:
TOKEN_UI_ORDER = {
    [SPRING] = {
        [1] = "SPRING_FESTIVAL";
        [2] = "SPRING_MITHRIL";
        [3] = "SPRING_RACE"; -- no longer used?
        [4] = "SPRING_VIOLET";
        [5] = "SPRING_MARIGOLD";
        [6] = "SPRING_PRIMROSE";
    };
    [SUMMER] = {
        [1] = "SUMMER_RACE";
        [2] = "SUMMER_FESTIVAL";
        [3] = "SUMMER_HADDOCK";
        [4] = "SUMMER_AMBERJACK";
        [5] = "SUMMER_LUILLIM";
        [6] = "SUMMER_DRUM";
        [7] = "SUMMER_CELEBHAL";
        [8] = "SUMMER_GOLDRED";
        [9] = "SUMMER_FLOUNDER";
        [10] = "SUMMER_SMALLFISH";
        [11] = "SUMMER_MITHRIL";
    };
    [HARVESTMATH] = {
        [1] = "HARVESTMATH_RACE";
        [2] = "HARVESTMATH_FESTIVAL";
        [3] = "HARVESTMATH_MITHRIL";

        [4] = "HARVESTMATH_SMALLAPPLE";
        [5] = "HARVESTMATH_MEDIUMAPPLE";
        [6] = "HARVESTMATH_LARGEAPPLE";

        [7] = "HARVESTMATH_CRACKEDGEODE";
        [8] = "HARVESTMATH_PRISTINEGEODE";
        [9] = "HARVESTMATH_FAULTLESSGEODE";

        [10] = "HARVESTMATH_UNIMPRESSIVESCROLL";
        [11] = "HARVESTMATH_WELLWRITTENSCROLL";
        [12] = "HARVESTMATH_ELEGANTSCROLL";

        [13] = "HARVESTMATH_SMALLPUMPKIN";
        [14] = "HARVESTMATH_MEDIUMPUMPKIN";
        [15] = "HARVESTMATH_LARGEPUMPKIN";
    };
    [YULE] = {
        [1] = "YULE_FESTIVAL";
        [2] = "YULE_GOLDFESTIVAL";
        [3] = "YULE_TICKET";
        [4] = "YULE_RACE";
        [5] = "YULE_MITHRIL";
    };
    [ANNIVERSARY] = {
        [1] = "ANNIVERSARY_RACE";
        [2] = "ANNIVERSARY_FESTIVAL";

        [3] = "ANNIVERSARY_STEEL";
        [4] = "ANNIVERSARY_MITHRIL";
    };
    [FARMERSFAIRE] = {
        [1] = "FARMERSFAIRE_RACE";
        [2] = "FARMERSFAIRE_FESTIVAL";
        [3] = "FARMERSFAIRE_MITHRIL";
    };
    [HOBNANIGANS] = {
        [1] = "HOBNANIGANS_TOKEN";
        [2] = "HOBNANIGANS_WHITE_CHICKEN_TOKEN";
        [3] = "HOBNANIGANS_RED_CHICKEN_TOKEN";
        [4] = "HOBNANIGANS_DORKING_CHICKEN_TOKEN";
        [5] = "HOBNANIGANS_SCRAPPER_CHICKEN_TOKEN";
        [6] = "HOBNANIGANS_BLACKFOOT_CHICKEN_TOKEN";
        [7] = "HOBNANIGANS_ORANGE_WYANDOTTE_TOKEN";
        [8] = "HOBNANIGANS_MITHRIL";
    };
    [MIDSUMMER] = {
        [1] = "MIDSUMMER_TOKEN";
        [2] = "MIDSUMMER_MC";
    };
    [ILAA] = {
        [1] = "ILAA_BADGE_OF_TASTE";
        [2] = "ILAA_BADGE_OF_DISHONOUR";
    };
};