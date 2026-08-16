_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[FARMERSFAIRE] = {
    [DEFAULT_QUICK_GUIDE] = "Farmers Faire - Shire";
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[FARMERSFAIRE] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[FARMERSFAIRE][DEFAULT_QUICK_GUIDE] = "\nThis guide created by Cube during Farmers Faire 2026.";

QG_FARMERSFAIRE = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[FARMERSFAIRE][DEFAULT_QUICK_GUIDE];
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SUNNY_FAIRE_DAY_PICKUP].DISPLAY = function() return TakeFromAt("A Sunny Faire Day", "Campanula Chubb", "Bywater"); end;
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SUNNY_FAIRE_DAY_END].DISPLAY = function() return TurnInTo("A Sunny Faire Day", "Campanula Chubb"); end;

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_PICKUP].DISPLAY = function() return TakeFrom("Going Hungry", "Melilot Hayward"); end;
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_END].DISPLAY = function() return TurnInTo("Going Hungry", "Melilot Hayward"); end;
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_PORRIDGE].DISPLAY = function() return "Find Melilot's missing porridge outside Bag End"; end -- key:620878654:22075073
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_CHEESE].DISPLAY = function() return "Find Melilot's missing cheeses in the Appledores"; end -- key:620878654:22075074
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_BREAD].DISPLAY = function() return "Find Melilot's missing bread on the Bywater Bridge"; end -- key:620878654:22075075
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_EGG].DISPLAY = function() return "Find Melilot's missing eggs at The Grange"; end -- key:620878654:22075076
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_MUSHROOMS].DISPLAY = function() return "Find Melilot's missing mushrooms east of The Hill"; end; -- key:620878654:22075077

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_PICKUP].DISPLAY = function() return TakeFrom("Too Much Festival", "Foxglove Tunnelly"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_TWINE].DISPLAY = function() return "Find Foxglove's Twine by the Party Tree"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_TEAPOT].DISPLAY = function() return "Find Foxglove's Teapot on the table by the oven"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_WINE].DISPLAY = function() return "Find Foxglove's Wine in the Inn League tent"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_PARASOL].DISPLAY = function() return "Foxglove's Parasol next to the Gaffer"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_BOOK].DISPLAY = function() return "Find Foxglove's Book on the big rock"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_END].DISPLAY = function() return TurnInTo("Too Much Festival", "Foxglove Tunnelly"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_PICKUP].DISPLAY = function() return TakeFrom("Flying High", "Hargold Hardbottle"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_1].DISPLAY = function() return "Fly kite by Appledores"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_2].DISPLAY = function() return "Fly kite above Bag End"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_3].DISPLAY = function() return "Fly kite near the missing mushrooms"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_4].DISPLAY = function() return "Fly kite next to camp site fire"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_5].DISPLAY = function() return "Fly kite south of The Grange"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_END].DISPLAY = function() return TurnInTo("Flying High", "Hargold Hardbottle"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_PICKUP].DISPLAY = function() return TakeFrom("Crash Landing", "Lila Roper"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_1].DISPLAY = function() return "Recover crashed kite by the big rock"; end -- key:620968323:111477384
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_2].DISPLAY = function() return "Recover crashed kite by the Party Tree"; end -- key:620968323:111477384
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_3].DISPLAY = function() return "Recover crashed kite on the hedgerow"; end -- key:620968323:111477384
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_4].DISPLAY = function() return "Recover crashed kite in the Appledores"; end -- key:620968323:111477384
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_5].DISPLAY = function() return "Recover crashed kite outside Bag End"; end -- key:620968323:111477384
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_6].DISPLAY = function() return "Recover crashed kite above Bag End"; end -- key:620968323:111477384
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_END].DISPLAY = function() return TurnInTo("Crash Landing", "Lila Roper"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_PICKUP].DISPLAY = function() return TakeFrom("Cooling Off", "Tansy Tighfield"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_JUG].DISPLAY = function() return "Collect the jug of cool water"; end -- key:620968308:111477379
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_1].DISPLAY = function() return "Cool off overheated patrons on the east side of the Party Tree"; end -- key:620968308:111477392
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_2].DISPLAY = function() return "Cool off overheated patrons on the south side of the Party Tree"; end -- key:620968308:111477392
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_3].DISPLAY = function() return "Cool off overheated patrons on the road south"; end -- key:620968308:111477392
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_4].DISPLAY = function() return "Cool off overheated patrons at the entrance to The Grange"; end -- key:620968308:111477392
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_5].DISPLAY = function() return "Cool off overheated patrons outside The Ivy Bush Inn"; end -- key:620968308:111477392
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_END].DISPLAY = function() return TurnInTo("Cooling Off", "Tansy Tighfield"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PICKUP].DISPLAY = function() return TakeFrom("Defeat the Heat", "Tansy Tighfield"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PROGRESS].DISPLAY = function() return "Defeat heat waves"; end -- key:620968205:111477400
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_END].DISPLAY = function() return TurnInTo("Defeat the Heat", "Tansy Tighfield"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_PICKUP].DISPLAY = function() return TakeFrom("Ice Delivery", "Tansy Tighfield"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_BLOCK].DISPLAY = function() return "Pick up the Ice Block behind Verbena Greenhand"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_DELIVER].DISPLAY = function() return "Deliver the ice block to the frozen sweet-cream stand"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_END].DISPLAY = function() return TurnInTo("Ice Delivery", "Tansy Tighfield"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_PICKUP].DISPLAY = function() return TakeFrom("Bounder Rounds", "Bounder Boffin"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_PROGRESS].DISPLAY = function() return "Accuse drunkards of disorderly conduct" end -- key:620890679:22075073
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_END].DISPLAY = function() return TurnInTo("Bounder Rounds", "Bounder Boffin"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_PICKUP].DISPLAY = function() return TakeFrom("Revenge of the Drunkards", "Drunkard"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_DRINK].DISPLAY = function() return "Drink a beer to commiserate with the poor harangued drunkard"; end -- key:620891661:22075073
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_PROGRESS].DISPLAY = function() return "Throw rotten vegetables at the fun-spoiling Bounders"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_END].DISPLAY = function() return TurnInTo("Revenge of the Drunkards", "Drunkard"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FAT_MAYOR_PICKUP].DISPLAY = function() return TakeFrom("Fat Mayor", "Will Whitfoot"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FAT_MAYOR_PROGRESS].DISPLAY = function() return "Bring the mayor something to relieve him"; end -- key:620889727:22075073
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FAT_MAYOR_END].DISPLAY = function() return TurnInTo("Fat Mayor", "Will Whitfoot"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_PICKUP].DISPLAY = function() return TakeFrom("Frozen Sweet-cream", "Bluet Goldworthy"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_CREAM].DISPLAY = function() return "Collect frozen sweet-cream"; end -- key:620968341:111477383
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_FRUIT].DISPLAY = function() return "Collect fresh fruit from the market in Bywater"; end -- key:620968341:111477384
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_HONEY].DISPLAY = function() return "Get honey from the Green Dragon"; end -- key:620968341:111477378
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_MIX].DISPLAY = function() return "Mix the dessert"; end -- key:620968341:111477427
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_END].DISPLAY = function() return TravelTurnInTo("The Party Tree", "Frozen Sweet-cream", "Tansy Tighfield"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.MANNING_THE_MARKET_PICKUP].DISPLAY = function() return TakeFrom("Manning the Market", "Daisy Sandyman"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.MANNING_THE_MARKET_END].DISPLAY = function() return "Wait 15 minutes for Manning the Market to auto-complete."; end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_PICKUP].DISPLAY = function() return TakeFrom("A Market List", "Customer"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_ONION].DISPLAY = function() return "Collect white onion <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_APPLE].DISPLAY = function() return "Collect green apple"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_BREAD].DISPLAY = function() return "Collect white bread ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_CHEESE].DISPLAY = function() return "Collect sharp cheese ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_END].DISPLAY = function() return TurnInTo("A Market List", "Daisy Sandyman"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_PICKUP].DISPLAY = function() return TakeFrom("A Nosey Request", "Customer"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_ERNWYD].DISPLAY = function() return "Find Ernwyd Bolger and persuade him to return to work"; end -- key:620891465:22075073
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_OPALESSA].DISPLAY = function() return "Find Opalessa Sandheaver and persuade her to return to work"; end -- key:620891465:22075074
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_ALRIC].DISPLAY = function() return "Find Alric Hornblower and persuade him to return to work"; end -- key:620891465:22075075
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_END].DISPLAY = function() return TurnInTo("A Nosey Request", "Daisy Sandyman"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_PICKUP].DISPLAY = function() return TakeFrom("A Shopping List", "Customer"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_RED_ONION].DISPLAY = function() return "Collect red onion on right ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_GREEN_APPLE].DISPLAY = function() return "Collect green apple"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_LOAF_OF_WHITE_BREAD].DISPLAY = function() return "Collect white bread on right ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_SMALL_HEAD_OF_CABBAGE].DISPLAY = function() return "Collect small cabbage on right ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_HAUNCH_OF_PORK].DISPLAY = function() return "Collect pork on left <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_BLOCK_OF_MILD_CHEESE].DISPLAY = function() return "Collect mild cheese on left <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_END].DISPLAY = function() return TurnInTo("A Shopping List", "Daisy Sandyman"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_PICKUP].DISPLAY = function() return TakeFrom("A Vendor List", "Customer"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_CABBAGE].DISPLAY = function() return "Collect large cabbage <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_MEAT].DISPLAY = function() return "Collect bacon ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_BREAD].DISPLAY = function() return "Collect brown bread <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_ONION].DISPLAY = function() return "Collect white onion <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_CHEESE].DISPLAY = function() return "Collect sharp cheese ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_END].DISPLAY = function() return TurnInTo("A Vendor List", "Daisy Sandyman"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_PICKUP].DISPLAY = function() return TakeFrom("Apple-shopping", "Customer"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GREEN].DISPLAY = function() return "Collect green apples"; end -- key:620890162:22075073
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_RED].DISPLAY = function() return "Collect red apples"; end -- key:620890162:22075074
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GOLDEN].DISPLAY = function() return "Collect golden apples"; end -- key:620890162:22075075
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_END].DISPLAY = function() return TurnInTo("Apple-shopping", "Daisy Sandyman"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_PICKUP].DISPLAY = function() return TakeFrom("Fresh Savoury Mushroom Stew", "Customer"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_RECIPE].DISPLAY = function() return "Find the recipe by the oven"; end -- key:620890264:22075073
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_RECIPE].DISPLAY = function() return "Collect the recipe for Savoury Mushroom Stew"; end -- key:620890264:22075074
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_BEEF].DISPLAY = function() return "Find the beef in the meat section"; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_BEEF].DISPLAY = function() return "Add beef to the stew"; end -- key:620890264:22075076
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_SALT].DISPLAY = function() return "Find the salt next to the recipe"; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_SALT].DISPLAY = function() return "Add the salt to the stew"; end -- key:620890264:22075078
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_WATER].DISPLAY = function() return "Find the water next to the well"; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_WATER].DISPLAY = function() return "Add the water to the stew"; end -- key:620890264:22075080
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_CARROTS].DISPLAY = function() return "Find the carrots by the produce"; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_CARROTS].DISPLAY = function() return "Add the carrots to the stew"; end -- key:620890264:84765776
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_BACON].DISPLAY = function() return "Find the bacon on the rear meat shelf"; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_BACON].DISPLAY = function() return "Add the bacon to the stew"; end -- key:620890264:84765778
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_MUSHROOMS].DISPLAY = function() return "Find the mushrooms up the hill to the south in front of the tent"; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_MUSHROOMS].DISPLAY = function() return "Add mushrooms to the stew"; end -- key:620890264:84765780
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_COOK].DISPLAY = function() return "Use the stew-pot to cook the Savoury Mushroom Stew"; end -- key:620890264:84765781
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_END].DISPLAY = function() return TurnInTo("Fresh Savoury Mushroom Stew", "Daisy Sandyman"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_PICKUP].DISPLAY = function() return TakeFromAt("The Great Mathom Fishing Swap", "Melia Pott", "Hobbiton-Bywater fishing-hole"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_END].DISPLAY = function() return ""; end

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[FARMERSFAIRE] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[FARMERSFAIRE][DEFAULT_QUICK_GUIDE] = {
    ["New Quest: A Sunny Faire Day"] = QG_FARMERSFAIRE_INDEX.A_SUNNY_FAIRE_DAY_PICKUP;
    ["New Quest: Going Hungry"] = QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_PICKUP;
    ["New Quest: Too Much Festival"] = QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_PICKUP;
    ["New Quest: Flying High"] = QG_FARMERSFAIRE_INDEX.FLYING_HIGH_PICKUP;
    ["New Quest: Crash Landing"] = QG_FARMERSFAIRE_INDEX.CRASH_LANDING_PICKUP;
    ["New Quest: Cooling Off"] = QG_FARMERSFAIRE_INDEX.COOLING_OFF_PICKUP;
    ["New Quest: Defeat the Heat"] = QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PICKUP;
    ["New Quest: Ice Delivery"] = QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_PICKUP;
    ["New Quest: Bounder Rounds"] = QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_PICKUP;
    ["New Quest: Revenge of the Drunkards"] = QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_PICKUP;
    ["New Quest: Fat Mayor"] = QG_FARMERSFAIRE_INDEX.FAT_MAYOR_PICKUP;
    ["New Quest: Frozen Sweet-cream"] = QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_PICKUP;
    ["New Quest: Manning the Market"] = QG_FARMERSFAIRE_INDEX.MANNING_THE_MARKET_PICKUP;
    ["New Quest: A Market List"] = QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_PICKUP;
    ["New Quest: A Nosey Request"] = QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_PICKUP;
    ["New Quest: A Shopping List"] = QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_PICKUP;
    ["New Quest: A Vendor List"] = QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_PICKUP;
    ["New Quest: Apple-shopping"] = QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_PICKUP;
    ["New Quest: Fresh Savoury Mushroom Stew"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_PICKUP;
    ["New Quest: The Great Mathom Fishing Swap"] = QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_PICKUP;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[FARMERSFAIRE] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[FARMERSFAIRE][DEFAULT_QUICK_GUIDE] = {
    ["Completed:\nA Sunny Faire Day\n"] = QG_FARMERSFAIRE_INDEX.A_SUNNY_FAIRE_DAY_END;
    ["Completed:\nGoing Hungry\n"] = QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_END;
    ["Completed:\nToo Much Festival\n"] = QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_END;
    ["Completed:\nFlying High\n"] = QG_FARMERSFAIRE_INDEX.FLYING_HIGH_END;
    ["Completed:\nCrash Landing\n"] = QG_FARMERSFAIRE_INDEX.CRASH_LANDING_END;
    ["Completed:\nCooling Off\n"] = QG_FARMERSFAIRE_INDEX.COOLING_OFF_END;
    ["Completed:\nDefeat the Heat\n"] = QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_END;
    ["Completed:\nIce Delivery\n"] = QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_END;
    ["Completed:\nBounder Rounds\n"] = QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_END;
    ["Completed:\nRevenge of the Drunkards\n"] = QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_END;
    ["Completed:\nFat Mayor\n"] = QG_FARMERSFAIRE_INDEX.FAT_MAYOR_END;
    ["Completed:\nFrozen Sweet-cream\n"] = QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_END;
    ["Completed:\nManning the Market\n"] = QG_FARMERSFAIRE_INDEX.MANNING_THE_MARKET_END;
    ["Completed:\nA Market List\n"] = QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_END;
    ["Completed:\nA Nosey Request\n"] = QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_END;
    ["Completed:\nA Shopping List\n"] = QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_END;
    ["Completed:\nA Vendor List\n"] = QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_END;
    ["Completed:\nApple-shopping\n"] = QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_END;
    ["Completed:\nFresh Savoury Mushroom Stew\n"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_END;
    ["Completed:\nThe Great Mathom Fishing Swap\n"] = QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_END;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[FARMERSFAIRE] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[FARMERSFAIRE][DEFAULT_QUICK_GUIDE] = {
    ["You have collected the missing porridge"] = QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_PORRIDGE;      -- key:620878654:136263297
    ["You have collected the missing cheese basket"] = QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_CHEESE;   -- key:620878654:136263298
    ["You have collected the missing bread basket"] = QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_BREAD;     -- key:620878654:136263299
    ["You have collected the missing egg basket"] = QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_EGG;         -- key:620878654:136263300
    ["You have collected the missing mushrooms"] = QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_MUSHROOMS;    -- key:620878654:136263301

    ["Flew a summer kite (1/5)"] = QG_FARMERSFAIRE_INDEX.FLYING_HIGH_1; -- key="key:620968322:177082790"
    ["Flew a summer kite (2/5)"] = QG_FARMERSFAIRE_INDEX.FLYING_HIGH_2; -- key="key:620968322:177082790"
    ["Flew a summer kite (3/5)"] = QG_FARMERSFAIRE_INDEX.FLYING_HIGH_3; -- key="key:620968322:177082790"
    ["Flew a summer kite (4/5)"] = QG_FARMERSFAIRE_INDEX.FLYING_HIGH_4; -- key="key:620968322:177082790"
    ["Flew a summer kite (5/5)"] = QG_FARMERSFAIRE_INDEX.FLYING_HIGH_5; -- key="key:620968322:177082790"
    ["Recovered a crashed kite (1/6)"] = QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_1; -- key:620968323:177082793
    ["Recovered a crashed kite (2/6)"] = QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_2; -- key:620968323:177082793
    ["Recovered a crashed kite (3/6)"] = QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_3; -- key:620968323:177082793
    ["Recovered a crashed kite (4/6)"] = QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_4; -- key:620968323:177082793
    ["Recovered a crashed kite (5/6)"] = QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_5; -- key:620968323:177082793
    ["Recovered a crashed kite (6/6)"] = QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_6; -- key:620968323:177082793

    ["Created a cooling fountain! (1/5)"] = QG_FARMERSFAIRE_INDEX.COOLING_OFF_1; -- key:620968308:177082801
    ["Created a cooling fountain! (2/5)"] = QG_FARMERSFAIRE_INDEX.COOLING_OFF_2; -- key:620968308:177082801
    ["Created a cooling fountain! (3/5)"] = QG_FARMERSFAIRE_INDEX.COOLING_OFF_3; -- key:620968308:177082801
    ["Created a cooling fountain! (4/5)"] = QG_FARMERSFAIRE_INDEX.COOLING_OFF_4; -- key:620968308:177082801
    ["Created a cooling fountain! (5/5)"] = QG_FARMERSFAIRE_INDEX.COOLING_OFF_5; -- key:620968308:177082801
    ["Defeated a heat wave (5/5)"] = QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PROGRESS; -- key:620968205:177082809

    ["Collected the jug of cool water"] = QG_FARMERSFAIRE_INDEX.COOLING_OFF_JUG; -- key:620968308:177082788

    ["Found item (1/5)"] = QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_WINE;
    ["Found item (2/5)"] = QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_TEAPOT;
    ["Found item (3/5)"] = QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_BOOK;
    ["Found item (4/5)"] = QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_TWINE;
    ["Found item (5/5)"] = QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_PARASOL;

    ["You have delivered the ice to the dessert vendor"] = QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_DELIVER;

    ["Collected frozen sweet-cream"] = QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_CREAM; -- key:620968341:177082788
    ["Collected fresh fruit"] = QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_FRUIT; -- key:620968341:177082793
    --["Collected honey"] = QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_HONEY; -- key:620968341:177082768
    ["Mixed the dessert"] = QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_MIX; -- key:620968341:177082772

    ["Drunkard accused (7/7)"] = QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_PROGRESS; -- key:620890679:136263297

    ["Collect a green apple (3/3)"] = QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GREEN; -- key:620890162:136263297
    ["Collected a red apple (6/6)"] = QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_RED; -- key:620890162:136263298
    ["Collected a golden apple (1/1)"] = QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GOLDEN; -- key:620890162:136263299

    ["Ah! There's that recipe."] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_RECIPE; -- key:620890264:136263297
    ["Collected the recipe"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_RECIPE; -- key:620890264:136263298
    ["Ah! There is the beef for the stew."] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_BEEF; -- key:620890264:136263299
    ["Added beef to the stew"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_BEEF; -- key:620890264:136263300
    ["You spot the salt, which is the next ingredient for the stew"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_SALT; -- key:620890264:136263301
    ["Added the salt to the stew"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_SALT; -- key:620890264:136263302
    ["You spot the water, which is the next ingredient for the stew"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_WATER; -- key:620890264:136263303
    ["Added the water to the stew"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_WATER; -- key:620890264:136263304
    ["You spot the carrots, which are the next ingredients for the stew"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_CARROTS; -- key:620890264:136263305
    ["Added the carrots to the stew"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_CARROTS; -- key:620890264:171765008
    ["You spotted bacon, which is next on the list"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_BACON; -- key:620890264:32729281
    ["Added bacon to the stew"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_BACON; -- key:620890264:32729282
    ["You spot mushrooms! That's the main ingredient."] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_MUSHROOMS; -- key:620890264:32729283
    ["Added mushrooms to the stew (2/2)"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_MUSHROOMS; -- key:620890264:32729284
    ["Made a delicious stew!"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_COOK; -- key:620890264:32729285

    ["You have relieved the mayor (6/6)"] = QG_FARMERSFAIRE_INDEX.FAT_MAYOR_PROGRESS; -- key:620889727:136263297

    ["You are now somewhat drunk! Hey...when did all those rotten vegetables get in your inventory?"] = QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_DRINK; -- key:620891661:136263297
    ["Threw an unpleasant-smelling vegetable (10/10)"] = QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_PROGRESS; -- key:620891661:136263298

    ["Convinced Ernwyd Bolger to return to work"] = QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_ERNWYD; -- key:620891465:136263297
    ["Convinced Opalessa Sandheaver to return to work"] = QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_OPALESSA; -- key:620891465:136263298
    ["Convinced Alric Hornblower to return to work"] = QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_ALRIC; -- key:620891465:136263299

    -- ["The reveller says nothing, but departs with a sour look"] = { -- NAME is only used for debugging purposes.
    --     [1] = { ["NAME"] = "Reveller 1"; };
    --     [2] = { ["NAME"] = "Reveller 2"; };
    --     [3] = { ["NAME"] = "Reveller 3"; };
    --     [4] = { ["NAME"] = "Reveller 4"; };
    --     [5] = { ["NAME"] = "Reveller 5"; };
    --     [6] = { ["NAME"] = "Reveller 6"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_CURE_FOR_ALL_ILLS_REVELLERS; };
    -- };
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[FARMERSFAIRE] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[FARMERSFAIRE][DEFAULT_QUICK_GUIDE] = {
    ["Defeated a heat wave %((%d+)/(%d+)%)"] = QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PROGRESS; -- key:620968205:177082809
    ["Drunkard accused %((%d+)/(%d+)%)"] = QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_PROGRESS; -- key:620890679:136263297
    ["Collect a green apple %((%d+)/(%d+)%)"] = QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GREEN; -- key:620890162:136263297
    ["Collected a red apple %((%d+)/(%d+)%)"] = QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_RED; -- key:620890162:136263298
    ["Collected a golden apple %((%d+)/(%d+)%)"] = QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GOLDEN; -- key:620890162:136263299
    ["Added mushrooms to the stew %((%d+)/(%d+)%)"] = QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_MUSHROOMS; -- key:620890264:32729284
    ["You have relieved the mayor %((%d+)/(%d+)%)"] = QG_FARMERSFAIRE_INDEX.FAT_MAYOR_PROGRESS; -- key:620889727:136263297
    ["Threw an unpleasant%-smelling vegetable %((%d+)/(%d+)%)"] = QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_PROGRESS; -- key:620891661:136263298

};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[FARMERSFAIRE] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[FARMERSFAIRE][DEFAULT_QUICK_GUIDE] = {
    [1] = { ["NAME"] = "Ice Block"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_BLOCK; }; -- itemId="1879088589"
    [2] = { ["NAME"] = "Barmy Rootknot"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_HONEY; ["REQUIRE_ACTIVE_QUEST"] = true; };

    [3] = { ["NAME"] = "Cabbage"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_SMALL_HEAD_OF_CABBAGE; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [4] = { ["NAME"] = "Apple"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_GREEN_APPLE; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [5] = { ["NAME"] = "Meat"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_HAUNCH_OF_PORK; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [6] = { ["NAME"] = "Bread"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_LOAF_OF_WHITE_BREAD; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [7] = { ["NAME"] = "Onion"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_RED_ONION; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [8] = { ["NAME"] = "Cheese"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_BLOCK_OF_MILD_CHEESE; ["REQUIRE_ACTIVE_QUEST"] = true; };

    [9] = { ["NAME"]  = "Apple"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_APPLE; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [10] = { ["NAME"]  = "Bread"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_BREAD; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [11] = { ["NAME"]  = "Onion"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_ONION; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [12] = { ["NAME"]  = "Cheese"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_CHEESE; ["REQUIRE_ACTIVE_QUEST"] = true; };

    [13] = { ["NAME"] = "Cabbage"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_CABBAGE; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [14] = { ["NAME"] = "Meat"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_MEAT; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [15] = { ["NAME"] = "Bread"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_BREAD; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [16] = { ["NAME"] = "Onion"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_ONION; ["REQUIRE_ACTIVE_QUEST"] = true; };
    [17] = { ["NAME"] = "Cheese"; ["INDEX"] = QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_CHEESE; ["REQUIRE_ACTIVE_QUEST"] = true; };
};






