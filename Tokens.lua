-- _LANG.TOKENS is now split between:
--   TOKEN_IDS - the actual ids for the tokens
--   TOKEN_UI_ORDER - the order the tokens show up in the UI

-- BARTER TOKENS USED AT THE FESTIVALS:
TOKEN_IDS = {
    [SPRING] = {
        ["SPRING_FESTIVAL"] = 0x7001947F;
        ["SPRING_RACE"]     = 0x7001E78B;
        ["SPRING_VIOLET"]   = 0x7000D707;
        ["SPRING_MARIGOLD"] = 0x7000D70A;
        ["SPRING_PRIMROSE"] = 0x7000D709;
    };
    [HARVESTMATH] = {
        ["HARVESTMATH_RACE"]               = 0x7000D145;
        ["HARVESTMATH_FESTIVAL"]           = 0x7000C3A0;

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
    };
    [ANNIVERSARY] = {
        ["ANNIVERSARY_RACE"]     = 0x700255F2;
        ["ANNIVERSARY_FESTIVAL"] = 0x700253D1;

        ["ANNIVERSARY_STEEL"]    = 0x7003E4AF;
    };
    [FARMERSFAIRE] = {
        ["SUMMER_RACE"]           = 0x700107BC;
        ["FARMERSFAIRE_RACE"]     = 0x7002BBD0;
        ["FARMERSFAIRE_FESTIVAL"] = 0x7002ADA3;
        ["FARMERSFAIRE_HADDOCK"]   = 0x70010895;
        ["FARMERSFAIRE_AMBERJACK"] = 0x7001079A;
        ["FARMERSFAIRE_LUILLIM"]   = 0x7001079B;
        ["FARMERSFAIRE_DRUM"]      = 0x7001079C;
        ["FARMERSFAIRE_CELEBHAL"]  = 0x7001079E;
        ["FARMERSFAIRE_GOLDRED"]   = 0x70010899;
        ["FARMERSFAIRE_FLOUNDER"]  = 0x70010894;
        ["FARMERSFAIRE_SMALLFISH"] = 0x70010897;
    };
    [HOBNANIGANS] = {
        ["HOBNANIGANS_TOKEN"]                   = 0x7003ECEF; -- Inventory
        ["HOBNANIGANS_WHITE_CHICKEN_TOKEN"]     = 0x7003ECF4; -- Inventory
        ["HOBNANIGANS_RED_CHICKEN_TOKEN"]       = 0x7003ECF3; -- Inventory
        ["HOBNANIGANS_DORKING_CHICKEN_TOKEN"]   = 0x7003ECF0; -- Inventory
        ["HOBNANIGANS_SCRAPPER_CHICKEN_TOKEN"]  = 0x7003ECEE; -- Inventory
        ["HOBNANIGANS_BLACKFOOT_CHICKEN_TOKEN"] = 0x7003ECF1; -- Inventory
        ["HOBNANIGANS_ORANGE_WYANDOTTE_TOKEN"]  = 0x7003ECF2; -- Inventory
    };
    [MIDSUMMER] = {
        ["MIDSUMMER_TOKEN"] = 0x70057619; -- Wallet
    };
    [ILAA] = {
        ["ILAA_BADGE_OF_TASTE"]     = 0x700216F0;
        ["ILAA_BADGE_OF_DISHONOUR"] = 0x70020F1D;
    };
    
    -- End of Festival specific tokens
    [GENERIC] ={
        ["GENERIC_FESTIVITY"] = 0x07004E472;
        ["GENERIC_MITHRIL"] = 0x70032BB7;
    };
};

-- ORDER OF BARTER TOKENS IN THE UI:
TOKEN_UI_ORDER = {
    [SPRING] = {
        [1] = "SPRING_FESTIVAL";
        [2] = "SPRING_RACE"; -- no longer used?
        [3] = "SPRING_VIOLET";
        [4] = "SPRING_MARIGOLD";
        [5] = "SPRING_PRIMROSE";
    };
    [HARVESTMATH] = {
        [1] = "HARVESTMATH_RACE";
        [2] = "HARVESTMATH_FESTIVAL";

        [3] = "HARVESTMATH_SMALLAPPLE";
        [4] = "HARVESTMATH_MEDIUMAPPLE";
        [5] = "HARVESTMATH_LARGEAPPLE";

        [6] = "HARVESTMATH_CRACKEDGEODE";
        [7] = "HARVESTMATH_PRISTINEGEODE";
        [8] = "HARVESTMATH_FAULTLESSGEODE";

         [9] = "HARVESTMATH_UNIMPRESSIVESCROLL";
        [10] = "HARVESTMATH_WELLWRITTENSCROLL";
        [11] = "HARVESTMATH_ELEGANTSCROLL";

        [12] = "HARVESTMATH_SMALLPUMPKIN";
        [13] = "HARVESTMATH_MEDIUMPUMPKIN";
        [14] = "HARVESTMATH_LARGEPUMPKIN";
    };
    [YULE] = {
        [1] = "YULE_FESTIVAL";
        [2] = "YULE_GOLDFESTIVAL";
        [3] = "YULE_TICKET";
        [4] = "YULE_RACE";
    };
    [ANNIVERSARY] = {
        [1] = "ANNIVERSARY_RACE";
        [2] = "ANNIVERSARY_FESTIVAL";

        [3] = "ANNIVERSARY_STEEL";
    };
    [FARMERSFAIRE] = {
        [1] = "SUMMER_RACE";
        [2] = "FARMERSFAIRE_RACE";
        [3] = "FARMERSFAIRE_FESTIVAL";
        [4] = "FARMERSFAIRE_HADDOCK";
        [5] = "FARMERSFAIRE_AMBERJACK";
        [6] = "FARMERSFAIRE_LUILLIM";
        [7] = "FARMERSFAIRE_DRUM";
        [8] = "FARMERSFAIRE_CELEBHAL";
        [9] = "FARMERSFAIRE_GOLDRED";
        [10] = "FARMERSFAIRE_FLOUNDER";
        [11] = "FARMERSFAIRE_SMALLFISH";
    };
    [HOBNANIGANS] = {
        [1] = "HOBNANIGANS_TOKEN";
        [2] = "HOBNANIGANS_WHITE_CHICKEN_TOKEN";
        [3] = "HOBNANIGANS_RED_CHICKEN_TOKEN";
        [4] = "HOBNANIGANS_DORKING_CHICKEN_TOKEN";
        [5] = "HOBNANIGANS_SCRAPPER_CHICKEN_TOKEN";
        [6] = "HOBNANIGANS_BLACKFOOT_CHICKEN_TOKEN";
        [7] = "HOBNANIGANS_ORANGE_WYANDOTTE_TOKEN";
    };
    [MIDSUMMER] = {
        [1] = "MIDSUMMER_TOKEN";
    };
    [ILAA] = {
        [1] = "ILAA_BADGE_OF_TASTE";
        [2] = "ILAA_BADGE_OF_DISHONOUR";
    };
    [GENERIC] = {
        [1] = "GENERIC_MITHRIL";
        [2] = "GENERIC_FESTIVITY";
    };
};

TOKEN_FESTIVAL_USES_GENERIC_TOKEN = {
    [SPRING] = {
        ["GENERIC_MITHRIL"] = true;
        ["GENERIC_FESTIVITY"] = true;
    };
    [HARVESTMATH] = {
        ["GENERIC_MITHRIL"] = true;
        ["GENERIC_FESTIVITY"] = false;
    };
    [YULE] = {
        ["GENERIC_MITHRIL"] = true;
        ["GENERIC_FESTIVITY"] = false;
    };
    [ANNIVERSARY] = {
        ["GENERIC_MITHRIL"] = true;
        ["GENERIC_FESTIVITY"] = false;
    };
    [FARMERSFAIRE] = {
        ["GENERIC_MITHRIL"] = false;
        ["GENERIC_FESTIVITY"] = false;
    };
    [HOBNANIGANS] = {
        ["GENERIC_MITHRIL"] = true;
        ["GENERIC_FESTIVITY"] = false;
    };
    [MIDSUMMER] = {
        ["GENERIC_MITHRIL"] = true;
        ["GENERIC_FESTIVITY"] = false;
    };
    [ILAA] = {
        ["GENERIC_MITHRIL"] = false;
        ["GENERIC_FESTIVITY"] = false;
    };
};

function GetTokenID(festival, tokenKey)
    local tokenID = TOKEN_IDS[festival][tokenKey];
    if (not tokenID and
        TOKEN_IDS[GENERIC][tokenKey]) then
        tokenID = TOKEN_IDS[GENERIC][tokenKey];
    end
    return tokenID;
end

function GetTokenQuantityFromSaveFile(characterTable, festival, tokenKey)
    if (IsGenericKey(tokenKey)) then
        if (IsGenericTokenAccountWide(tokenKey)) then
            return GetTokenQuantityFromWallet(GENERIC, tokenKey);
        else
            return characterTable[GENERIC]["TOKENS"][tokenKey] or 0;
        end
    else
        return characterTable[festival]["TOKENS"][tokenKey] or 0;
    end
end

function GetTokenQuantityFromWallet(festival, tokenKey)
    local itemId = GetTokenID(festival, tokenKey);
    local item = GetItemFromID(itemId);
    local itemName = item:GetItemInfo():GetName();

    for i=1, MYWALLET:GetSize() do
        local walletItem = MYWALLET:GetItem(i);
        local walletItemName = walletItem:GetName();
        if (itemName == walletItemName) then
            return walletItem:GetQuantity();
        end
    end
    return 0;
end

function IsGenericKey(tokenKey)
    return TOKEN_IDS[GENERIC][tokenKey] ~= nil;
end

function IsGenericTokenAccountWide(tokenKey)
    if (tokenKey == "GENERIC_MITHRIL") then return true; end
    if (tokenKey == "GENERIC_FESTIVITY") then return false; end

    -- Didn't recognise it, default to true.
    return true;
end

function GetItemAndNameFromFestivalAndItemKey(festival, itemKey)
    local itemId = GetTokenID(festival, itemKey);
    local item = GetItemFromID(itemId);
    local itemName = item:GetItemInfo():GetName();
    return item,itemName;
end

function AddNameToKeyForFestival(festival, nameToKeyLookup)
    for tokenUiIndex=1, #TOKEN_UI_ORDER[festival] do
        local tokenKey = TOKEN_UI_ORDER[festival][tokenUiIndex];
        local item,itemName = GetItemAndNameFromFestivalAndItemKey(festival, tokenKey);
        nameToKeyLookup[itemName] = { ["KEY"] = tokenKey; ["ITEM"] = item; };
    end
end

function GetFestivalTokenQuantities(festival)
    local nameToItemAndKeyLookup = {};

    AddNameToKeyForFestival(festival, nameToItemAndKeyLookup);
    AddNameToKeyForFestival(GENERIC, nameToItemAndKeyLookup);

    local festivalTokens = {};

    for i=1, MYWALLET:GetSize() do
        local walletItem = MYWALLET:GetItem(i);
        local itemName = walletItem:GetName();
        if (nameToItemAndKeyLookup[itemName]) then
            festivalTokens[nameToItemAndKeyLookup[itemName].KEY] = {
                ["QUANTITY"] = walletItem:GetQuantity();
                ["ITEM"] = nameToItemAndKeyLookup[itemName].ITEM;
                ["WALLET_ITEM"] = walletItem;
            };
        end
    end

    return festivalTokens;
end

function GetFestivalTokensUIOrder(festival)
    local tokenUIOrder = {};
    for tokenUiIndex=1, #TOKEN_UI_ORDER[festival] do
        table.insert(tokenUIOrder, TOKEN_UI_ORDER[festival][tokenUiIndex]);
    end
    for tokenUiIndex=1, #TOKEN_UI_ORDER[festival] do
        local genericKey = TOKEN_UI_ORDER[GENERIC][tokenUiIndex];
        if (TOKEN_FESTIVAL_USES_GENERIC_TOKEN[festival][genericKey]) then
            table.insert(tokenUIOrder, genericKey);
        end
    end
    return tokenUIOrder;
end

function UpdateTokenSaveValue(festival, tokenKey, quantity)
    if (IsGenericKey(tokenKey)) then
        if (not IsGenericTokenAccountWide(tokenKey)) then
            _CHARDATA.CHARS[MYCHAR:GetName()][GENERIC]["TOKENS"][tokenKey] = quantity;
        end
    else
        _CHARDATA.CHARS[MYCHAR:GetName()][festival]["TOKENS"][tokenKey] = quantity;
    end
end
