_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[FARMERSFAIRE] = {
    [DEFAULT_QUICK_GUIDE] = "Foire des fermiers - Comté";
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[FARMERSFAIRE] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[FARMERSFAIRE][DEFAULT_QUICK_GUIDE] = "\nCe guide a été créé par Cube lors de la Farmers Faire 2026.";

QG_FARMERSFAIRE = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[FARMERSFAIRE][DEFAULT_QUICK_GUIDE];
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SUNNY_FAIRE_DAY_PICKUP].DISPLAY = function() return TakeFromAt2("A_SUNNY_FAIRE_DAY", "CAMPANULA_CHUBB", "Bywater"); end;
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SUNNY_FAIRE_DAY_END].DISPLAY = function() return TurnInTo2("A_SUNNY_FAIRE_DAY", "CAMPANULA_CHUBB"); end;

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_PICKUP].DISPLAY = function() return TakeFrom2("GOING_HUNGRY", "MELILOT_HAYWARD"); end;
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_END].DISPLAY = function() return TurnInTo2("GOING_HUNGRY", "MELILOT_HAYWARD"); end;
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_PORRIDGE].DISPLAY = function() return GetDisplayString("key:620878654:22075073") .. ": à l'extérieur de Cul-de-Sac"; end -- Find Melilot's missing porridge
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_CHEESE].DISPLAY = function() return GetDisplayString("key:620878654:22075074") .. ": dans le Aballon"; end -- Find Melilot's missing cheeses 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_BREAD].DISPLAY = function() return GetDisplayString("key:620878654:22075075") .. ": sur le Pont de Lèzeau"; end -- Find Melilot's missing bread
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_EGG].DISPLAY = function() return GetDisplayString("key:620878654:22075076") .. ": à La Grange"; end -- Find Melilot's missing eggs
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.GOING_HUNGRY_MUSHROOMS].DISPLAY = function() return GetDisplayString("key:620878654:22075077") .. ": à l'est de  La Colline"; end; -- Find Melilot's missing mushrooms

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_PICKUP].DISPLAY = function() return TakeFrom2("TOO_MUCH_FESTIVAL", "FOXGLOVE_TUNNELLY"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_TWINE].DISPLAY = function() return "Trouvez la ficelle de Gantderenard près L'Arbre de la Fête"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_TEAPOT].DISPLAY = function() return "Trouvez la théière de Gantderenard sur la table près du four."; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_WINE].DISPLAY = function() return "Trouvez le vin de Gantderenard sous la tente de la Ligue des Auberges."; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_PARASOL].DISPLAY = function() return "Trouvez le parasol de Gantderenard à côté Gamegie l’Ancien"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_BOOK].DISPLAY = function() return "Trouvez le livre de Gantderenard sur le gros rocher"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.TOO_MUCH_FESTIVAL_END].DISPLAY = function() return TurnInTo2("TOO_MUCH_FESTIVAL", "FOXGLOVE_TUNNELLY"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_PICKUP].DISPLAY = function() return TakeFrom2("FLYING_HIGH", "HARGOLD_HARDBOTTLE"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_1].DISPLAY = function() return "Faites voler le cerf-volant par Aballon"; end -- Based on key:620968322:111477381
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_2].DISPLAY = function() return "Faites voler le cerf-volant au-dessus de Cul-de-Sac."; end -- Based on key:620968322:111477381
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_3].DISPLAY = function() return "Faire voler le cerf-volant près des Champignons de Mélilot"; end -- Based on key:620968322:111477381
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_4].DISPLAY = function() return "Faites voler le cerf-volant à côté du feu de camp"; end -- Based on key:620968322:111477381
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_5].DISPLAY = function() return "Faites voler le cerf-volant au sud de La Grange"; end -- Based on key:620968322:111477381
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FLYING_HIGH_END].DISPLAY = function() return TurnInTo2("FLYING_HIGH", "HARGOLD_HARDBOTTLE"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_PICKUP].DISPLAY = function() return TakeFrom2("CRASH_LANDING", "LILA_ROPER"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_1].DISPLAY = function() return GetDisplayString("key:620968323:111477384") .. ": près du gros rocher"; end -- Recover crashed kites
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_2].DISPLAY = function() return GetDisplayString("key:620968323:111477384") .. ": par L'Arbre de la Fête"; end -- Recover crashed kites
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_3].DISPLAY = function() return GetDisplayString("key:620968323:111477384") .. ": sur la haie"; end -- Recover crashed kites
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_4].DISPLAY = function() return GetDisplayString("key:620968323:111477384") .. ": dans le Aballon"; end -- Recover crashed kites
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_5].DISPLAY = function() return GetDisplayString("key:620968323:111477384") .. ": à Cul-de-Sac"; end -- Recover crashed kites
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_KITE_6].DISPLAY = function() return GetDisplayString("key:620968323:111477384") .. ": au-dessus Cul-de-Sac"; end -- Recover crashed kites
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.CRASH_LANDING_END].DISPLAY = function() return TurnInTo2("CRASH_LANDING", "LILA_ROPER"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_PICKUP].DISPLAY = function() return TakeFrom2("COOLING_OFF", "TANSY_TIGHFIELD"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_JUG].DISPLAY = function() return GetDisplayString("key:620968308:111477379"); end -- "Collect the jug of cool water"
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_1].DISPLAY = function() return GetDisplayString("key:620968308:111477392") .. ": du côté est de L'Arbre de la Fête"; end -- Cool off overheated patrons
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_2].DISPLAY = function() return GetDisplayString("key:620968308:111477392") .. ": du côté sud de L'Arbre de la Fête"; end -- Cool off overheated patrons
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_3].DISPLAY = function() return GetDisplayString("key:620968308:111477392") .. ": sur la route du sud"; end -- Cool off overheated patrons
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_4].DISPLAY = function() return GetDisplayString("key:620968308:111477392") .. ": à l'entrée de La Grange"; end -- Cool off overheated patrons
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_5].DISPLAY = function() return GetDisplayString("key:620968308:111477392") .. ": à l'extérieur de Auberge du Lierre Touffu"; end -- Cool off overheated patrons
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.COOLING_OFF_END].DISPLAY = function() return TurnInTo2("COOLING_OFF", "TANSY_TIGHFIELD"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PICKUP].DISPLAY = function() return TakeFrom2("DEFEAT_THE_HEAT", "TANSY_TIGHFIELD"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_PROGRESS].DISPLAY = function() return GetDisplayString("key:620968205:111477400"); end -- Defeat heat waves
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.DEFEAT_THE_HEAT_END].DISPLAY = function() return TurnInTo2("DEFEAT_THE_HEAT", "TANSY_TIGHFIELD"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_PICKUP].DISPLAY = function() return TakeFrom2("ICE_DELIVERY", "TANSY_TIGHFIELD"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_BLOCK].DISPLAY = function() return "Récupérez le bloc de glace derrière Verbena Mainverte"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_DELIVER].DISPLAY = function() return "Apportez le bloc de glace au stand de glaces."; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.ICE_DELIVERY_END].DISPLAY = function() return TurnInTo2("ICE_DELIVERY", "TANSY_TIGHFIELD"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_PICKUP].DISPLAY = function() return TakeFrom2("BOUNDER_ROUNDS", "BOUNDER_BOFFIN"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_PROGRESS].DISPLAY = function() return GetDisplayString("key:620890679:22075073") end -- Accuse drunkards of disorderly conduct
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.BOUNDER_ROUNDS_END].DISPLAY = function() return TurnInTo2("BOUNDER_ROUNDS", "BOUNDER_BOFFIN"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_PICKUP].DISPLAY = function() return TakeFrom2("REVENGE_OF_THE_DRUNKARDS", "DRUNKARD"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_DRINK].DISPLAY = function() return GetDisplayString("key:620891661:22075073"); end -- Drink a beer to commiserate with the poor harangued drunkard
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_PROGRESS].DISPLAY = function() return GetDisplayString("key:620891661:22075074"); end -- Throw rotten vegetables at the fun-spoiling Bounders
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.REVENGE_OF_THE_DRUNKARDS_END].DISPLAY = function() return TurnInTo2("REVENGE_OF_THE_DRUNKARDS", "DRUNKARD"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FAT_MAYOR_PICKUP].DISPLAY = function() return TakeFrom2("FAT_MAYOR", "WILL_WHITFOOT"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FAT_MAYOR_PROGRESS].DISPLAY = function() return GetDisplayString("key:620889727:22075073"); end -- Bring the mayor something to relieve him
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FAT_MAYOR_END].DISPLAY = function() return TurnInTo2("FAT_MAYOR", "WILL_WHITFOOT"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_PICKUP].DISPLAY = function() return TakeFrom2("FROZEN_SWEET_CREAM", "BLUET_GOLDWORTHY"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_CREAM].DISPLAY = function() return GetDisplayString("key:620968341:111477383"); end -- Collect frozen sweet-cream
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_FRUIT].DISPLAY = function() return GetDisplayString("key:620968341:111477384"); end -- Collect fresh fruit from the market in Bywater
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_HONEY].DISPLAY = function() return GetDisplayString("key:620968341:111477378"); end -- Get honey from the Green Dragon
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_COLLECT_MIX].DISPLAY = function() return GetDisplayString("key:620968341:111477427"); end -- Mix the dessert
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FROZEN_SWEET_CREAM_END].DISPLAY = function() return TravelTurnInTo2("The Party Tree", "FROZEN_SWEET_CREAM", "TANSY_TIGHFIELD"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.MANNING_THE_MARKET_PICKUP].DISPLAY = function() return TakeFrom2("MANNING_THE_MARKET", "DAISY_SANDYMAN"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.MANNING_THE_MARKET_END].DISPLAY = function() return "Veuillez patienter 15 minutes pour que « S'occuper du marché » se complète automatiquement."; end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_PICKUP].DISPLAY = function() return TakeFrom2("A_MARKET_LIST", "CUSTOMER"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_ONION].DISPLAY = function() return "Ramassez le fromage fort les oignons blancs <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_APPLE].DISPLAY = function() return "Ramassez des pommes vertes"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_BREAD].DISPLAY = function() return "Ramassez du pain blanc ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_CHEESE].DISPLAY = function() return "Ramassez les fromages forts ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_MARKET_LIST_END].DISPLAY = function() return TurnInTo2("A_MARKET_LIST", "DAISY_SANDYMAN"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_PICKUP].DISPLAY = function() return TakeFrom2("A_NOSEY_REQUEST", "CUSTOMER"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_ERNWYD].DISPLAY = function() return GetDisplayString("key:620891465:22075073"); end -- Find Ernwyd Bolger and persuade him to return to work
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_OPALESSA].DISPLAY = function() return GetDisplayString("key:620891465:22075074"); end -- Find Opalessa Sandheaver and persuade her to return to work
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_ALRIC].DISPLAY = function() return GetDisplayString("key:620891465:22075075"); end -- Find Alric Hornblower and persuade him to return to work
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_NOSEY_REQUEST_END].DISPLAY = function() return TurnInTo2("A_NOSEY_REQUEST", "DAISY_SANDYMAN"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_PICKUP].DISPLAY = function() return TakeFrom2("A_SHOPPING_LIST", "CUSTOMER"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_RED_ONION].DISPLAY = function() return "Ramassez l'oignon rouge à droite ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_GREEN_APPLE].DISPLAY = function() return "Ramassez une pomme verte"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_LOAF_OF_WHITE_BREAD].DISPLAY = function() return "Ramassez le pain blanc à droite ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_SMALL_HEAD_OF_CABBAGE].DISPLAY = function() return "Ramassez le petit chou à droite ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_HAUNCH_OF_PORK].DISPLAY = function() return "Ramassez le porc à gauche <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_BLOCK_OF_MILD_CHEESE].DISPLAY = function() return "Ramassez le fromage doux à gauche <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_SHOPPING_LIST_END].DISPLAY = function() return TurnInTo2("A_SHOPPING_LIST", "DAISY_SANDYMAN"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_PICKUP].DISPLAY = function() return TakeFrom2("A_VENDOR_LIST", "CUSTOMER"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_CABBAGE].DISPLAY = function() return "Ramassez un gros chou <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_MEAT].DISPLAY = function() return "Ramassez du bacon ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_BREAD].DISPLAY = function() return "Ramassez le pain complet <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_ONION].DISPLAY = function() return "Ramassez l'oignon blanc <-"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_CHEESE].DISPLAY = function() return "Ramassez le fromage fort ->"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.A_VENDOR_LIST_END].DISPLAY = function() return TurnInTo2("A_VENDOR_LIST", "DAISY_SANDYMAN"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_PICKUP].DISPLAY = function() return TakeFrom2("APPLE_SHOPPING", "CUSTOMER"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GREEN].DISPLAY = function() return GetDisplayString("key:620890162:22075073"); end -- Collect green apples
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_RED].DISPLAY = function() return GetDisplayString("key:620890162:22075074"); end -- Collect red apples
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_GOLDEN].DISPLAY = function() return GetDisplayString("key:620890162:22075075"); end -- Collect golden apples
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.APPLE_SHOPPING_END].DISPLAY = function() return TurnInTo2("APPLE_SHOPPING", "DAISY_SANDYMAN"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_PICKUP].DISPLAY = function() return TakeFrom2("FRESH_SAVOURY_MUSHROOM_STEW", "CUSTOMER"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_RECIPE].DISPLAY = function() return GetDisplayString("key:620890264:22075073"); end -- Find the recipe by the oven
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_RECIPE].DISPLAY = function() return GetDisplayString("key:620890264:22075074"); end -- Collect the recipe for Savoury Mushroom Stew
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_BEEF].DISPLAY = function() return "Trouvez le bœuf au rayon viande"; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_BEEF].DISPLAY = function() return GetDisplayString("key:620890264:22075076"); end -- Add beef to the stew
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_SALT].DISPLAY = function() return "Trouvez le sel à côté de la recette"; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_SALT].DISPLAY = function() return GetDisplayString("key:620890264:22075078"); end -- Add the salt to the stew
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_WATER].DISPLAY = function() return "Trouvez l'eau près du puits"; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_WATER].DISPLAY = function() return GetDisplayString("key:620890264:22075080") end -- Add the water to the stew
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_CARROTS].DISPLAY = function() return "Trouvez les carottes près des fruits et légumes"; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_CARROTS].DISPLAY = function() return GetDisplayString("key:620890264:84765776"); end -- Add the carrots to the stew
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_BACON].DISPLAY = function() return "Trouvez le bacon sur l'étagère à viande du fond."; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_BACON].DISPLAY = function() return GetDisplayString("key:620890264:84765778"); end -- Add the bacon to the stew
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_FIND_MUSHROOMS].DISPLAY = function() return "Trouvez les champignons en haut de la colline, au sud, devant la tente."; end -- 
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_MUSHROOMS].DISPLAY = function() return GetDisplayString("key:620890264:84765780"); end -- Add mushrooms to the stew
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_COOK].DISPLAY = function() return GetDisplayString("key:620890264:84765781"); end -- Use the stew-pot to cook the Savoury Mushroom Stew
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.FRESH_SAVOURY_MUSHROOM_STEW_END].DISPLAY = function() return TurnInTo2("FRESH_SAVOURY_MUSHROOM_STEW", "DAISY_SANDYMAN"); end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_PICKUP].DISPLAY = function() return TakeFromAt2("THE_GREAT_MATHOM_FISHING_SWAP", "MELIA_POTT", "Hobbiton-Bywater fishing-hole"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_PROGRESS].DISPLAY = function() return "Poursuivez votre quête avec Melia Pott"; end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.THE_GREAT_MATHOM_FISHING_SWAP_END].DISPLAY = function() return "Attendez 10 minutes pour que « La grande pêche d'échange de mathoms » se complète automatiquement"; end

QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.RESTOCKING_THE_MARKET_PICKUP].DISPLAY = function() return TakeFrom2("RESTOCKING_THE_MARKET", "SPERLING_TOOK"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.RESTOCKING_CABBAGES_PICKUP].DISPLAY = function() return TakeFrom2("RESTOCKING_CABBAGES", "SPERLING_TOOK"); end
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.RESTOCKING_CABBAGES_PROGRESS].DISPLAY = function() return GetDisplayString("key:620890089:22075073"); end -- Collect the basket of eggs (eat pie for a burst of energy)
QG_FARMERSFAIRE[QG_FARMERSFAIRE_INDEX.RESTOCKING_CABBAGES_END].DISPLAY = function() return TurnInTo2("RESTOCKING_CABBAGES", "SPERLING_TOOK"); end
