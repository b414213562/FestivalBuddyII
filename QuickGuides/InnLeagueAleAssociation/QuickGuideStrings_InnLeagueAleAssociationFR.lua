
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[ILAA] = {
    [DEFAULT_QUICK_GUIDE] = "LRH Hunter-enabled";
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[ILAA] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[ILAA][DEFAULT_QUICK_GUIDE] = "\nCe guide est basé sur l'excellent guide de LilRedHead sur https://lifebeyondtheshire.com/inn-league-and-ale-association-hunter-assisted-speedy-delivery-run/. Merci LRH !";

QG_ILAA = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[ILAA][DEFAULT_QUICK_GUIDE];
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_WHITE_PICKUP, function() return string.format("In %s, take %s from %s", HighlightLocation("l'Auberge du Palais de Thorin"), HighlightQuest("Un soupçon de blanc"), HighlightNpc("Aubergiste de la Confrérie de la cervoise")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_CONVOLUTED_WINE_PICKUP, function() return string.format("Take %s", HighlightQuest("Un vin alambiqué")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_PRANK_PICKUP, function() return string.format("Take %s", HighlightQuest("Une sombre farce")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_PICKUP, function() return string.format("Take %s", HighlightQuest("Un souvenir différent de Fondcombe")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_PICKUP, function() return string.format("Take %s", HighlightQuest("Une boisson vraiment délicieuse")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_PICKUP, function() return string.format("Take %s", HighlightQuest("Tout sauf le bon cidre")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.BOMBURS_BREATH_PICKUP, function() return string.format("Take %s", HighlightQuest("Souffle de Bombur")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_PICKUP, function() return string.format("Take %s", HighlightQuest("Toujours plus près de la maison")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_PICKUP, function() return string.format("Take %s", HighlightQuest("Atli n'apprécie pas trop")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_PICKUP, function() return string.format("Take %s", HighlightQuest("Un verre en moins")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_TICKLE_PICKUP, function() return string.format("Take %s", HighlightQuest("Ça chatouille")); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_TICKLE_DRINK, function() return CollectFromNpc("Fausse bière de Ventrécharde", "Rúnulf"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_TICKLE_END, function() return string.format("Travel to %s, turn in %s to %s.", HighlightLocation("Ost Haer en Harloeg"), HighlightQuest("Ça chatouille"), HighlightNpc("Wald Larmoise")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_PICKLE_PICKUP, function() return TakeFrom("Un problème épineux", "Wald Larmoise"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_PICKLE_DRINK, function() return CollectFromLocation("Pinte de bière de Ventrécharde", "Auberge du Lierre Touffu en Hobbitebourg"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_PICKLE_END, function() return TurnInTo("Un problème épineux", "Wald Larmoise"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_DRINK, function() return TravelCollectFrom("Au Poney Fringant en Bree", "Faux Cépage de Limael", "Prosper Poiredebeurré"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_DRINK, function() return CollectFromNpc("Fausse Bière abandonnée", "Prosper Poiredebeurré"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_END, function() return TravelTurnInTo("Pavillon de chasse de Thrasi", "Un verre en moins", "Alrek"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_PICKUP, function() return TakeFrom("Un verre de trop", "Alrek"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_DRINK, function() return CollectFromLocation("Pinte de Bière Abandonnée", "L'Auberge Abandonnée, Les Terres Solitaires"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_END, function() return TurnInTo("Un verre de trop", "Alrek"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_END, function() return TravelTurnInTo("Chantier de Lépineux en Pays de Bree", "Toujours plus près de la maison", "Wesley Sautebois"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_PICKUP, function() return TakeFrom("Toujours près de la maison", "Wesley Sautebois"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_DRINK, function() return CollectFromLocation("Bouteille de Cépage de Limael", "Vignoble de Limael, Ered Luin"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_END, function() return TurnInTo("Toujours près de la maison", "Wesley Sautebois"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_DRINK, function() return TravelCollectFrom("L'Auberge Abandonnée en Les Terres Solitaires", "Faux cidre des Etoiles d'Antan", "Anlaf le Mélancolique"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_CONVOLUTED_WINE_DRINK, function() return TravelCollectFrom("Auberge de l'Oiseau et du Nourrisson en Grand'Cave", "Fausse cuvée du Brandevin", "Carlo Noirbosquet"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_WHITE_DRINK, function() return TravelCollectFrom("Auberge du Lierre Touffu Inn en Hobbitebourg", "Fausse bière brune de Noirbosquet", "Hereward Badeterre"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.BOMBURS_BREATH_DRINK, function() return TravelCollectFrom("Le Dragon Vert en Lèzeau", "Fausse Bière Barbe de Bombur", "Bardol Nœuderacine"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_DRINK, function() return CollectFromNpc("Fausse bière blonde de Brisebec", "Bardol Nœuderacine"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_PRANK_DRINK, function() return TravelCollectFrom("Auberge de la Bûche Flottante en Lagrenouillère", "Fausse bière du sanglier des landes", "Ponto Fleurdehoublon"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.BOMBURS_BREATH_END, function() return TravelTurnInTo("Othrikar en Les Hauts du Nord", "Souffle de Bombur", "Muli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_MEMBER_IN_NEED_PICKUP, function() return TakeFrom("Un collègue dans le besoin", "Muli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_MEMBER_IN_NEED_DRINK, function() return CollectFromLocation("Pinte de Barbe de Bombur", "l'Auberge du Palais de Thorin, Ered Luin"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_MEMBER_IN_NEED_END, function() return TurnInTo("Un collègue dans le besoin", "Muli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_WHITE_END, function() return TravelTurnInTo("Castelorge en Evendim", "Un soupçon de blanc", "Harigar Bassevase"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_BROWN_PICKUP, function() return TakeFrom("Un peu de brune", "Harigar Bassevase"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_BROWN_DRINK, function() return CollectFromLocation("Pinte de Brune de Noirbosquet", "Auberge de l'Oiseau et du Nourrisson, Comté"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_BROWN_END, function() return TurnInTo("Un peu de brune", "Harigar Bassevase"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_END, function() return TravelTurnInTo("Trous des Grisards en Comté", "Tout sauf le bon cidre", "Renardine Fouille"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_CIDER_PICKUP, function() return TakeFrom("Tout sauf le cidre", "Renardine Fouille"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_CIDER_DRINK, function() return CollectFromLocation("Bolée de Cidre des Etoiles d'Antan", "Au Poney Fringant, Pays de Bree"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_CIDER_END, function() return TurnInTo("Tout sauf le cidre", "Renardine Fouille"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_DRINK, function() return string.format("In %s, collect %s from %s", HighlightLocation("La Charrue et les Etoiles"), HighlightQuestItem("Fausse Binouze"), HighlightNpc("Halson Fondecuve")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_END, function() return TravelTurnInTo("Hrimbarg en Monts Brumeux", "Atli n'apprécie pas trop", "Oli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ATLIS_FAVOURITE_PICKUP, function() return TakeFrom("La préférée d'Atli", "Oli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ATLIS_FAVOURITE_DRINK, function() return CollectFromLocation("Pinte de Blonde de Brisebec", "Auberge de la Combe et de la Caroncule, Combe, Pays de Bree"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ATLIS_FAVOURITE_END, function() return TurnInTo("La préférée d'Atli", "Oli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_DRINK, function() return TravelCollectFrom("Dernière Maison Simple en Vallée de Fondcombe", "Faux vin blanc de Dorwinion", "Sogadan"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_CONVOLUTED_WINE_END, function() return TravelTurnInTo("Echad Candelleth en La Trouée des Trolls", "Un vin alambiqué", "Saerthuithel"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_SIMPLE_WINE_PICKUP, function() return TakeFrom("Un vin tout simple", "Saerthuithel"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_SIMPLE_WINE_DRINK, function() return CollectFromLocation("Bouteille de Cuvée du Brandevin", "La Perche Dorée, Comté"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_SIMPLE_WINE_END, function() return TurnInTo("Un vin tout simple", "Saerthuithel"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_PRANK_END, function() return TravelTurnInTo("Zigilgund en Forochel", "Une sombre farce", "Lofi"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_DAY_PICKUP, function() return TakeFrom("Un jour noir", "Lofi"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_DAY_DRINK, function() return CollectFromLocation("Pinte de bière du Sanglier des landes", "Au Poney Fringant, Pays de Bree"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_DAY_END, function() return TurnInTo("Un jour noir", "Lofi"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_END, function() return TravelTurnInTo("Aughaire en Angmar", "Une boisson vraiment délicieuse", "Nathalan"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_PICKUP, function() return TakeFrom("Une boisson vraiment infâme", "Nathalan"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_DRINK, function() return CollectFromLocation("Pinte de Binouze", "L'Auberge Abandonnée, Les Terres Solitaires"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_END, function() return TurnInTo("Une boisson vraiment infâme", "Nathalan"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_END, function() return TravelTurnInTo("Refuge d'Edhelion en Ered Luin", "Un souvenir différent de Fondcombe", "Lendasil"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_PICKUP, function() return TakeFrom("Un souvenir de Fondcombe", "Lendasil"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_DRINK, function() return CollectFromLocation("Verre de vin blanc de Dorwinion", "Dernière Maison Simple, La Trouée des Trolls"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_END, function() return TurnInTo("Un souvenir de Fondcombe", "Lendasil"); end);
