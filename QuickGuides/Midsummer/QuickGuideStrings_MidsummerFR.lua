_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[MIDSUMMER] = {
    [MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = "Minas Tirith";
    [MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = "Îlaulointain";
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = "\nThis guide is based on LilRedHead's excellent LOTRO Midsummer Festival - Quick Guide at https://lifebeyondtheshire.com/lotro-midsummer-festival-quick-guide/. Thank you LRH!";
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = "\nCe guide a été créé par b414213562 lors du célébration du Solstice 2026.";

QG_MIDSUMMER_MT = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE];
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP].DISPLAY = function() return TakeFromAt("En célébration du Solstice d'été", "Faeleth", "City Stables"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_PICKUP].DISPLAY = function() return TakeFromAt("Comme une fleur", "Merilien", "the Citadel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_PICKUP].DISPLAY = function() return TakeFrom("Jusqu'à la dernière goutte", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_PICKUP].DISPLAY = function() return TakeFrom("Fournitures de mariage", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_PICKUP].DISPLAY = function() return TakeFrom("Pas de la petite bière", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PICKUP].DISPLAY = function() return TakeFromAt("Amuse-bouche savoureux", "Othnoron", "the Citadel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_PICKUP].DISPLAY = function() return TakeFromAt("Dispositions d'arrangements", "Florist", "the Citadel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_PICKUP].DISPLAY = function() return TakeFrom("Couronnes florales", "Florist"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_PICKUP].DISPLAY = function() return TakeFromIn("L'aide aux palefreniers", "Loborís", "the City Stables"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_BRUSH].DISPLAY = function() return Continue("L'aide aux palefreniers", "Take brush from Equipment Crate"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_APPLES].DISPLAY = function() return Continue("L'aide aux palefreniers", "Take apples from Crate of Apples"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_GROOM].DISPLAY = function() return Continue("L'aide aux palefreniers", "Groom 3 horses"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_FEED].DISPLAY = function() return Continue("L'aide aux palefreniers", "Feed 3 horses"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_END].DISPLAY = function() return TurnInTo("L'aide aux palefreniers", "Loborís"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_COLLECT].DISPLAY = function() return Continue("Couronnes florales", "Continue quest with Florist's Daughter, collect 10 summer blossoms"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_CRAFT].DISPLAY = function() return Continue("Couronnes florales", "Continue quest with Florist's Daughter, craft floral crown."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_PICKUP].DISPLAY = function() return TravelToTakeQuestFrom("Take stable-master", "Niveau des soldats", "Direction artistique", "Borlach de Rimmon"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_PICKUP].DISPLAY = function() return TravelToTakeQuestFrom("Go south/left", "Le Bouclier Fendu", "Une petite pièce", "Ulthir upstairs"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_COMPLETE].DISPLAY = function() return Continue("Une petite pièce", "Toss coins to 6 noisy minstrels."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_1].DISPLAY = function() return Continue("Pas de la petite bière", "Get Tonneau de bière in The Le Bouclier Fendu."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_COMPLETE].DISPLAY = function() return Continue("Jusqu'à la dernière goutte", "Take correct Barrel of Wine in The Le Bouclier Fendu."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_END].DISPLAY = function() return TurnInTo("Une petite pièce", "Ulthir upstairs"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_2].DISPLAY = function() return "Go south to " .. HighlightLocation("Mûmak and Keep") .. " for 2nd " .. HighlightQuestItem("Barrel") .. " for " .. HighlightQuest("Pas de la petite bière") .. ", next to mûmak"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_LEBADAR].DISPLAY = function() return "[Milestone] Take stable-master to " .. HighlightLocation("Niveau des artisans") .. ". At bottom of ramp, continue " .. HighlightQuest("Direction artistique") .. " with " .. HighlightNpc("Lebadar"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_PICKUP].DISPLAY = function() return TakeFrom("Jardinier en herbe", "Lebadar"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_PICKUP].DISPLAY = function() return TakeFromIn("Chiens peu dociles", "Femme inquiète", "the square"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_CONTINUE].DISPLAY = function() return Continue("Chiens peu dociles", "Find the missing ring"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_END].DISPLAY = function() return TurnInTo("Chiens peu dociles", "Femme inquiète"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_1].DISPLAY = function() return "Ride up ramp, turn right, grab " .. HighlightQuestItem("fournitures de mariage"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_POTTER].DISPLAY = function() return ContinueWith("Direction artistique", "Potière"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_3].DISPLAY = function() return "Go into " .. HighlightLocation("Salle des artisans") .. ", grab two more " .. HighlightQuestItem("fournitures de mariage"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_PICKUP].DISPLAY = function() return TakeFrom("L'hommage aux soignants", "Receveur des postes"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WATER].DISPLAY = function() return Continue("Jardinier en herbe", "Water 4 bushes in garden at north end"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WEEDS].DISPLAY = function() return Continue("Jardinier en herbe", "Pull out 5 weeds"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_END].DISPLAY = function() return "[Milestone] Take stable-master to " .. HighlightLocation("Niveau des artisans") .. ". At bottom of ramp, turn in " .. HighlightQuest("Jardinier en herbe"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_CIRIEL].DISPLAY = function() return "Ride up ramp, take stable-master to " .. HighlightLocation("Niveau des joueurs") .. ". At bottom of ramp, continue " .. HighlightQuest("Direction artistique") .. " with " .. HighlightNpc("Ciriel)" .. "."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_PICKUP].DISPLAY = function() return TakeFrom("La fête pour tout le monde", "Ciriel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_2].DISPLAY = function() return "Find the two guards to the north of " .. HighlightNpc("Ciriel") .. ", continue " .. HighlightQuest("La fête pour tout le monde") .. " with each."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_4].DISPLAY = function() return "Grab " .. HighlightQuestItem("fournitures de mariage") .. " around the corner of " .. HighlightNpc("Ciriel") .. "."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_4].DISPLAY = function() return "Find the two guards to the south of " .. HighlightNpc("Ciriel") .. ", continue " .. HighlightQuest("La fête pour tout le monde") .. " with each."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_5].DISPLAY = function() return "Grab final " .. HighlightQuestItem("fournitures de mariage") .. " between two south guards."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_2].DISPLAY = function() return "Go to " .. HighlightLocation("Merry Swan") .. ", place two " .. HighlightQuestItem("floral arrangements") .. " on stage for " .. HighlightQuest("Dispositions d'arrangements"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_3].DISPLAY = function() return Continue("Pas de la petite bière", "Get Tonneau de bière in Le Cygne Souriant."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_END].DISPLAY = function() return TurnInTo("La fête pour tout le monde", "Ciriel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_END].DISPLAY = function() return "Go up ramp, take stable-master to " .. HighlightLocation("Niveau des soldats") .. ", turn in " .. HighlightQuest("Direction artistique") .. " to " .. HighlightNpc("Borlach de Rimmon") .. "."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_DAGHIR].DISPLAY = function() return "Take stable-master to " .. HighlightLocation("Niveau des joueurs") .. ". Continue " .. HighlightQuest("Amuse-bouche savoureux") .. ": Apportez un amuse-bouche à " .. HighlightNpc("Daghir"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PELNEN].DISPLAY = function() return Continue("Amuse-bouche savoureux", "Apportez un amuse-bouche à " .. HighlightNpc("Pelnen")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_GWARBEN].DISPLAY = function() return Continue("Amuse-bouche savoureux", "Apportez un amuse-bouche à " .. HighlightNpc("Gwarben")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_ARASTIL].DISPLAY = function() return Continue("Amuse-bouche savoureux", "Apportez un amuse-bouche à " .. HighlightNpc("Arastil")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_BRANDION].DISPLAY = function() return Continue("Amuse-bouche savoureux", "Apportez un amuse-bouche à " .. HighlightNpc("Brandion")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_PICKUP].DISPLAY = function() return TravelToTakeQuestFrom("Go", "Le Théâtre Bleu", "Panique au Théâtre Bleu", "Duillam"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_HOLLUR].DISPLAY = function() return "Find Hollur [Check manually]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_POLLA].DISPLAY = function() return "Find Polla Robustine [Check manually]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_FROKI].DISPLAY = function() return "Find Fróki [Check manually]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_DAENAR].DISPLAY = function() return "Find Daenar [Check manually]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_ROBBO].DISPLAY = function() return "Find Robbo Moudredos [Check manually]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_GORD].DISPLAY = function() return "Find Gord Dunley [Check manually]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_COMPLETE].DISPLAY = function() return "Continue 'Panique au Théâtre Bleu' with Hollur, Polla, Fróki, Gord, Robbo, and Daenar."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_END].DISPLAY = function() return "In " .. HighlightLocation("le Théâtre Bleu") .. ", place three " .. HighlightQuestItem("floral arrangements") .. " on stage for " .. HighlightQuest("Dispositions d'arrangements"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_END].DISPLAY = function() return TurnInTo("Panique au Théâtre Bleu", "Duillam"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_PICKUP].DISPLAY = function() return "[Milestone] Take stable-master to " .. HighlightLocation("Hautes Écuries") .. ", go to " .. HighlightLocation("Les Maisons de Guérison, La Haute salle") .. ", and take " .. HighlightQuest("Un remède pour tous les maux") .. " from " .. HighlightNpc("Ioreth"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_PICKUP].HEIGHT = 50;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_BOTTLES].DISPLAY = function() return Continue("Un remède pour tous les maux", "Dispose of 10 half-emptied bottles"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_REVELLERS].DISPLAY = function() return Continue("Un remède pour tous les maux", "Remove 6 noisy revellers"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_END].DISPLAY = function() return TurnInTo("Un remède pour tous les maux", "Ioreth"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_COMPLETE].DISPLAY = function() return "Go to " .. HighlightLocation("Les Maisons de Guérison, Maison des Remèdes") .. " and continue " .. HighlightQuest("L'hommage aux soignants") .. " with 6 Healers."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_COMPLETE].DISPLAY = function() return "Take ramp down to " .. HighlightLocation("Niveau des sages") .. ", go to " .. HighlightLocation("Maisons du Savoir") .. " on the right, and place 6 " .. HighlightQuestItem("floral arrangements") .. " for " .. HighlightQuest("Comme une fleur"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_PICKUP].DISPLAY = function() return TakeFrom("Vraie romance", "Colladan"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_COMPLETE].DISPLAY = function() return Continue("Vraie romance", "Catch 6 wayward verses"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_END].DISPLAY = function() return TurnInTo("Vraie romance", "Colladan"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_4].DISPLAY = function() return "Exit Maisons du Savoir, turn right and go to " .. HighlightLocation("Le Devin Assoiffé") .. ". Go forward, then right. Get " .. HighlightQuestItem("Tonneau de bière") .. " for " .. HighlightQuest("Pas de la petite bière"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END].DISPLAY = function() return "[Milestone] " .. TurnInTo("En célébration du Solstice d'été", "Faeleth"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_END].DISPLAY = function() return "Take stable-master to " .. HighlightLocation("Niveau des artisans") .. ". Enter " .. HighlightLocation("Salle des artisans") .. ". " .. TurnInTo("L'hommage aux soignants", "Receveur des postes"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_END].DISPLAY = function() return "Take stable-master to " .. HighlightLocation("Hautes Écuries") .. ". Run to square on the Citadel. " .. TurnInTo("Comme une fleur", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_END].DISPLAY = function() return TurnInTo("Turn in 'Jusqu'à la dernière goutte", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_END].DISPLAY = function() return TurnInTo("Turn in 'Fournitures de mariage", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_END].DISPLAY = function() return TurnInTo("Turn in 'Pas de la petite bière", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_END].DISPLAY = function() return TurnInTo("Turn in 'Amuse-bouche savoureux", "Othnoron"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_END].DISPLAY = function() return TurnInTo("Turn in 'Couronnes florales", "Florist"); end;

QG_MIDSUMMER_FH = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE];
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP].DISPLAY = function() return TakeFromIn("En célébration du Solstice d'été", "Capitaine Khâtaphos", "la Cruche fendue"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_PICKUP].DISPLAY = function() return TakeFrom("Faire le ménage", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_BEDS].DISPLAY = function() return "Lits faits"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_FLOORS].DISPLAY = function() return "Sols lavés"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_END].DISPLAY = function() return TurnInTo("Faire le ménage", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_PICKUP].DISPLAY = function() return TakeFrom("Trésors de la marée", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_SEASHELLS].DISPLAY = function() return "Récupérez des coquillages"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_END].DISPLAY = function() return TurnInTo("Trésors de la marée", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_PICKUP].DISPLAY = function() return TakeFrom("Assistance en cuisine", "Sâghlem"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_1].DISPLAY = function() return "Collect fresh herb on slope up"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_2].DISPLAY = function() return "Collect fresh herb on right"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_3].DISPLAY = function() return "Collect fresh herb on left, going up"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_4].DISPLAY = function() return "Collect fresh herb behind olive tree"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_1].DISPLAY = function() return "Collect juicy lemon"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_2].DISPLAY = function() return "Collect juicy lemon across the road"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_3].DISPLAY = function() return "Collect juicy lemon beyond olive tree"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_4].DISPLAY = function() return "Follow path up and Collect juicy lemon from tree on left"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_1].DISPLAY = function() return "Collect olives from tree on right"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_2].DISPLAY = function() return "Collect olives from left side of path"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_3].DISPLAY = function() return "Collect olives near fishing spot"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_4].DISPLAY = function() return "Continue north-east and collect olives at base of cliffs"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_END].DISPLAY = function() return TurnInTo("Assistance en cuisine", "Sâghlem"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_PICKUP].DISPLAY = function() return TakeFrom("Bâtir des châteaux", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_1].DISPLAY = function() return "Build sand-castle next to Thirsty Beachgoer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_2].DISPLAY = function() return "Build sand-castle next to Relaxing Holidayer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_3].DISPLAY = function() return "Build sand-castle west of Queer Merrymaker"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_4].DISPLAY = function() return "Build sand-castle by the cove"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_END].DISPLAY = function() return TurnInTo("Bâtir des châteaux", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_PICKUP].DISPLAY = function() return TakeFrom("Pêche aux conseils", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_FOUND].DISPLAY = function() return "Trouvez un endroit où pêcher dans le port"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_CAUGHT].DISPLAY = function() return "Pêchez sur la jetée dans le port"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_FOUND].DISPLAY = function() return "Trouvez un endroit où pêcher sur le côté ouest du port"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_CAUGHT].DISPLAY = function() return "Pêchez sur la jetée sur le côté ouest du port"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_FOUND].DISPLAY = function() return "Trouvez un endroit où pêcher près de la cascade au-dessus du port"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_CAUGHT].DISPLAY = function() return "Attrapez un poisson près de la cascade au-dessus du port"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_FOUND].DISPLAY = function() return "Trouvez un coin de pêche sur le banc de sable au nord"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_CAUGHT].DISPLAY = function() return "Attrapez un poisson sur le banc de sable au nord"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_END].DISPLAY = function() return TurnInTo("Pêche aux conseils", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_PICKUP].DISPLAY = function() return TakeFrom("Offrir de l'aide", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_1].DISPLAY = function() return "Parlez à l'adepte de la plage assoiffé"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_2].DISPLAY = function() return "Trouvez une boisson rafraîchissante à la Cruche fendue"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_3].DISPLAY = function() return "Apportez la boisson rafraîchissante à l'adepte de la plage assoiffé"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_1].DISPLAY = function() return "Parlez à la vacancière détendue"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_2].DISPLAY = function() return "Trouvez le livre de la vacancière détendue"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_3].DISPLAY = function() return "Apportez son livre à la vacancière détendue"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_1].DISPLAY = function() return "Parlez au touriste perturbé"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_2].DISPLAY = function() return "Trouvez un coussin pour le touriste perturbé"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_3].DISPLAY = function() return "Apporte le coussin au touriste perturbé"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_1].DISPLAY = function() return "Parlez au soupirant plein d'espoir"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_2].DISPLAY = function() return "Trouvez un panier de pique-nique, apportez-le à Sâghlem et récupérez le panier rempli."; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_3].DISPLAY = function() return "Apportez le panier rempli au soupirant plein d'espoir"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_1].DISPLAY = function() return "Parlez au Fêtard étrange"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_2].DISPLAY = function() return "Enterrez le fêtard étrange dans le sable"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_3].DISPLAY = function() return "Enterrez le fêtard étrange encore plus profondément"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_END].DISPLAY = function() return TurnInTo("Offrir de l'aide", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_PICKUP].DISPLAY = function() return TakeFrom("À la recherche de lieux de baignade", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WEST_HARBOR].DISPLAY = function() return "Nagez sur le côté ouest du port"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTHERN_COVE].DISPLAY = function() return "Nagez dans la baie au sud"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_NORTHERN_CHANNEL].DISPLAY = function() return "Nagez dans le bras de mer au nord"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WESTERN_BEACH].DISPLAY = function() return "Nagez sur la plage à l'ouest"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTH_WESTERN_BEACH].DISPLAY = function() return "Nagez sur la plage au sud-ouest"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_END].DISPLAY = function() return TurnInTo("À la recherche de lieux de baignade", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_PICKUP].DISPLAY = function() return TakeFrom("Une volée de mouettes", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_END].DISPLAY = function() return TurnInTo("Une volée de mouettes", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_PICKUP].DISPLAY = function() return TakeFrom("Casse-tête félin", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_QUEST].DISPLAY = function() return TakeFrom("Oui aux chats ou Non aux chats", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SCRUFFY].DISPLAY = function() return "Nourrissez le chat galeux OU Chassez le chat galeux"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SKINNY].DISPLAY = function() return "Nourrissez le chat maigre OU Chassez le chat maigre"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLINKY].DISPLAY = function() return "Nourrissez le chat élégant OU Chassez le chat élégant"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SMELLY].DISPLAY = function() return "Nourrissez le chat malodorant OU Chassez le chat malodorant"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SASSY].DISPLAY = function() return "Nourrissez le chat insolent OU Chassez le chat insolent"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLEEPY].DISPLAY = function() return "Nourrissez le chat endormi OU Chassez le chat endormi"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_END].DISPLAY = function() return TurnInTo("Casse-tête félin", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_PICKUP].DISPLAY = function() return TakeFrom("Déchets échoués", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_1].DISPLAY = function() return "Ramassez les déchets sur la plage à l'est du site touriste perturbé"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_2].DISPLAY = function() return "Ramassez les déchets sur la plage à l'ouest du site touriste perturbé"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_3].DISPLAY = function() return "Ramassez les déchets sur la plage près du château de sable"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_4].DISPLAY = function() return "Ramassez les déchets sur la plage près de la porte de la course"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_5].DISPLAY = function() return "Ramassez les déchets sur la plage près du château de sable"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_6].DISPLAY = function() return "Ramassez les déchets sur la plage près de la crique"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_END].DISPLAY = function() return TurnInTo("Déchets échoués", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_PICKUP].DISPLAY = function() return TakeFrom("Vol de cerfs-volants", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_BEACH].DISPLAY = function() return "Faites voler un cerf-volant sur la plage du sud"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_COVE].DISPLAY = function() return "Faites voler un cerf-volant près de la baie au sud"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_WEST_END_OF_HARBOUR].DISPLAY = function() return "Faites voler un cerf-volant à l'ouest du port"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_EASTERN_BRIDGE].DISPLAY = function() return "Faites voler un cerf-volant sur le pont à l'est"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SAND_IN_FRONT_OF_INN].DISPLAY = function() return "Faites voler un cerf-volant sur le sable devant l'auberge"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_END].DISPLAY = function() return TurnInTo("Vol de cerfs-volants", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_1].DISPLAY = function() return "Chassez les mouettes agaçantes à l'extrémité nord du pont ouest"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_2].DISPLAY = function() return "Chassez les mouettes agaçantes près de Merkhâma"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_3].DISPLAY = function() return "Chassez les mouettes agaçantes du pont est"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_4].DISPLAY = function() return "Chassez les mouettes agaçantes près du chat maigre"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_5].DISPLAY = function() return "Chassez les mouettes agaçantes près du plage assoiffé"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_6].DISPLAY = function() return "Chassez les mouettes agaçantes près du point de pêche ouest"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_7].DISPLAY = function() return "Chassez les mouettes agaçantes près de l'extrémité sud du pont ouest"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_8].DISPLAY = function() return "Chassez les mouettes agaçantes près du chat malodorant"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END].DISPLAY = function() return TurnInTo("En célébration du Solstice d'été", "Capitaine Khâtaphos"); end;

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Nouvelle quête : En célébration du Solstice d'été"] = QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP;
    ["Nouvelle quête : Comme une fleur"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_PICKUP;
    ["Nouvelle quête : Jusqu'à la dernière goutte"] = QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_PICKUP;
    ["Nouvelle quête : Fournitures de mariage"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_PICKUP;
    ["Nouvelle quête : Pas de la petite bière"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_PICKUP;
    ["Nouvelle quête : Amuse-bouche savoureux"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PICKUP;
    ["Nouvelle quête : Dispositions d'arrangements"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_PICKUP;
    ["Nouvelle quête : Couronnes florales"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_PICKUP;
    ["Nouvelle quête : L'aide aux palefreniers"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_PICKUP;
    ["Nouvelle quête : Direction artistique"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_PICKUP;
    ["Nouvelle quête : Une petite pièce"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_PICKUP;
    ["Nouvelle quête : Jardinier en herbe"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_PICKUP;
    ["Nouvelle quête : Chiens peu dociles"] = QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_PICKUP;
    ["Nouvelle quête : L'hommage aux soignants"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_PICKUP;
    ["Nouvelle quête : La fête pour tout le monde"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_PICKUP;
    ["Nouvelle quête : Panique au Théâtre Bleu"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_PICKUP;
    ["Nouvelle quête : Un remède pour tous les maux"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_PICKUP;
    ["Nouvelle quête : Vraie romance"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_PICKUP;
};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["Nouvelle quête : En célébration du Solstice d'été"] = QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP;
    ["Nouvelle quête : Faire le ménage"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_PICKUP;
    ["Nouvelle quête : Trésors de la marée"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_PICKUP;
    ["Nouvelle quête : Assistance en cuisine"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_PICKUP;
    ["Nouvelle quête : Bâtir des châteaux"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_PICKUP;
    ["Nouvelle quête : Pêche aux conseils"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_PICKUP;
    ["Nouvelle quête : Offrir de l'aide"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_PICKUP;
    ["Nouvelle quête : À la recherche de lieux de baignade"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_PICKUP;
    ["Nouvelle quête : Une volée de mouettes"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_PICKUP;
    ["Nouvelle quête : Casse-tête félin"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_PICKUP;
    ["Nouvelle quête : Casse-tête félin : Oui aux chats"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_QUEST;
    ["Nouvelle quête : Casse-tête félin : Non aux chats"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_QUEST;
    ["Nouvelle quête : Déchets échoués"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_PICKUP;
    ["Nouvelle quête : Vol de cerfs-volants"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_PICKUP;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Terminé :\nL'aide aux palefreniers\n"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_END;
    ["Terminé :\nUne petite pièce\n"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_END;
    ["Terminé :\nChiens peu dociles\n"] = QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_END;
    ["Terminé :\nJardinier en herbe\n"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_END;
    ["Terminé :\nLa fête pour tout le monde\n"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_END;
    ["Terminé :\nDirection artistique\n"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_END;
    ["Terminé :\nPanique au Théâtre Bleu\n"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_END;
    ["Terminé :\nUn remède pour tous les maux\n"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_END;
    ["Terminé :\nVraie romance\n"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_END;
    ["Terminé :\nEn célébration du Solstice d'été\n"] = QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END;
    ["Terminé :\nL'hommage aux soignants\n"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_END;
    ["Terminé :\nComme une fleur\n"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_END;
    ["Terminé :\nJusqu'à la dernière goutte\n"] = QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_END;
    ["Terminé :\nFournitures de mariage\n"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_END;
    ["Terminé :\nPas de la petite bière\n"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_END;
    ["Terminé :\nAmuse-bouche savoureux\n"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_END;
    ["Terminé :\nCouronnes florales\n"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_END;
};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["Terminé :\nFaire le ménage\n"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_END;
    ["Terminé :\nTrésors de la marée\n"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_END;
    ["Terminé :\nAssistance en cuisine\n"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_END;
    ["Terminé :\nBâtir des châteaux\n"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_END;
    ["Terminé :\nPêche aux conseils\n"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_END;
    ["Terminé :\nEn célébration du Solstice d'été\n"] = QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END;
    ["Terminé :\nOffrir de l'aide\n"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_END;
    ["Terminé :\nÀ la recherche de lieux de baignade\n"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_END;
    ["Terminé :\nUne volée de mouettes\n"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_END;
    ["Terminé :\nCasse-tête félin\n"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_END;
    ["Terminé :\nDéchets échoués\n"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_END;
    ["Terminé :\nVol de cerfs-volants\n"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_END;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Vous avez trouvé une étrille"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_BRUSH;
    ["Pommes récupérées"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_APPLES;
    ["Chevaux pansés (3/3)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_GROOM;
    ["Cheval nourri (3/3)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_FEED;
    ["Bourgeons d'été cueillis (10/10)"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_COLLECT;
    ["Pièce lancée à un ménestrel bruyant (6/6)"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_COMPLETE;
    ["Tonneaux de bière récupérés (1/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_1;
    ["Bon tonneau de vin ramassé"] = QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_COMPLETE;
    ["Tonneaux de bière récupérés (2/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_2;
    ["Fleurs obtenues"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_LEBADAR;
    ["Vous avez trouvé l'anneau !"] = QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_CONTINUE;
    ["Caisses de matériel de mariage récupérées (1/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_1;
    ["Argile obtenue"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_POTTER;
    ["Caisses de matériel de mariage récupérées (3/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_3;
    ["Buissons arrosés (4/4)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WATER;
    ["Mauvaises herbes arrachées (5/5)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WEEDS;
    ["Morceau de charbon obtenu"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_CIRIEL;
    ["Pâtisseries livrées (2/4)"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_2;
    ["Caisses de matériel de mariage récupérées (4/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_4;
    ["Pâtisseries livrées (4/4)"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_4;
    ["Caisses de matériel de mariage récupérées (5/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_5;
    ["Arrangements floraux disposés (2/5)"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_2;
    ["Tonneaux de bière récupérés (3/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_3;
    ["Diriger les Têtes Couvertes de manière à ce qu'elles se retrouvent en coulisse du Théâtre Bleu (6/6)"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_COMPLETE;
    ["Arrangements floraux disposés (5/5)"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_END;
    ["Bouteilles à moitié vides débarrassées de la Haute salle (10/10)"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_BOTTLES;
    ["Mots de remerciement remis (6/6)"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_COMPLETE;
    ["Arrangements floraux disposés (6/6)"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_COMPLETE;
    ["Vers égarés retrouvés (6/6)"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_COMPLETE;
    ["Tonneaux de bière récupérés (4/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_4;

    ["Le convive ne dit rien, mais repart d'un air revêche"] = { -- NAME is only used for debugging purposes.
        [1] = { ["NAME"] = "Reveller 1"; };
        [2] = { ["NAME"] = "Reveller 2"; };
        [3] = { ["NAME"] = "Reveller 3"; };
        [4] = { ["NAME"] = "Reveller 4"; };
        [5] = { ["NAME"] = "Reveller 5"; };
        [6] = { ["NAME"] = "Reveller 6"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_REVELLERS; };
    };
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["Le chat galeux siffle et s'enfuit"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SCRUFFY;
    ["Le chat galeux effleure vos doigts en s'emparant goulument de la friandise"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SCRUFFY;
    ["Le chat maigre proteste avant de s'enfuir"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SKINNY;
    ["Le chat maigre vous regarde avec suspicion, avant de prendre la friandise et de se mettre à ronronner"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SKINNY;
    ["Le chat élégant se plaint et se dérobe"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLINKY;
    ["Le chat élégant s'empare de la friandise avant de faire sa toilette"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLINKY;
    ["Le chat malodorant siffle et détale"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SMELLY;
    ["Le chat malodorant avale la friandise tout entière et vient se frotter contre votre jambe"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SMELLY;
    ["Le chat insolent feule et s'éloigne lentement, la queue haute"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SASSY;
    ["Le chat insolent s'empare de la friandise, crache, et part en courant"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SASSY;
    ["Le chat endormi gronde après vous et part en coup de vent"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLEEPY;
    ["Le chat endormi ronronne en prenant la friandise et se rendort"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLEEPY;

    ["Châteaux de sable bâtis sur la plage (1/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_1;
    ["Châteaux de sable bâtis sur la plage (2/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_2;
    ["Châteaux de sable bâtis sur la plage (3/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_3;
    ["Châteaux de sable bâtis sur la plage (4/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_4;

    ["Les mouettes agaçantes ont été chassées (1/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_1;
    ["Les mouettes agaçantes ont été chassées (2/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_2;
    ["Les mouettes agaçantes ont été chassées (3/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_3;
    ["Les mouettes agaçantes ont été chassées (4/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_4;
    ["Les mouettes agaçantes ont été chassées (5/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_5;
    ["Les mouettes agaçantes ont été chassées (6/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_6;
    ["Les mouettes agaçantes ont été chassées (7/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_7;
    ["Les mouettes agaçantes ont été chassées (8/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_8;

    ["Ça a l'air rafraîchissant !"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_2;

    ["Ça a l'air d'être un bon endroit"] = { -- NAME is only used for debugging purposes.
        [1] = { ["NAME"] = "Fish 1 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_FOUND; };
        [2] = { ["NAME"] = "Fish 2 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_FOUND; };
        [3] = { ["NAME"] = "Fish 3 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_FOUND; };
        [4] = { ["NAME"] = "Fish 4 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_FOUND; };
    };

    ["Vous avez attrapé un poisson !"] = { -- NAME is only used for debugging purposes.
        [1] = { ["NAME"] = "Fish 1 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_CAUGHT; };
        [2] = { ["NAME"] = "Fish 2 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_CAUGHT; };
        [3] = { ["NAME"] = "Fish 3 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_CAUGHT; };
        [4] = { ["NAME"] = "Fish 4 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_CAUGHT; };
    };

    ["Les gens n'ont pas l'air de remarquer votre cerf-volant"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_WEST_END_OF_HARBOUR;
    ["De nombreuses personnes devraient vous voir d'ici !"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_EASTERN_BRIDGE;
    ["Les gens ont l'air impressionnés par votre cerf-volant !"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_BEACH;
    ["Les gens ici apprécient-ils votre cerf-volant ?"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_COVE;
    ["Était-ce de la jalousie que vous avez remarquée ?"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SAND_IN_FRONT_OF_INN;

    ["\"Souvenirs d'un Mûmakil\" de J.F. Ugsha-imri récupéré"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_2;

    ["Lits faits (4/4)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_BEDS;
    ["Sols lavés (4/4)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_FLOORS;

    ["L'eau est trop profonde, les gens vous regardent vous noyer !"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WEST_HARBOR;
    ["On pourrait s'y baigner, mais c'est assez fréquenté"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WEST_HARBOR;

    ["Ce serait plus agréable si c'était moins profond"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTHERN_COVE;
    ["L'eau est tiède, parfaite pour une baignade"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTHERN_COVE;

    ["C'est passable ici, mais un peu trop profond"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_NORTHERN_CHANNEL;
    ["L'eau est calme et tiède dans le bras de mer"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_NORTHERN_CHANNEL;

    ["C'est un endroit dangereux, c'était une erreur !"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WESTERN_BEACH;
    ["L'eau est froide, et il y a un peu trop de vagues"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WESTERN_BEACH;

    ["Il y a trop d'eau ici !"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTH_WESTERN_BEACH;
    ["Cet endroit calme est parfait pour une baignade"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTH_WESTERN_BEACH;

    ["Déchets ramassés sur la plage (1/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_1;
    ["Déchets ramassés sur la plage (2/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_2;
    ["Déchets ramassés sur la plage (3/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_3;
    ["Déchets ramassés sur la plage (4/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_4;
    ["Déchets ramassés sur la plage (5/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_5;
    ["Déchets ramassés sur la plage (6/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_6;

    ["Ce coussin ira très bien"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_2;

    ["'Encore !', exige l'homme étrange"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_2;
    ["Il vous remercie avec un soupir satisfait"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_3;

    ["Herbes fraîches récoltées (1/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_1;
    ["Herbes fraîches récoltées (2/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_2;
    ["Herbes fraîches récoltées (3/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_3;
    ["Herbes fraîches récoltées (4/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_4;
    ["Citrons juteux récupérés (1/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_1;
    ["Citrons juteux récupérés (2/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_2;
    ["Citrons juteux récupérés (3/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_3;
    ["Citrons juteux récupérés (4/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_4;
    ["Poignées d'olives récupérées (1/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_1;
    ["Poignées d'olives récupérées (2/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_2;
    ["Poignées d'olives récupérées (3/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_3;
    ["Poignées d'olives récupérées (4/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_4;

    ["Coquillages récupérés (8/8)"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_SEASHELLS;

};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Chevaux pansés %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_GROOM;
    ["Cheval nourri %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_FEED;
    ["Bourgeons d'été cueillis %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_COLLECT;
    ["Pièce lancée à un ménestrel bruyant %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_COMPLETE;
    ["Buissons arrosés %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WATER;
    ["Mauvaises herbes arrachées %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WEEDS;
    ["Pâtisseries livrées %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_4;
    ["Caisses de matériel de mariage récupérées %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_5;
    ["Mots de remerciement remis %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_COMPLETE;
    ["Arrangements floraux disposés %((%d+)/(5)%)"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_END;
    ["Arrangements floraux disposés %((%d+)/(6)%)"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_COMPLETE;
    ["Bouteilles à moitié vides débarrassées de la Haute salle %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_BOTTLES;
    ["Vers égarés retrouvés %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_COMPLETE;
    ["Couverture à carreaux %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_4;

};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["Lits faits %((%d+)/(%d+)%)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_BEDS;
    ["Sols lavés %((%d+)/(%d+)%)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_FLOORS;
    ["Coquillages récupérés %((%d+)/(%d+)%)"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_SEASHELLS;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
     [1] = { ["NAME"] = "Couverture à carreaux"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_CRAFT; };
     [2] = { ["NAME"] = "Daghir"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_DAGHIR; };
     [3] = { ["NAME"] = "Pelnen"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PELNEN; };
     [4] = { ["NAME"] = "Gwarben"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_GWARBEN; };
     [5] = { ["NAME"] = "Arastil"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_ARASTIL; };
     [6] = { ["NAME"] = "Brandion"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_BRANDION; };
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    [1] = { ["NAME"] = "Amatrice de plage assoiffée"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_1; };
    [2] = { ["NAME"] = "Amatrice de plage assoiffée"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_3; };
    [3] = { ["NAME"] = "Vacancière détendue"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_1; };
    [4] = { ["NAME"] = "Vacancière détendue"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_3; };
    [5] = { ["NAME"] = "Touriste perturbé"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_1; };
    [6] = { ["NAME"] = "Touriste perturbé"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_3; };
    [7] = { ["NAME"] = "Soupirant optimiste"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_1; };
    [8] = { ["NAME"] = "Panier à pique-nique rempli"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_2; };
    [9] = { ["NAME"] = "Soupirant optimiste"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_3; };
   [10] = { ["NAME"] = "Fêtard étrange"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_1; };
};
