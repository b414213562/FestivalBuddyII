
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[ILAA] = "\nCe guide est basé sur l'excellent guide de LilRedHead sur https://lifebeyondtheshire.com/inn-league-and-ale-association-hunter-assisted-speedy-delivery-run/. Merci LRH !";

QG_ILAA = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[ILAA];
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_WHITE_PICKUP].DISPLAY = function() return string.format("In %s, take %s from %s", HighlightLocation("l'Auberge du Palais de Thorin"), HighlightQuest("Un soupçon de blanc"), HighlightNpc("Aubergiste de la Confrérie de la cervoise")); end
QG_ILAA[QG_ILAA_INDEX.A_CONVOLUTED_WINE_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Un vin alambiqué")); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_PRANK_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Une sombre farce")); end
QG_ILAA[QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Un souvenir différent de Fondcombe")); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Une boisson vraiment délicieuse")); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Tout sauf le bon cidre")); end
QG_ILAA[QG_ILAA_INDEX.BOMBURS_BREATH_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Souffle de Bombur")); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Toujours plus près de la maison")); end
QG_ILAA[QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Atli n'apprécie pas trop")); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Un verre en moins")); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_TICKLE_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Ça chatouille")); end

QG_ILAA[QG_ILAA_INDEX.QUITE_A_TICKLE_DRINK].DISPLAY = function() return CollectFromNpc("Fausse bière de Ventrécharde", "Rúnulf"); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_TICKLE_END].DISPLAY = function() return string.format("Travel to %s, turn in %s to %s.", HighlightLocation("Ost Haer en Harloeg"), HighlightQuest("Ça chatouille"), HighlightNpc("Wald Larmoise")); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_PICKLE_PICKUP].DISPLAY = function() return TakeFrom("Un problème épineux", "Wald Larmoise"); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_PICKLE_DRINK].DISPLAY = function() return CollectFromLocation("Pinte de bière de Ventrécharde", "Auberge du Lierre Touffu en Hobbitebourg"); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_PICKLE_END].DISPLAY = function() return TurnInTo("Un problème épineux", "Wald Larmoise"); end

QG_ILAA[QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_DRINK].DISPLAY = function() return TravelCollectFrom("Au Poney Fringant en Bree", "Faux Cépage de Limael", "Prosper Poiredebeurré"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_DRINK].DISPLAY = function() return CollectFromNpc("Fausse Bière abandonnée", "Prosper Poiredebeurré"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_END].DISPLAY = function() return TravelTurnInTo("Pavillon de chasse de Thrasi", "Un verre en moins", "Alrek"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_PICKUP].DISPLAY = function() return TakeFrom("Un verre de trop", "Alrek"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_DRINK].DISPLAY = function() return CollectFromLocation("Pinte de Bière Abandonnée", "L'Auberge Abandonnée, Les Terres Solitaires"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_END].DISPLAY = function() return TurnInTo("Un verre de trop", "Alrek"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_END].DISPLAY = function() return TravelTurnInTo("Chantier de Lépineux en Pays de Bree", "Toujours plus près de la maison", "Wesley Sautebois"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_PICKUP].DISPLAY = function() return TakeFrom("Toujours près de la maison", "Wesley Sautebois"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_DRINK].DISPLAY = function() return CollectFromLocation("Bouteille de Cépage de Limael", "Vignoble de Limael, Ered Luin"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_END].DISPLAY = function() return TurnInTo("Toujours près de la maison", "Wesley Sautebois"); end

QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_DRINK].DISPLAY = function() return TravelCollectFrom("L'Auberge Abandonnée en Les Terres Solitaires", "Faux cidre des Etoiles d'Antan", "Anlaf le Mélancolique"); end
QG_ILAA[QG_ILAA_INDEX.A_CONVOLUTED_WINE_DRINK].DISPLAY = function() return TravelCollectFrom("Auberge de l'Oiseau et du Nourrisson en Grand'Cave", "Fausse cuvée du Brandevin", "Carlo Noirbosquet"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_WHITE_DRINK].DISPLAY = function() return TravelCollectFrom("Auberge du Lierre Touffu Inn en Hobbitebourg", "Fausse bière brune de Noirbosquet", "Hereward Badeterre"); end
QG_ILAA[QG_ILAA_INDEX.BOMBURS_BREATH_DRINK].DISPLAY = function() return TravelCollectFrom("Le Dragon Vert en Lèzeau", "Fausse Bière Barbe de Bombur", "Bardol Nœuderacine"); end
QG_ILAA[QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_DRINK].DISPLAY = function() return CollectFromNpc("Fausse bière blonde de Brisebec", "Bardol Nœuderacine"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_PRANK_DRINK].DISPLAY = function() return TravelCollectFrom("Auberge de la Bûche Flottante en Lagrenouillère", "Fausse bière du sanglier des landes", "Ponto Fleurdehoublon"); end

QG_ILAA[QG_ILAA_INDEX.BOMBURS_BREATH_END].DISPLAY = function() return TravelTurnInTo("Othrikar en Les Hauts du Nord", "Souffle de Bombur", "Muli"); end
QG_ILAA[QG_ILAA_INDEX.A_MEMBER_IN_NEED_PICKUP].DISPLAY = function() return TakeFrom("Un collègue dans le besoin", "Muli"); end
QG_ILAA[QG_ILAA_INDEX.A_MEMBER_IN_NEED_DRINK].DISPLAY = function() return CollectFromLocation("Pinte de Barbe de Bombur", "l'Auberge du Palais de Thorin, Ered Luin"); end
QG_ILAA[QG_ILAA_INDEX.A_MEMBER_IN_NEED_END].DISPLAY = function() return TurnInTo("Un collègue dans le besoin", "Muli"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_WHITE_END].DISPLAY = function() return TravelTurnInTo("Castelorge en Evendim", "Un soupçon de blanc", "Harigar Bassevase"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_BROWN_PICKUP].DISPLAY = function() return TakeFrom("Un peu de brune", "Harigar Bassevase"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_BROWN_DRINK].DISPLAY = function() return CollectFromLocation("Pinte de Brune de Noirbosquet", "Auberge de l'Oiseau et du Nourrisson, Comté"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_BROWN_END].DISPLAY = function() return TurnInTo("Un peu de brune", "Harigar Bassevase"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_END].DISPLAY = function() return TravelTurnInTo("Trous des Grisards en Comté", "Tout sauf le bon cidre", "Renardine Fouille"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_CIDER_PICKUP].DISPLAY = function() return TakeFrom("Tout sauf le cidre", "Renardine Fouille"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_CIDER_DRINK].DISPLAY = function() return CollectFromLocation("Bolée de Cidre des Etoiles d'Antan", "Au Poney Fringant, Pays de Bree"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_CIDER_END].DISPLAY = function() return TurnInTo("Tout sauf le cidre", "Renardine Fouille"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_DRINK].DISPLAY = function() return string.format("In %s, collect %s from %s", HighlightLocation("La Charrue et les Etoiles"), HighlightQuestItem("Fausse Binouze"), HighlightNpc("Halson Fondecuve")); end
QG_ILAA[QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_END].DISPLAY = function() return TravelTurnInTo("Hrimbarg en Monts Brumeux", "Atli n'apprécie pas trop", "Oli"); end
QG_ILAA[QG_ILAA_INDEX.ATLIS_FAVOURITE_PICKUP].DISPLAY = function() return TakeFrom("La préférée d'Atli", "Oli"); end
QG_ILAA[QG_ILAA_INDEX.ATLIS_FAVOURITE_DRINK].DISPLAY = function() return CollectFromLocation("Pinte de Blonde de Brisebec", "Auberge de la Combe et de la Caroncule, Pays de Bree"); end
QG_ILAA[QG_ILAA_INDEX.ATLIS_FAVOURITE_END].DISPLAY = function() return TurnInTo("La préférée d'Atli", "Oli"); end
QG_ILAA[QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_DRINK].DISPLAY = function() return TravelCollectFrom("Dernière Maison Simple en Vallée de Fondcombe", "Faux vin blanc de Dorwinion", "Sogadan"); end

QG_ILAA[QG_ILAA_INDEX.A_CONVOLUTED_WINE_END].DISPLAY = function() return TravelTurnInTo("Echad Candelleth en La Trouée des Trolls", "Un vin alambiqué", "Saerthuithel"); end
QG_ILAA[QG_ILAA_INDEX.A_SIMPLE_WINE_PICKUP].DISPLAY = function() return TakeFrom("Un vin tout simple", "Saerthuithel"); end
QG_ILAA[QG_ILAA_INDEX.A_SIMPLE_WINE_DRINK].DISPLAY = function() return CollectFromLocation("Bouteille de Cuvée du Brandevin", "La Perche Dorée, Comté"); end
QG_ILAA[QG_ILAA_INDEX.A_SIMPLE_WINE_END].DISPLAY = function() return TurnInTo("Un vin tout simple", "Saerthuithel"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_PRANK_END].DISPLAY = function() return TravelTurnInTo("Zigilgund en Forochel", "Une sombre farce", "Lofi"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_DAY_PICKUP].DISPLAY = function() return TakeFrom("Un jour noir", "Lofi"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_DAY_DRINK].DISPLAY = function() return CollectFromLocation("Pinte de bière du Sanglier des landes", "Au Poney Fringant, Pays de Bree"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_DAY_END].DISPLAY = function() return TurnInTo("Un jour noir", "Lofi"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_END].DISPLAY = function() return TravelTurnInTo("Aughaire en Angmar", "Une boisson vraiment délicieuse", "Nathalan"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_PICKUP].DISPLAY = function() return TakeFrom("Une boisson vraiment infâme", "Nathalan"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_DRINK].DISPLAY = function() return CollectFromLocation("Pinte de Binouze", "L'Auberge Abandonnée, Les Terres Solitaires"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_END].DISPLAY = function() return TurnInTo("Une boisson vraiment infâme", "Nathalan"); end
QG_ILAA[QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_END].DISPLAY = function() return TravelTurnInTo("Refuge d'Edhelion en Ered Luin", "Un souvenir différent de Fondcombe", "Lendasil"); end
QG_ILAA[QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_PICKUP].DISPLAY = function() return TakeFrom("Un souvenir de Fondcombe", "Lendasil"); end
QG_ILAA[QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_DRINK].DISPLAY = function() return CollectFromLocation("Verre de vin blanc de Dorwinion", "Dernière Maison Simple, La Trouée des Trolls"); end
QG_ILAA[QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_END].DISPLAY = function() return TurnInTo("Un souvenir de Fondcombe", "Lendasil"); end

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[ILAA] = {
    ["Nouvelle quête : Tout sauf le bon cidre"] = QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_PICKUP;
    ["Nouvelle quête : Tout sauf le cidre"] = QG_ILAA_INDEX.ALL_BUT_THE_CIDER_PICKUP;

    ["Nouvelle quête : Toujours plus près de la maison"] = QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_PICKUP;
    ["Nouvelle quête : Toujours près de la maison"] = QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_PICKUP;

    ["Nouvelle quête : Un verre en moins"] = QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_PICKUP;
    ["Nouvelle quête : Un verre de trop"] = QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_PICKUP;

    ["Nouvelle quête : Ça chatouille"] = QG_ILAA_INDEX.QUITE_A_TICKLE_PICKUP;
    ["Nouvelle quête : Un problème épineux"] = QG_ILAA_INDEX.QUITE_A_PICKLE_PICKUP;

    ["Nouvelle quête : Un soupçon de blanc"] = QG_ILAA_INDEX.A_BIT_OF_WHITE_PICKUP;
    ["Nouvelle quête : Un peu de brune"] = QG_ILAA_INDEX.A_BIT_OF_BROWN_PICKUP;

    ["Nouvelle quête : Souffle de Bombur"] = QG_ILAA_INDEX.BOMBURS_BREATH_PICKUP;
    ["Nouvelle quête : Un collègue dans le besoin"] = QG_ILAA_INDEX.A_MEMBER_IN_NEED_PICKUP;

    ["Nouvelle quête : Un souvenir différent de Fondcombe"] = QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_PICKUP;
    ["Nouvelle quête : Un souvenir de Fondcombe"] = QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_PICKUP;

    ["Nouvelle quête : Une boisson vraiment délicieuse"] = QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_PICKUP;
    ["Nouvelle quête : Une boisson vraiment infâme"] = QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_PICKUP;

    ["Nouvelle quête : Un vin alambiqué"] = QG_ILAA_INDEX.A_CONVOLUTED_WINE_PICKUP;
    ["Nouvelle quête : Un vin tout simple"] = QG_ILAA_INDEX.A_SIMPLE_WINE_PICKUP;

    ["Nouvelle quête : Une sombre farce"] = QG_ILAA_INDEX.A_DARK_PRANK_PICKUP;
    ["Nouvelle quête : Un jour noir"] = QG_ILAA_INDEX.A_DARK_DAY_PICKUP;

    ["Nouvelle quête : Atli n'apprécie pas trop"] = QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_PICKUP;
    ["Nouvelle quête : La préférée d'Atli"] = QG_ILAA_INDEX.ATLIS_FAVOURITE_PICKUP;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[ILAA] = {
    ["Terminé :\nTout sauf le bon cidre\n"] = QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_END;
    ["Terminé :\nTout sauf le cidre\n"] = QG_ILAA_INDEX.ALL_BUT_THE_CIDER_END;

    ["Terminé :\nToujours plus près de la maison\n"] = QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_END;
    ["Terminé :\nToujours près de la maison\n"] = QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_END;

    ["Terminé :\nUn verre en moins\n"] = QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_END;
    ["Terminé :\nUn verre de trop\n"] = QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_END;

    ["Terminé :\nÇa chatouille\n"] = QG_ILAA_INDEX.QUITE_A_TICKLE_END;
    ["Terminé :\nUn problème épineux\n"] = QG_ILAA_INDEX.QUITE_A_PICKLE_END;

    ["Terminé :\nUn soupçon de blanc\n"] = QG_ILAA_INDEX.A_BIT_OF_WHITE_END;
    ["Terminé :\nUn peu de brune\n"] = QG_ILAA_INDEX.A_BIT_OF_BROWN_END;

    ["Terminé :\nSouffle de Bombur\n"] = QG_ILAA_INDEX.BOMBURS_BREATH_END;
    ["Terminé :\nUn collègue dans le besoin\n"] = QG_ILAA_INDEX.A_MEMBER_IN_NEED_END;

    ["Terminé :\nUn souvenir différent de Fondcombe\n"] = QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_END;
    ["Terminé :\nUn souvenir de Fondcombe\n"] = QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_END;

    ["Terminé :\nUne boisson vraiment délicieuse\n"] = QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_END;
    ["Terminé :\nUne boisson vraiment infâme\n"] = QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_END;

    ["Terminé :\nUn vin alambiqué\n"] = QG_ILAA_INDEX.A_CONVOLUTED_WINE_END;
    ["Terminé :\nUn vin tout simple\n"] = QG_ILAA_INDEX.A_SIMPLE_WINE_END;

    ["Terminé :\nUne sombre farce\n"] = QG_ILAA_INDEX.A_DARK_PRANK_END;
    ["Terminé :\nUn jour noir\n"] = QG_ILAA_INDEX.A_DARK_DAY_END;

    ["Terminé :\nAtli n'apprécie pas trop\n"] = QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_END;
    ["Terminé :\nLa préférée d'Atli\n"] = QG_ILAA_INDEX.ATLIS_FAVOURITE_END;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[ILAA] = {
    ["Vous avez récupéré du Faux cidre des Etoiles d'Antan"] = QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_DRINK;
    ["Vous avez récupéré du cidre des Etoiles d'Antan"] = QG_ILAA_INDEX.ALL_BUT_THE_CIDER_DRINK;

    ["Vous avez récupéré du faux Cépage de Limael"] = QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_DRINK;
    ["Vous avez récupéré du Cépage de Limael"] = QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_DRINK;

    ["Vous avez récupéré de la fausse bière abandonnée"] = QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_DRINK;
    ["Vous avez récupéré de la bière abandonnée"] = QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_DRINK;

    ["Vous avez récupéré la fausse bière de Ventrécharde"] = QG_ILAA_INDEX.QUITE_A_TICKLE_DRINK;
    ["Vous avez récupéré la bière de Ventrécharde"] = QG_ILAA_INDEX.QUITE_A_PICKLE_DRINK;

    ["Vous avez récupéré de la fausse bière brune de Noirbosquet"] = QG_ILAA_INDEX.A_BIT_OF_WHITE_DRINK;
    ["Vous avez récupéré de la bière brune de Noirbosquet"] = QG_ILAA_INDEX.A_BIT_OF_BROWN_DRINK;

    ["Vous avez récupéré de la Fausse Bière Barbe de Bombur"] = QG_ILAA_INDEX.BOMBURS_BREATH_DRINK;
    ["Pinte de Barbe de Bombur obtenue"] = QG_ILAA_INDEX.A_MEMBER_IN_NEED_DRINK;

    ["Vous avez récupéré du faux vin blanc de Dorwinion"] = QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_DRINK;
    ["Vous avez récupéré du blanc de Dorwinion"] = QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_DRINK;

    ["Vous avez obtenu de l'hydromel qui va être déguisé en Binouze"] = QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_DRINK;
    ["Vous avez récupéré de la Binouze.... (beurk)"] = QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_DRINK;

    ["Vous avez récupéré une Fausse cuvée du Brandevin"] = QG_ILAA_INDEX.A_CONVOLUTED_WINE_DRINK;
    ["Vous avez récupéré la Cuvée du Brandevin"] = QG_ILAA_INDEX.A_SIMPLE_WINE_DRINK;

    ["Vous avez récupéré la Fausse bière du sanglier des landes"] = QG_ILAA_INDEX.A_DARK_PRANK_DRINK;
    ["Vous avez récupéré une pinte de bière du Sanglier des landes"] = QG_ILAA_INDEX.A_DARK_DAY_DRINK;

    ["Vous avez récupéré la fausse bière blonde de Brisebec"] = QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_DRINK;
    ["Vous avez récupéré la bière blonde de Brisebec"] = QG_ILAA_INDEX.ATLIS_FAVOURITE_DRINK;
};
