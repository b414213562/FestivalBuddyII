
_V10_FESTIVAL_TOKEN_DATA = {
    [1] = { -- SPRING
        [1] = "SPRING_FESTIVAL";
        [2] = "SPRING_MITHRIL";
        [3] = "SPRING_RACE";
        [4] = "SPRING_VIOLET";
        [5] = "SPRING_MARIGOLD";
        [6] = "SPRING_PRIMROSE";
    };
    [2] = { -- SUMMER
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
    [3] = { -- HARVESTMATH
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
    [4] = { -- YULE
        [1] = "YULE_FESTIVAL";
        [2] = "YULE_GOLDFESTIVAL";
        [3] = "YULE_TICKET";
        [4] = "YULE_RACE";
        [5] = "YULE_MITHRIL";
    };
    [5] = { -- ANNIVERSARY
        [1] = "ANNIVERSARY_RACE";
        [2] = "ANNIVERSARY_FESTIVAL";
        [3] = "ANNIVERSARY_STEEL";
        [4] = "ANNIVERSARY_MITHRIL";
    };
    [6] = { -- FARMERSFAIRE
        [1] = "FARMERSFAIRE_RACE";
        [2] = "FARMERSFAIRE_FESTIVAL";
        [3] = "FARMERSFAIRE_MITHRIL";
    };
    [7] = { -- HOBNANIGANS
        [1] = "HOBNANIGANS_TOKEN";
        [2] = "HOBNANIGANS_WHITE_CHICKEN_TOKEN";
        [3] = "HOBNANIGANS_RED_CHICKEN_TOKEN";
        [4] = "HOBNANIGANS_DORKING_CHICKEN_TOKEN";
        [5] = "HOBNANIGANS_SCRAPPER_CHICKEN_TOKEN";
        [6] = "HOBNANIGANS_BLACKFOOT_CHICKEN_TOKEN";
        [7] = "HOBNANIGANS_ORANGE_WYANDOTTE_TOKEN";
        [8] = "HOBNANIGANS_MITHRIL";
    };
    [8] = { -- MIDSUMMER
        [1] = "MIDSUMMER_TOKEN";
        [2] = "MIDSUMMER_MC";
    };
    [9] = { -- ILAA
        [1] = "ILAA_BADGE_OF_TASTE";
        [2] = "ILAA_BADGE_OF_DISHONOUR";
    };
};

-- Table for moving some SUMMER tokens under FARMERS FAIRE
-- If an entry is here, it should be moved from SUMMER to FARMERS FAIRE under the new name.
-- If an entry is not here, the data should not be copied. (e.g. SUMMER festival tokens)
_V10_to_V20_SUMMER_TO_FARMERSFAIRE_TOKEN_KEYS = {
    -- Old Summer token  = New Farmers Faire token
    ["SUMMER_RACE"]      = "SUMMER_RACE";
    ["SUMMER_HADDOCK"]   = "FARMERSFAIRE_HADDOCK";
    ["SUMMER_AMBERJACK"] = "FARMERSFAIRE_AMBERJACK";
    ["SUMMER_LUILLIM"]   = "FARMERSFAIRE_LUILLIM";
    ["SUMMER_DRUM"]      = "FARMERSFAIRE_DRUM";
    ["SUMMER_CELEBHAL"]  = "FARMERSFAIRE_CELEBHAL";
    ["SUMMER_GOLDRED"]   = "FARMERSFAIRE_GOLDRED";
    ["SUMMER_FLOUNDER"]  = "FARMERSFAIRE_FLOUNDER";
    ["SUMMER_SMALLFISH"] = "FARMERSFAIRE_SMALLFISH";
};

_V10_TOKENS_TO_DELETE = {
    [1] = { -- SPRING
        [2] = "SPRING_MITHRIL";
    };
    [3] = { -- HARVESTMATH
        [3] = "HARVESTMATH_MITHRIL";
    };
    [4] = { -- YULE
        [5] = "YULE_MITHRIL";
    };
    [5] = { -- ANNIVERSARY
        [4] = "ANNIVERSARY_MITHRIL";
    };
    [6] = { -- FARMERSFAIRE
        [3] = "FARMERSFAIRE_MITHRIL";
    };
    [7] = { -- HOBNANIGANS
        [8] = "HOBNANIGANS_MITHRIL";
    };
    [8] = { -- MIDSUMMER
        [2] = "MIDSUMMER_MC";
    };
};

-- This function converts this:
-- ["Dief"] = {
--   ["1"] = { -- SPRING
--     ["TOKENS"] = 
--     {
--         ["1"] = "28",
--         ["3"] = "0",
--         ["2"] = "98",
--         ["5"] = "0",
--         ["4"] = "0",
--         ["6"] = "0"
--     }
-- to this:
-- ["Dief"] = {
--   ["1"] = {
--     ["TOKENS"] = 
--     {
--        ["SPRING_FESTIVAL"] = "28";
--        ["SPRING_MITHRIL"]  = "0";
--        ["SPRING_RACE"]     = "98";
--        ["SPRING_VIOLET"]   = "0";
--        ["SPRING_MARIGOLD"] = "0";
--        ["SPRING_PRIMROSE"] = "0";
--     }

--- Updates the TOKENs save file table to be indexed by the token key instead of the UI display index.
--- Also merges the SUMMER tokens into the FARMERS FAIRE tokens.
--- Also deletes old Mithril Coin entries in favor of the new GENERIC system.
---@param charsTable any
function Update_tokens_from_v10_to_v20(charsTable)
    -- For each player's festival data:
    for charName,festivalsTable in pairs(charsTable) do
        -- For each festival in the festival data:
        for festivalNumber, festivalData in pairs(festivalsTable) do
            -- Fix up the TOKENS table:
            local newTOKENS = { };
            for tokenNumber, tokenCount in pairs(festivalData.TOKENS) do
                local tokenName = _V10_FESTIVAL_TOKEN_DATA[festivalNumber][tokenNumber];

                -- Skip any tokens we're deleting
                if (not _V10_TOKENS_TO_DELETE[festivalNumber] or
                    not _V10_TOKENS_TO_DELETE[festivalNumber][tokenNumber]) then
                    newTOKENS[tokenName] = tokenCount;
                end
            end
            festivalData.TOKENS = newTOKENS;
        end

        -- Merge SUMMER into FARMERS FAIRE:
        local summerFestivalNumber = 2;
        local farmersfaireFestivalNumber = 6;
        for tokenKey, tokenCount in pairs(festivalsTable[summerFestivalNumber].TOKENS) do
            local newKey = _V10_to_V20_SUMMER_TO_FARMERSFAIRE_TOKEN_KEYS[tokenKey]; 
            if (newKey) then
                festivalsTable[farmersfaireFestivalNumber].TOKENS[newKey] = tokenCount;
            end
        end

        -- And add a GENERIC table:
        local genericFestivalNumber = 10;
        if festivalsTable[genericFestivalNumber] == nil then festivalsTable[genericFestivalNumber] = {}; end
        if festivalsTable[genericFestivalNumber]["TOKENS"] == nil then festivalsTable[genericFestivalNumber]["TOKENS"] = {}; end

        for k,v in pairs (TOKEN_IDS[GENERIC]) do
            if (not IsGenericTokenAccountWide(k)) then
                if festivalsTable[genericFestivalNumber]["TOKENS"][k] == nil then
                    festivalsTable[genericFestivalNumber]["TOKENS"][k] = 0;
                end
            end
        end

    end

end
