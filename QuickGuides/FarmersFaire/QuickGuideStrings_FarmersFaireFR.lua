_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[FARMERSFAIRE] = {
    [DEFAULT_QUICK_GUIDE] = "Foire des fermiers - Comté";
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[FARMERSFAIRE] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[FARMERSFAIRE][DEFAULT_QUICK_GUIDE] = "\nCe guide a été créé par Cube lors de la Farmers Faire 2026.";

QG_FARMERSFAIRE = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[FARMERSFAIRE][DEFAULT_QUICK_GUIDE];
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SUNNY_FAIRE_DAY_PICKUP, function() return TakeFromAt2("A_SUNNY_FAIRE_DAY", "CAMPANULA_CHUBB", "Bywater"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SUNNY_FAIRE_DAY_END, function() return TurnInTo2("A_SUNNY_FAIRE_DAY", "CAMPANULA_CHUBB"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_PICKUP, function() return TakeFrom2("GOING_HUNGRY", "MELILOT_HAYWARD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_END, function() return TurnInTo2("GOING_HUNGRY", "MELILOT_HAYWARD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_PORRIDGE, function() return GetDisplayString("key:620878654:22075073") .. ": à l'extérieur de Cul-de-Sac"; end); -- Find Melilot's missing porridge
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_CHEESE, function() return GetDisplayString("key:620878654:22075074") .. ": dans le Aballon"; end); -- Find Melilot's missing cheeses
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_BREAD, function() return GetDisplayString("key:620878654:22075075") .. ": sur le Pont de Lèzeau"; end); -- Find Melilot's missing bread
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_EGG, function() return GetDisplayString("key:620878654:22075076") .. ": à La Grange"; end); -- Find Melilot's missing eggs
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_MUSHROOMS, function() return GetDisplayString("key:620878654:22075077") .. ": à l'est de  La Colline"; end); -- Find Melilot's missing mushrooms

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_PICKUP, function() return TakeFrom2("TOO_MUCH_FESTIVAL", "FOXGLOVE_TUNNELLY"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_TWINE, function() return "Trouvez la ficelle de Gantderenard près L'Arbre de la Fête"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_TEAPOT, function() return "Trouvez la théière de Gantderenard sur la table près du four."; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_WINE, function() return "Trouvez le vin de Gantderenard sous la tente de la Ligue des Auberges."; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_PARASOL, function() return "Trouvez le parasol de Gantderenard à côté Gamegie l’Ancien"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_BOOK, function() return "Trouvez le livre de Gantderenard sur le gros rocher"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_END, function() return TurnInTo2("TOO_MUCH_FESTIVAL", "FOXGLOVE_TUNNELLY"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_PICKUP, function() return TakeFrom2("FLYING_HIGH", "HARGOLD_HARDBOTTLE"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_1, function() return "Faites voler le cerf-volant par Aballon"; end); -- Based on key:620968322:111477381
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_2, function() return "Faites voler le cerf-volant au-dessus de Cul-de-Sac."; end); -- Based on key:620968322:111477381
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_3, function() return "Faire voler le cerf-volant près des Champignons de Mélilot"; end); -- Based on key:620968322:111477381
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_4, function() return "Faites voler le cerf-volant à côté du feu de camp"; end); -- Based on key:620968322:111477381
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_5, function() return "Faites voler le cerf-volant au sud de La Grange"; end); -- Based on key:620968322:111477381
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FLYING_HIGH_END, function() return TurnInTo2("FLYING_HIGH", "HARGOLD_HARDBOTTLE"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_PICKUP, function() return TakeFrom2("CRASH_LANDING", "LILA_ROPER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_1, function() return GetDisplayString("key:620968323:111477384") .. ": près du gros rocher"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_2, function() return GetDisplayString("key:620968323:111477384") .. ": par L'Arbre de la Fête"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_3, function() return GetDisplayString("key:620968323:111477384") .. ": sur la haie"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_4, function() return GetDisplayString("key:620968323:111477384") .. ": dans le Aballon"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_5, function() return GetDisplayString("key:620968323:111477384") .. ": à Cul-de-Sac"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_6, function() return GetDisplayString("key:620968323:111477384") .. ": au-dessus Cul-de-Sac"; end); -- Recover crashed kites
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.CRASH_LANDING_END, function() return TurnInTo2("CRASH_LANDING", "LILA_ROPER"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_PICKUP, function() return TakeFrom2("COOLING_OFF", "TANSY_TIGHFIELD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_JUG, function() return GetDisplayString("key:620968308:111477379"); end); -- "Collect the jug of cool water"
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_1, function() return GetDisplayString("key:620968308:111477392") .. ": du côté est de L'Arbre de la Fête"; end); -- Cool off overheated patrons
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_2, function() return GetDisplayString("key:620968308:111477392") .. ": du côté sud de L'Arbre de la Fête"; end); -- Cool off overheated patrons
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_3, function() return GetDisplayString("key:620968308:111477392") .. ": sur la route du sud"; end); -- Cool off overheated patrons
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_4, function() return GetDisplayString("key:620968308:111477392") .. ": à l'entrée de La Grange"; end); -- Cool off overheated patrons
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_5, function() return GetDisplayString("key:620968308:111477392") .. ": à l'extérieur de Auberge du Lierre Touffu"; end); -- Cool off overheated patrons
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.COOLING_OFF_END, function() return TurnInTo2("COOLING_OFF", "TANSY_TIGHFIELD"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PICKUP, function() return TakeFrom2("DEFEAT_THE_HEAT", "TANSY_TIGHFIELD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PROGRESS, function() return GetDisplayString("key:620968205:111477400"); end); -- Defeat heat waves
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_END, function() return TurnInTo2("DEFEAT_THE_HEAT", "TANSY_TIGHFIELD"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_PICKUP, function() return TakeFrom2("ICE_DELIVERY", "TANSY_TIGHFIELD"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_BLOCK, function() return "Récupérez le bloc de glace derrière Verbena Mainverte"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_DELIVER, function() return "Apportez le bloc de glace au stand de glaces."; end);
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
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.MANNING_THE_MARKET_END, function() return "Veuillez patienter 15 minutes pour que « S'occuper du marché » se complète automatiquement."; end, 60);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_PICKUP, function() return TakeFrom2("A_MARKET_LIST", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_ONION, function() return "Ramassez le fromage fort les oignons blancs <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_APPLE, function() return "Ramassez des pommes vertes"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_BREAD, function() return "Ramassez du pain blanc ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_CHEESE, function() return "Ramassez les fromages forts ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_END, function() return TurnInTo2("A_MARKET_LIST", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_PICKUP, function() return TakeFrom2("A_NOSEY_REQUEST", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_ERNWYD, function() return GetDisplayString("key:620891465:22075073"); end); -- Find Ernwyd Bolger and persuade him to return to work
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_OPALESSA, function() return GetDisplayString("key:620891465:22075074"); end); -- Find Opalessa Sandheaver and persuade her to return to work
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_ALRIC, function() return GetDisplayString("key:620891465:22075075"); end); -- Find Alric Hornblower and persuade him to return to work
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_END, function() return TurnInTo2("A_NOSEY_REQUEST", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_PICKUP, function() return TakeFrom2("A_SHOPPING_LIST", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_RED_ONION, function() return "Ramassez l'oignon rouge à droite ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_GREEN_APPLE, function() return "Ramassez une pomme verte"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_LOAF_OF_WHITE_BREAD, function() return "Ramassez le pain blanc à droite ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_SMALL_HEAD_OF_CABBAGE, function() return "Ramassez le petit chou à droite ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_HAUNCH_OF_PORK, function() return "Ramassez le porc à gauche <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_BLOCK_OF_MILD_CHEESE, function() return "Ramassez le fromage doux à gauche <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_END, function() return TurnInTo2("A_SHOPPING_LIST", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_PICKUP, function() return TakeFrom2("A_VENDOR_LIST", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_CABBAGE, function() return "Ramassez un gros chou <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_MEAT, function() return "Ramassez du bacon ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_BREAD, function() return "Ramassez le pain complet <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_ONION, function() return "Ramassez l'oignon blanc <-"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_CHEESE, function() return "Ramassez le fromage fort ->"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_END, function() return TurnInTo2("A_VENDOR_LIST", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_PICKUP, function() return TakeFrom2("APPLE_SHOPPING", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GREEN, function() return GetDisplayString("key:620890162:22075073"); end); -- Collect green apples
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_RED, function() return GetDisplayString("key:620890162:22075074"); end); -- Collect red apples
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GOLDEN, function() return GetDisplayString("key:620890162:22075075"); end); -- Collect golden apples
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_END, function() return TurnInTo2("APPLE_SHOPPING", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_PICKUP, function() return TakeFrom2("FRESH_SAVOURY_MUSHROOM_STEW", "CUSTOMER"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_RECIPE, function() return GetDisplayString("key:620890264:22075073"); end); -- Find the recipe by the oven
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_RECIPE, function() return GetDisplayString("key:620890264:22075074"); end); -- Collect the recipe for Savoury Mushroom Stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_BEEF, function() return "Trouvez le bœuf au rayon viande"; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_BEEF, function() return GetDisplayString("key:620890264:22075076"); end); -- Add beef to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_SALT, function() return "Trouvez le sel à côté de la recette"; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_SALT, function() return GetDisplayString("key:620890264:22075078"); end); -- Add the salt to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_WATER, function() return "Trouvez l'eau près du puits"; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_WATER, function() return GetDisplayString("key:620890264:22075080") end); -- Add the water to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_CARROTS, function() return "Trouvez les carottes près des fruits et légumes"; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_CARROTS, function() return GetDisplayString("key:620890264:84765776"); end); -- Add the carrots to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_BACON, function() return "Trouvez le bacon sur l'étagère à viande du fond."; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_BACON, function() return GetDisplayString("key:620890264:84765778"); end); -- Add the bacon to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_MUSHROOMS, function() return "Trouvez les champignons en haut de la colline, au sud, devant la tente."; end); --
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_MUSHROOMS, function() return GetDisplayString("key:620890264:84765780"); end); -- Add mushrooms to the stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_COOK, function() return GetDisplayString("key:620890264:84765781"); end); -- Use the stew-pot to cook the Savoury Mushroom Stew
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_END, function() return TurnInTo2("FRESH_SAVOURY_MUSHROOM_STEW", "DAISY_SANDYMAN"); end);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_PICKUP, function() return TakeFromAt2("THE_GREAT_MATHOM_FISHING_SWAP", "MELIA_POTT", "Hobbiton-Bywater fishing-hole"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_PROGRESS, function() return "Poursuivez votre quête avec Melia Pott"; end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_END, function() return "Attendez 10 minutes pour que « La grande pêche d'échange de mathoms » se complète automatiquement"; end, 60);

SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.RESTOCKING_THE_MARKET_PICKUP, function() return TakeFrom2("RESTOCKING_THE_MARKET", "SPERLING_TOOK"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.RESTOCKING_CABBAGES_PICKUP, function() return TakeFrom2("RESTOCKING_CABBAGES", "SPERLING_TOOK"); end);
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.RESTOCKING_CABBAGES_PROGRESS, function() return GetDisplayString("key:620890089:22075073"); end); -- Collect the basket of eggs (eat pie for a burst of energy)
SetQuickGuideDisplay(QG_FARMERSFAIRE, QG_FARMERSFAIRE_INDEX.RESTOCKING_CABBAGES_END, function() return TurnInTo2("RESTOCKING_CABBAGES", "SPERLING_TOOK"); end);
