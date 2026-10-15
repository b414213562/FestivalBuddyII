_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[FARMERSFAIRE] = {
    [DEFAULT_QUICK_GUIDE] = "Farmers Faire - Shire";
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[FARMERSFAIRE] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[FARMERSFAIRE][DEFAULT_QUICK_GUIDE] = "\nThis guide created by Cube during Farmers Faire 2026.";

QG_FARMERSFAIRE = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[FARMERSFAIRE][DEFAULT_QUICK_GUIDE];
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SUNNY_FAIRE_DAY_PICKUP, function() return TakeFromAt2("A_SUNNY_FAIRE_DAY", "CAMPANULA_CHUBB", "Bywater"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SUNNY_FAIRE_DAY_END, function() return TurnInTo2("A_SUNNY_FAIRE_DAY", "CAMPANULA_CHUBB"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_PICKUP, function() return TakeFrom2("GOING_HUNGRY", "MELILOT_HAYWARD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_END, function() return TurnInTo2("GOING_HUNGRY", "MELILOT_HAYWARD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_PORRIDGE, function() return GetDisplayString("key:620878654:22075073") .. ": outside Bag End"; end); -- Find Melilot's missing porridge
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_CHEESE, function() return GetDisplayString("key:620878654:22075074") .. ": in the Appledores"; end); -- Find Melilot's missing cheeses
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_BREAD, function() return GetDisplayString("key:620878654:22075075") .. ": on the Bywater Bridge"; end); -- Find Melilot's missing bread
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_EGG, function() return GetDisplayString("key:620878654:22075076") .. ": at The Grange"; end); -- Find Melilot's missing eggs
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_MUSHROOMS, function() return GetDisplayString("key:620878654:22075077") .. "; east of The Hill"; end); -- Find Melilot's missing mushrooms

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_PICKUP, function() return TakeFrom2("TOO_MUCH_FESTIVAL", "FOXGLOVE_TUNNELLY"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_TWINE, function() return "Find Foxglove's Twine by the Party Tree"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_TEAPOT, function() return "Find Foxglove's Teapot on the table by the oven"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_WINE, function() return "Find Foxglove's Wine in the Inn League tent"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_PARASOL, function() return "Foxglove's Parasol next to the Gaffer"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_BOOK, function() return "Find Foxglove's Book on the big rock"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_END, function() return TurnInTo2("TOO_MUCH_FESTIVAL", "FOXGLOVE_TUNNELLY"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_PICKUP, function() return TakeFrom2("FLYING_HIGH", "HARGOLD_HARDBOTTLE"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_1, function() return "Fly kite by Appledores"; end); -- Based on key:620968322:111477381
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_2, function() return "Fly kite above Bag End"; end); -- Based on key:620968322:111477381
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_3, function() return "Fly kite near the missing mushrooms"; end); -- Based on key:620968322:111477381
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_4, function() return "Fly kite next to camp site fire"; end); -- Based on key:620968322:111477381
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_5, function() return "Fly kite south of The Grange"; end); -- Based on key:620968322:111477381
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_END, function() return TurnInTo2("FLYING_HIGH", "HARGOLD_HARDBOTTLE"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_PICKUP, function() return TakeFrom2("CRASH_LANDING", "LILA_ROPER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_1, function() return GetDisplayString("key:620968323:111477384") .. ": by the big rock"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_2, function() return GetDisplayString("key:620968323:111477384") .. ": by the Party Tree"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_3, function() return GetDisplayString("key:620968323:111477384") .. ": on the hedgerow"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_4, function() return GetDisplayString("key:620968323:111477384") .. ": in the Appledores"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_5, function() return GetDisplayString("key:620968323:111477384") .. ": outside Bag End"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_6, function() return GetDisplayString("key:620968323:111477384") .. ": above Bag End"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_END, function() return TurnInTo2("CRASH_LANDING", "LILA_ROPER"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_PICKUP, function() return TakeFrom2("COOLING_OFF", "TANSY_TIGHFIELD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_JUG, function() return GetDisplayString("key:620968308:111477379"); end); -- "Collect the jug of cool water"
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_1, function() return GetDisplayString("key:620968308:111477392") .. ": on the east side of the Party Tree"; end); -- Cool off overheated patrons
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_2, function() return GetDisplayString("key:620968308:111477392") .. ": on the south side of the Party Tree"; end); -- Cool off overheated patrons
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_3, function() return GetDisplayString("key:620968308:111477392") .. ": on the road south"; end); -- Cool off overheated patrons
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_4, function() return GetDisplayString("key:620968308:111477392") .. ": at the entrance to The Grange"; end); -- Cool off overheated patrons
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_5, function() return GetDisplayString("key:620968308:111477392") .. ": outside The Ivy Bush Inn"; end); -- Cool off overheated patrons
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_END, function() return TurnInTo2("COOLING_OFF", "TANSY_TIGHFIELD"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PICKUP, function() return TakeFrom2("DEFEAT_THE_HEAT", "TANSY_TIGHFIELD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PROGRESS, function() return GetDisplayString("key:620968205:111477400"); end); -- Defeat heat waves
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_END, function() return TurnInTo2("DEFEAT_THE_HEAT", "TANSY_TIGHFIELD"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_PICKUP, function() return TakeFrom2("ICE_DELIVERY", "TANSY_TIGHFIELD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_BLOCK, function() return "Pick up the Ice Block behind Verbena Greenhand"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_DELIVER, function() return "Deliver the ice block to the frozen sweet-cream stand"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_END, function() return TurnInTo2("ICE_DELIVERY", "TANSY_TIGHFIELD"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_PICKUP, function() return TakeFrom2("BOUNDER_ROUNDS", "BOUNDER_BOFFIN"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_PROGRESS, function() return GetDisplayString("key:620890679:22075073") end); -- Accuse drunkards of disorderly conduct
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_END, function() return TurnInTo2("BOUNDER_ROUNDS", "BOUNDER_BOFFIN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_PICKUP, function() return TakeFrom2("REVENGE_OF_THE_DRUNKARDS", "DRUNKARD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_DRINK, function() return GetDisplayString("key:620891661:22075073"); end); -- Drink a beer to commiserate with the poor harangued drunkard
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_PROGRESS, function() return GetDisplayString("key:620891661:22075074"); end); -- Throw rotten vegetables at the fun-spoiling Bounders
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_END, function() return TurnInTo2("REVENGE_OF_THE_DRUNKARDS", "DRUNKARD"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FAT_MAYOR_PICKUP, function() return TakeFrom2("FAT_MAYOR", "WILL_WHITFOOT"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FAT_MAYOR_PROGRESS, function() return GetDisplayString("key:620889727:22075073"); end); -- Bring the mayor something to relieve him
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FAT_MAYOR_END, function() return TurnInTo2("FAT_MAYOR", "WILL_WHITFOOT"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_PICKUP, function() return TakeFrom2("FROZEN_SWEET_CREAM", "BLUET_GOLDWORTHY"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_CREAM, function() return GetDisplayString("key:620968341:111477383"); end); -- Collect frozen sweet-cream
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_FRUIT, function() return GetDisplayString("key:620968341:111477384"); end); -- Collect fresh fruit from the market in Bywater
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_HONEY, function() return GetDisplayString("key:620968341:111477378"); end); -- Get honey from the Green Dragon
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_MIX, function() return GetDisplayString("key:620968341:111477427"); end); -- Mix the dessert
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_END, function() return TravelTurnInTo2("The Party Tree", "FROZEN_SWEET_CREAM", "TANSY_TIGHFIELD"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.MANNING_THE_MARKET_PICKUP, function() return TakeFrom2("MANNING_THE_MARKET", "DAISY_SANDYMAN"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.MANNING_THE_MARKET_END, function() return "Wait 15 minutes for Manning the Market to auto-complete."; end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_PICKUP, function() return TakeFrom2("A_MARKET_LIST", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_ONION, function() return "Collect white onion <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_APPLE, function() return "Collect green apple"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_BREAD, function() return "Collect white bread ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_CHEESE, function() return "Collect sharp cheese ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_END, function() return TurnInTo2("A_MARKET_LIST", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_PICKUP, function() return TakeFrom2("A_NOSEY_REQUEST", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_ERNWYD, function() return GetDisplayString("key:620891465:22075073"); end); -- Find Ernwyd Bolger and persuade him to return to work
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_OPALESSA, function() return GetDisplayString("key:620891465:22075074"); end); -- Find Opalessa Sandheaver and persuade her to return to work
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_ALRIC, function() return GetDisplayString("key:620891465:22075075"); end); -- Find Alric Hornblower and persuade him to return to work
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_END, function() return TurnInTo2("A_NOSEY_REQUEST", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_PICKUP, function() return TakeFrom2("A_SHOPPING_LIST", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_RED_ONION, function() return "Collect red onion on right ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_GREEN_APPLE, function() return "Collect green apple"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_LOAF_OF_WHITE_BREAD, function() return "Collect white bread on right ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_SMALL_HEAD_OF_CABBAGE, function() return "Collect small cabbage on right ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_HAUNCH_OF_PORK, function() return "Collect pork on left <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_BLOCK_OF_MILD_CHEESE, function() return "Collect mild cheese on left <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_END, function() return TurnInTo2("A_SHOPPING_LIST", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_PICKUP, function() return TakeFrom2("A_VENDOR_LIST", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_CABBAGE, function() return "Collect large cabbage <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_MEAT, function() return "Collect bacon ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_BREAD, function() return "Collect brown bread <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_ONION, function() return "Collect white onion <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_CHEESE, function() return "Collect sharp cheese ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_END, function() return TurnInTo2("A_VENDOR_LIST", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_PICKUP, function() return TakeFrom2("APPLE_SHOPPING", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GREEN, function() return GetDisplayString("key:620890162:22075073"); end); -- Collect green apples
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_RED, function() return GetDisplayString("key:620890162:22075074"); end); -- Collect red apples
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GOLDEN, function() return GetDisplayString("key:620890162:22075075"); end); -- Collect golden apples
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_END, function() return TurnInTo2("APPLE_SHOPPING", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_PICKUP, function() return TakeFrom2("FRESH_SAVOURY_MUSHROOM_STEW", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_RECIPE, function() return GetDisplayString("key:620890264:22075073"); end); -- Find the recipe by the oven
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_RECIPE, function() return GetDisplayString("key:620890264:22075074"); end); -- Collect the recipe for Savoury Mushroom Stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_BEEF, function() return "Find the beef in the meat section"; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_BEEF, function() return GetDisplayString("key:620890264:22075076"); end); -- Add beef to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_SALT, function() return "Find the salt next to the recipe"; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_SALT, function() return GetDisplayString("key:620890264:22075078"); end); -- Add the salt to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_WATER, function() return "Find the water next to the well"; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_WATER, function() return GetDisplayString("key:620890264:22075080") end); -- Add the water to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_CARROTS, function() return "Find the carrots by the produce"; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_CARROTS, function() return GetDisplayString("key:620890264:84765776"); end); -- Add the carrots to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_BACON, function() return "Find the bacon on the rear meat shelf"; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_BACON, function() return GetDisplayString("key:620890264:84765778"); end); -- Add the bacon to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_MUSHROOMS, function() return "Find the mushrooms up the hill to the south in front of the tent"; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_MUSHROOMS, function() return GetDisplayString("key:620890264:84765780"); end); -- Add mushrooms to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_COOK, function() return GetDisplayString("key:620890264:84765781"); end); -- Use the stew-pot to cook the Savoury Mushroom Stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_END, function() return TurnInTo2("FRESH_SAVOURY_MUSHROOM_STEW", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_PICKUP, function() return TakeFromAt2("THE_GREAT_MATHOM_FISHING_SWAP", "MELIA_POTT", "Hobbiton-Bywater fishing-hole"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_PROGRESS, function() return "Continue quest with Melia Pott"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_END, function() return "Wait 10 minutes for The Great Mathom Fishing Swap to auto-complete."; end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.RESTOCKING_THE_MARKET_PICKUP, function() return TakeFrom2("RESTOCKING_THE_MARKET", "SPERLING_TOOK"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.RESTOCKING_CABBAGES_PICKUP, function() return TakeFrom2("RESTOCKING_CABBAGES", "SPERLING_TOOK"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.RESTOCKING_CABBAGES_PROGRESS, function() return GetDisplayString("key:620890089:22075073"); end); -- Collect the basket of eggs (eat pie for a burst of energy)
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.RESTOCKING_CABBAGES_END, function() return TurnInTo2("RESTOCKING_CABBAGES", "SPERLING_TOOK"); end);
