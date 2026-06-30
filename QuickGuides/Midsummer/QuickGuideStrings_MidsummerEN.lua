_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[MIDSUMMER] = {
    [MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = "Minas Tirith";
    [MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = "Furtherholm";
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = "\nThis guide is based on LilRedHead's excellent LOTRO Midsummer Festival - Quick Guide at https://lifebeyondtheshire.com/lotro-midsummer-festival-quick-guide/. Thank you LRH!";
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = "\nThis guide created by b414213562 during the 2026 Midsummer Festival";

QG_MIDSUMMER_MT = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE];
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP].DISPLAY = function() return TakeFromAt("In Celebration of Midsummer", "Faeleth", "City Stables"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_PICKUP].DISPLAY = function() return TakeFromAt("Something Floral", "Merilien", "the Citadel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_PICKUP].DISPLAY = function() return TakeFrom("To the Last Drop", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_PICKUP].DISPLAY = function() return TakeFrom("Wedding Supplies", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_PICKUP].DISPLAY = function() return TakeFrom("What Ales You", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PICKUP].DISPLAY = function() return TakeFromAt("Tasty Morsels", "Othnoron", "the Citadel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_PICKUP].DISPLAY = function() return TakeFromAt("Arranging Arrangements", "Florist", "the Citadel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_PICKUP].DISPLAY = function() return TakeFrom("Floral Crowns", "Florist"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_PICKUP].DISPLAY = function() return TakeFromIn("Aiding the Stable-hands", "Loborís", "the City Stables"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_BRUSH].DISPLAY = function() return Continue("Aiding the Stable-hands", "Take brush from Equipment Crate"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_APPLES].DISPLAY = function() return Continue("Aiding the Stable-hands", "Take apples from Crate of Apples"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_GROOM].DISPLAY = function() return Continue("Aiding the Stable-hands", "Groom 3 horses"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_FEED].DISPLAY = function() return Continue("Aiding the Stable-hands", "Feed 3 horses"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_END].DISPLAY = function() return TurnInTo("Aiding the Stable-hands", "Loborís"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_COLLECT].DISPLAY = function() return Continue("Floral Crowns", "Continue quest with Florist's Daughter, collect 10 summer blossoms"); end
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_CRAFT].DISPLAY = function() return Continue("Floral Crowns", "Continue quest with Florist's Daughter, craft floral crown."); end
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_PICKUP].DISPLAY = function() return TravelToTakeQuestFrom("Take stable-master", "Soldiers' Tier", "Artistic Direction", "Borlach"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_PICKUP].DISPLAY = function() return TravelToTakeQuestFrom("Go south/left to", "Splintered Shield", "Toss a Coin", "Ulthir upstairs"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_COMPLETE].DISPLAY = function() return Continue("Toss a Coin", "Toss coins to 6 noisy minstrels."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_1].DISPLAY = function() return Continue("What Ales You", "Get Barrel of Ale in The Splintered Shield."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_COMPLETE].DISPLAY = function() return Continue("To the Last Drop", "Take correct Barrel of Wine in The Splintered Shield."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_END].DISPLAY = function() return TurnInTo("Toss a Coin", "Ulthir upstairs"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_2].DISPLAY = function() return "Go south to " .. HighlightLocation("Mûmak and Keep") .. " for " .. HighlightQuestItem("the 2nd Barrel") .. " for " .. HighlightQuest("What Ales You") .. ", next to mûmak"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_LEBADAR].DISPLAY = function() return "[Milestone] Take stable-master to " .. HighlightLocation("Craftsmen's Tier") .. ". At bottom of ramp, continue " .. HighlightQuest("Artistic Direction") .. " with " .. HighlightNpc("Lebadar"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_PICKUP].DISPLAY = function() return TakeFrom("Growing Pains", "Lebadar"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_PICKUP].DISPLAY = function() return TakeFromIn("Unhelpful Hounds", "Worried Woman", "the square"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_CONTINUE].DISPLAY = function() return Continue("Unhelpful Hounds", "Find the missing ring"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_END].DISPLAY = function() return TurnInTo("Unhelpful Hounds", "Worried Woman"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_1].DISPLAY = function() return "Ride up ramp, turn right, grab " .. HighlightQuestItem("Wedding Supplies"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_POTTER].DISPLAY = function() return ContinueWith("Artistic Direction", "Potter"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_3].DISPLAY = function() return "Go into " .. HighlightLocation("House of Craft") .. ", grab two more " .. HighlightQuestItem("Wedding Supplies"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_PICKUP].DISPLAY = function() return TakeFrom("Honouring Healers", "Postmaster"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WATER].DISPLAY = function() return Continue("Growing Pains", "Water 4 bushes in garden at north end"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WEEDS].DISPLAY = function() return Continue("Growing Pains", "Pull out 5 weeds"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_END].DISPLAY = function() return "[Milestone] Take stable-master to " .. HighlightLocation("Craftsmen's Tier") .. ". At bottom of ramp, turn in " .. HighlightQuest("Growing Pains") .. "."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_CIRIEL].DISPLAY = function() return "Ride up ramp, take stable-master to " .. HighlightLocation("Players' Tier") .. ". At bottom of ramp, continue " .. HighlightQuest("Artistic Direction") .. " with Ciriel" .. "."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_PICKUP].DISPLAY = function() return TakeFrom("Sweet Treats", "Ciriel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_2].DISPLAY = function() return "Find the two guards to the north of " .. HighlightNpc("Ciriel") .. ", continue " .. HighlightQuest("Sweet Treats") .. " with each."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_4].DISPLAY = function() return "Grab " .. HighlightQuestItem("Wedding Supplies") .. " around the corner of " .. HighlightNpc("Ciriel") .. "."; end
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_4].DISPLAY = function() return "Find the two guards to the south of " .. HighlightNpc("Ciriel") .. ", continue " .. HighlightQuest("Sweet Treats") .. " with each."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_5].DISPLAY = function() return "Grab final " .. HighlightQuestItem("Wedding Supplies") .. " between two south guards."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_2].DISPLAY = function() return "Go to " .. HighlightLocation("Merry Swan") .. ", place two " .. HighlightQuestItem("floral arrangements") .. " on stage for " .. HighlightQuest("Arranging Arrangements") .. "."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_3].DISPLAY = function() return Continue("What Ales You", "Get Barrel of Ale in The Merry Swan."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_END].DISPLAY = function() return TurnInTo("Sweet Treats", "Ciriel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_END].DISPLAY = function() return "Go up ramp, take stable-master to " .. HighlightLocation("Soldiers' Tier") .. ". " .. TurnInTo("Artistic Direction", "Borlach of Rimmon"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_DAGHIR].DISPLAY = function() return "Take stable-master to " .. HighlightLocation("Players' Tier") .. ". Continue " .. HighlightQuest("Tasty Morsels") .. " by offering sample to " .. HighlightNpc("Daghir"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PELNEN].DISPLAY = function() return Continue("Tasty Morsels", "Offer sample to " .. HighlightNpc("Pelnen")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_GWARBEN].DISPLAY = function() return Continue("Tasty Morsels", "Offer sample to " .. HighlightNpc("Gwárben")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_ARASTIL].DISPLAY = function() return Continue("Tasty Morsels", "Offer sample to " .. HighlightNpc("Arastil")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_BRANDION].DISPLAY = function() return Continue("Tasty Morsels", "Offer sample to " .. HighlightNpc("Brandion")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_PICKUP].DISPLAY = function() return TravelToTakeQuestFrom("Go", "the Blue Theatre", "Something Misplaced, Something Blue", "Duillam"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_HOLLUR].DISPLAY = "Find Hollur [Check manually]";
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_POLLA].DISPLAY = "Find Polla Feist [Check manually]";
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_FROKI].DISPLAY = "Find Fróki [Check manually]";
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_DAENAR].DISPLAY = "Find Daenar [Check manually]";
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_ROBBO].DISPLAY = "Find Robbo Schrotrücken [Check manually]";
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_GORD].DISPLAY = "Find Gord Dunkel [Check manually]";
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_COMPLETE].DISPLAY = "Continue 'Something Misplaced, Something Blue' with Hollur, Polla, Fróki, Gord, Robbo, and Daenar.";
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_END].DISPLAY = function() return "In the " .. HighlightLocation("Blue Theatre") .. ", place three " .. HighlightQuestItem("floral arrangements") .. " on stage for " .. HighlightQuest("Arranging Arrangements"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_END].DISPLAY = function() return TurnInTo("Something Misplaced, Something Blue", "Duillam"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_PICKUP].DISPLAY = function() return "[Milestone] Take stable-master to " .. HighlightLocation("High Stables") .. ". " .. TravelToTakeQuestFrom("go", "Houses of Healing, High Hall", "A Cure For All Ills", "Ioreth"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_BOTTLES].DISPLAY = function() return Continue("A Cure For All Ills", "Dispose of 10 half-emptied bottles"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_REVELLERS].DISPLAY = function() return Continue("A Cure For All Ills", "Remove 6 noisy revellers"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_END].DISPLAY = function() return TurnInTo("A Cure For All Ills", "Ioreth"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_COMPLETE].DISPLAY = function() return "Go to " .. HighlightLocation("Houses of Healing, House of Remedies") .. " and continue " .. HighlightQuest("Honouring Healers") .. " with 6 Healers."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_COMPLETE].DISPLAY = function() return "Take ramp down to " .. HighlightLocation("Sages' Tier") .. ", go to " .. HighlightLocation("Houses of Lore") .. " on the right, and place 6 " .. HighlightNpc("floral arrangements") .. " for " .. HighlightQuest("Something Floral"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_PICKUP].DISPLAY = function() return TakeFrom("Love Is In the Air", "Colladan"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_COMPLETE].DISPLAY = function() return Continue("Love Is In the Air", "Catch 6 wayward verses"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_END].DISPLAY = function() return TurnInTo("Love Is In the Air", "Colladan"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_4].DISPLAY = function() return "Exit Houses of Lore, turn right and go to " .. HighlightLocation("The Thirsty Seer") .. ". Go forward, then right. Get " .. HighlightNpc("Barrel of Ale") .. " for " .. HighlightQuest("What Ales You"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END].DISPLAY = function() return "[Milestone] " .. TurnInTo("In Celebration of Midsummer", "Faeleth"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_END].DISPLAY = function() return "Take stable-master to " .. HighlightLocation("Craftsmen's Tier") .. ". Enter " .. HighlightLocation("House of Craft") .. ". " .. TurnInTo("Honouring Healers", "Postmaster"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_END].DISPLAY = function() return "Take stable-master to " .. HighlightLocation("High Stables") .. ". Run to square on the Citadel. " .. TurnInTo("Something Floral", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_END].DISPLAY = function() return TurnInTo("To the Last Drop", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_END].DISPLAY = function() return TurnInTo("Wedding Supplies", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_END].DISPLAY = function() return TurnInTo("What Ales You", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_END].DISPLAY = function() return TurnInTo("Tasty Morsels", "Othnoron"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_END].DISPLAY = function() return TurnInTo("Floral Crowns", "Florist"); end;

QG_MIDSUMMER_FH = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE];
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP].DISPLAY = function() return TakeFromIn("In Celebration of Midsummer", "Captain Khâtaphos", "the Cracked Flagon"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_PICKUP].DISPLAY = function() return TakeFrom("Housekeeping", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_BEDS].DISPLAY = function() return "Make the beds"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_FLOORS].DISPLAY = function() return "Scrub the floors"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_END].DISPLAY = function() return TurnInTo("Housekeeping", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_PICKUP].DISPLAY = function() return TakeFrom("Tidal Treasures", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_SEASHELLS].DISPLAY = function() return "Collect seashells"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_END].DISPLAY = function() return TurnInTo("Tidal Treasures", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_PICKUP].DISPLAY = function() return TakeFrom("Assisting the Cook", "Sâghlem"); end;
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
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_END].DISPLAY = function() return TurnInTo("Assisting the Cook", "Sâghlem"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_PICKUP].DISPLAY = function() return TakeFrom("Building Castles", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_1].DISPLAY = function() return "Build sand-castle next to Thirsty Beachgoer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_2].DISPLAY = function() return "Build sand-castle next to Relaxing Holidayer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_3].DISPLAY = function() return "Build sand-castle west of Queer Merrymaker"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_4].DISPLAY = function() return "Build sand-castle by the cove"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_END].DISPLAY = function() return TurnInTo("Building Castles", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_PICKUP].DISPLAY = function() return TakeFrom("Fishing for Advice", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_FOUND].DISPLAY = function() return "Find a place to fish in the harbour"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_CAUGHT].DISPLAY = function() return "Fish from the pier in the harbour"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_FOUND].DISPLAY = function() return "Find a place to fish at the west side of the harbour"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_CAUGHT].DISPLAY = function() return "Fish off the pier in the west side of the harbour"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_FOUND].DISPLAY = function() return "Find a place to fish near the waterfall above the harbour"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_CAUGHT].DISPLAY = function() return "Catch a fish near the waterfall above the harbour"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_FOUND].DISPLAY = function() return "Find a place to fish from the sandbar in the north"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_CAUGHT].DISPLAY = function() return "Catch a fish from the sandbar in the north"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_END].DISPLAY = function() return TurnInTo("Fishing for Advice", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_PICKUP].DISPLAY = function() return TakeFrom("Offering to Help", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_1].DISPLAY = function() return "Talk to the thirsty beachgoer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_2].DISPLAY = function() return "Find a refreshing beverage inside The Cracked Flagon"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_3].DISPLAY = function() return "Bring the refreshing beverage to the thirsty beachgoer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_1].DISPLAY = function() return "Talk to the relaxing holidayer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_2].DISPLAY = function() return "Find the relaxing holidayer's book"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_3].DISPLAY = function() return "Bring the relaxing holidayer her book"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_1].DISPLAY = function() return "Talk to the unsettled sightseer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_2].DISPLAY = function() return "Find a cushion for the unsettled sightseer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_3].DISPLAY = function() return "Bring the cushion to the unsettled sightseer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_1].DISPLAY = function() return "Talk to the hopeful suitor"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_2].DISPLAY = function() return "Find a picnic basket, bring it to Sâghlem and pick up the filled basket"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_3].DISPLAY = function() return "Bring the filled picnic basket to the hopeful suitor"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_1].DISPLAY = function() return "Talk to the queer merrymaker"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_2].DISPLAY = function() return "Bury the queer merrymaker in the sand"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_3].DISPLAY = function() return "Bury the queer merrymaker some more"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_END].DISPLAY = function() return TurnInTo("Offering to Help", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_PICKUP].DISPLAY = function() return TakeFrom("Searching for Swimming Spots", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WEST_HARBOR].DISPLAY = function() return "Swim at the west side of the harbour"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTHERN_COVE].DISPLAY = function() return "Swim in the southern cove"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_NORTHERN_CHANNEL].DISPLAY = function() return "Swim in the northern channel"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WESTERN_BEACH].DISPLAY = function() return "Swim off the western beach"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTH_WESTERN_BEACH].DISPLAY = function() return "Swim off the south-western beach"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_END].DISPLAY = function() return TurnInTo("Searching for Swimming Spots", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_PICKUP].DISPLAY = function() return TakeFrom("A Flock of Seagulls", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_END].DISPLAY = function() return TurnInTo("A Flock of Seagulls", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_PICKUP].DISPLAY = function() return TakeFrom("Cat Conundrum", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_QUEST].DISPLAY = function() return TakeFrom("Yes to Cats or No to Cats", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SCRUFFY].DISPLAY = function() return "Feed the scruffy cat OR Shoo the scruffy cat"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SKINNY].DISPLAY = function() return "Feed the skinny cat OR Shoo the skinny cat"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLINKY].DISPLAY = function() return "Feed the slinky cat OR Shoo the slinky cat"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SMELLY].DISPLAY = function() return "Feed the smelly cat OR Shoo the smelly cat"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SASSY].DISPLAY = function() return "Feed the sassy cat OR Shoo the sassy cat"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLEEPY].DISPLAY = function() return "Feed the sleepy cat OR Shoo the sleepy cat"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_END].DISPLAY = function() return TurnInTo("Cat Conundrum", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_PICKUP].DISPLAY = function() return TakeFrom("Eyesores Drifted Ashore", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_1].DISPLAY = function() return "Clean up the flotsam east of the Unsettled Sightseer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_2].DISPLAY = function() return "Clean up the flotsam west of the Unsettled Sightseer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_3].DISPLAY = function() return "Clean up the flotsam next to sand castle"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_4].DISPLAY = function() return "Clean up the flotsam past the race gate"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_5].DISPLAY = function() return "Clean up the flotsam next to sand castle"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_6].DISPLAY = function() return "Clean up the flotsam by the cove"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_END].DISPLAY = function() return TurnInTo("Eyesores Drifted Ashore", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_PICKUP].DISPLAY = function() return TakeFrom("Let's Go Fly a Kite", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_BEACH].DISPLAY = function() return "Fly a kite on the southern beach"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_COVE].DISPLAY = function() return "Fly a kite near the southern cove"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_WEST_END_OF_HARBOUR].DISPLAY = function() return "Fly a kite at the west end of the harbour"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_EASTERN_BRIDGE].DISPLAY = function() return "Fly a kite atop the eastern bridge"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SAND_IN_FRONT_OF_INN].DISPLAY = function() return "Fly a kite on the sand in front of the inn"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_END].DISPLAY = function() return TurnInTo("Let's Go Fly a Kite", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_1].DISPLAY = function() return "Chase off irksome seagull by north end of west bridge"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_2].DISPLAY = function() return "Chase off irksome seagull near Merkhâma"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_3].DISPLAY = function() return "Chase off irksome seagull on eastern bridge"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_4].DISPLAY = function() return "Chase off irksome seagull by the Skinny Cat"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_5].DISPLAY = function() return "Chase off irksome seagull by relaxing holidayer"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_6].DISPLAY = function() return "Chase off irksome seagull by west fishing point"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_7].DISPLAY = function() return "Chase off irksome seagull by south end of west bridge"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_8].DISPLAY = function() return "Chase off irksome seagull by smelly cat"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END].DISPLAY = "Turn in 'In Celebration of Midsummer' to Captain Khâtaphos.";

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["New Quest: In Celebration of Midsummer"] = QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP;
    ["New Quest: Something Floral"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_PICKUP;
    ["New Quest: To the Last Drop"] = QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_PICKUP;
    ["New Quest: Wedding Supplies"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_PICKUP;
    ["New Quest: What Ales You"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_PICKUP;
    ["New Quest: Tasty Morsels"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PICKUP;
    ["New Quest: Arranging Arrangements"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_PICKUP;
    ["New Quest: Floral Crowns"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_PICKUP;
    ["New Quest: Aiding the Stable-hands"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_PICKUP;
    ["New Quest: Artistic Direction"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_PICKUP;
    ["New Quest: Toss a Coin"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_PICKUP;
    ["New Quest: Growing Pains"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_PICKUP;
    ["New Quest: Unhelpful Hounds"] = QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_PICKUP;
    ["New Quest: Honouring Healers"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_PICKUP;
    ["New Quest: Sweet Treats"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_PICKUP;
    ["New Quest: Something Misplaced, Something Blue"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_PICKUP;
    ["New Quest: A Cure For All Ills"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_PICKUP;
    ["New Quest: Love Is In the Air"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_PICKUP;
};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["New Quest: In Celebration of Midsummer"] = QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP;
    ["New Quest: Housekeeping"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_PICKUP;
    ["New Quest: Tidal Treasures"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_PICKUP;
    ["New Quest: Assisting the Cook"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_PICKUP;
    ["New Quest: Building Castles"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_PICKUP;
    ["New Quest: Fishing for Advice"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_PICKUP;
    ["New Quest: Offering to Help"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_PICKUP;
    ["New Quest: Searching for Swimming Spots"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_PICKUP;
    ["New Quest: A Flock of Seagulls"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_PICKUP;
    ["New Quest: Cat Conundrum"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_PICKUP;
    ["New Quest: Cat Conundrum: Yes to Cats"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_QUEST;
    ["New Quest: Cat Conundrum: No to Cats"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_QUEST;
    ["New Quest: Eyesores Drifted Ashore"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_PICKUP;
    ["New Quest: Let's Go Fly a Kite"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_PICKUP;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Completed:\nAiding the Stable-hands\n"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_END;
    ["Completed:\nToss a Coin\n"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_END;
    ["Completed:\nUnhelpful Hounds\n"] = QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_END;
    ["Completed:\nGrowing Pains\n"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_END;
    ["Completed:\nSweet Treats\n"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_END;
    ["Completed:\nArtistic Direction\n"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_END;
    ["Completed:\nSomething Misplaced, Something Blue\n"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_END;
    ["Completed:\nA Cure For All Ills\n"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_END;
    ["Completed:\nLove Is In the Air\n"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_END;
    ["Completed:\nIn Celebration of Midsummer\n"] = QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END;
    ["Completed:\nHonouring Healers\n"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_END;
    ["Completed:\nSomething Floral\n"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_END;
    ["Completed:\nTo the Last Drop\n"] = QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_END;
    ["Completed:\nWedding Supplies\n"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_END;
    ["Completed:\nWhat Ales You\n"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_END;
    ["Completed:\nTasty Morsels\n"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_END;
    ["Completed:\nFloral Crowns\n"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_END;
};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["Completed:\nHousekeeping\n"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_END;
    ["Completed:\nTidal Treasures\n"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_END;
    ["Completed:\nAssisting the Cook\n"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_END;
    ["Completed:\nBuilding Castles\n"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_END;
    ["Completed:\nFishing for Advice\n"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_END;
    ["Completed:\nIn Celebration of Midsummer\n"] = QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END;
    ["Completed:\nOffering to Help\n"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_END;
    ["Completed:\nSearching for Swimming Spots\n"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_END;
    ["Completed:\nA Flock of Seagulls\n"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_END;
    ["Completed:\nCat Conundrum\n"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_END;
    ["Completed:\nEyesores Drifted Ashore\n"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_END;
    ["Completed:\nLet's Go Fly a Kite\n"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_END;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Found a grooming brush"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_BRUSH;
    ["Collected apples"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_APPLES;
    ["Groomed horse (3/3)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_GROOM;
    ["Fed horse (3/3)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_FEED;
    ["Collected summer blossoms (10/10)"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_COLLECT;
    ["Tossed a coin to a noisy minstrel (6/6)"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_COMPLETE;
    ["Collected barrels of ale (1/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_1;
    ["Picked up the proper wine cask"] = QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_COMPLETE;
    ["Collected barrels of ale (2/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_2;
    ["Obtained flowers"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_LEBADAR;
    ["You found the ring!"] = QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_CONTINUE;
    ["Collected wedding supply crates (1/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_1;
    ["Obtained clay"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_POTTER;
    ["Collected wedding supply crates (3/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_3;
    ["Watered bushes (4/4)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WATER;
    ["Pulled out weeds (5/5)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WEEDS;
    ["Obtained charcoal"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_CIRIEL;
    ["Delivered pastries (2/4)"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_2;
    ["Collected wedding supply crates (4/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_4;
    ["Delivered pastries (4/4)"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_4;
    ["Collected wedding supply crates (5/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_5;
    ["Placed floral arrangements (2/5)"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_2;
    ["Collected barrels of ale (3/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_3;
    ["Direct the Cloudyheads to meet backstage in the Blue Theatre (6/6)"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_COMPLETE;
    ["Placed floral arrangements (5/5)"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_END;
    ["Disposed of half-emptied bottles in the High Hall (10/10)"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_BOTTLES;
    ["Delivered thank you notes (6/6)"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_COMPLETE;
    ["Placed floral arrangements (6/6)"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_COMPLETE;
    ["Caught wayward verses (6/6)"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_COMPLETE;
    ["Collected barrels of ale (4/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_4;

    ["The reveller says nothing, but departs with a sour look"] = { -- NAME is only used for debugging purposes.
        [1] = { ["NAME"] = "Reveller 1"; };
        [2] = { ["NAME"] = "Reveller 2"; };
        [3] = { ["NAME"] = "Reveller 3"; };
        [4] = { ["NAME"] = "Reveller 4"; };
        [5] = { ["NAME"] = "Reveller 5"; };
        [6] = { ["NAME"] = "Reveller 6"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_REVELLERS; };
    };
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["The scruffy cat hisses and scampers away"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SCRUFFY;
    ["The scruffy cat nips your finger as it greedily takes the treat"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SCRUFFY;
    ["The skinny cat protests before running away"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SKINNY;
    ["The skinny cat eyes you suspiciously but purrs as it takes your offering"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SKINNY;
    ["The slinky cat complains and slinks away"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLINKY;
    ["The slinky cat takes the treat followed by a quick bath"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLINKY;
    ["The smelly cat hisses and scurries off"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SMELLY;
    ["The smelly cat swallows the treat whole and rubs on your leg"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SMELLY;
    ["The sassy cat hisses at you and slowly walks away, tail held high"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SASSY;
    ["The sassy cat snaps up the treat, hisses, and runs away"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SASSY;
    ["The sleepy cat growls at you and dashes away"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLEEPY;
    ["The sleepy cat purrs as it takes the treat and goes back to sleep"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLEEPY;

    ["Built sand-castles on the beach (1/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_1;
    ["Built sand-castles on the beach (2/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_2;
    ["Built sand-castles on the beach (3/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_3;
    ["Built sand-castles on the beach (4/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_4;

    ["Chased off the irksome seagulls (1/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_1;
    ["Chased off the irksome seagulls (2/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_2;
    ["Chased off the irksome seagulls (3/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_3;
    ["Chased off the irksome seagulls (4/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_4;
    ["Chased off the irksome seagulls (5/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_5;
    ["Chased off the irksome seagulls (6/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_6;
    ["Chased off the irksome seagulls (7/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_7;
    ["Chased off the irksome seagulls (8/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_8;

    ["This looks refreshing!"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_2;

    ["This looks like a good spot"] = { -- NAME is only used for debugging purposes.
        [1] = { ["NAME"] = "Fish 1 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_FOUND; };
        [2] = { ["NAME"] = "Fish 2 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_FOUND; };
        [3] = { ["NAME"] = "Fish 3 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_FOUND; };
        [4] = { ["NAME"] = "Fish 4 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_FOUND; };
    };

    ["Caught a fish!"] = { -- NAME is only used for debugging purposes.
        [1] = { ["NAME"] = "Fish 1 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_CAUGHT; };
        [2] = { ["NAME"] = "Fish 2 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_CAUGHT; };
        [3] = { ["NAME"] = "Fish 3 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_CAUGHT; };
        [4] = { ["NAME"] = "Fish 4 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_CAUGHT; };
    };

    ["People here don't seem to notice your kite"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_WEST_END_OF_HARBOUR;
    ["Many people should see you from here!"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_EASTERN_BRIDGE;
    ["People here seem impressed with your kite!"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_BEACH;
    ["Do the people here appreciate your kite?"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_COVE;
    ["Was that kite-envy you just saw?"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SAND_IN_FRONT_OF_INN;

    ["Picked up \"A Memory of Mûmakil\" by J.F. Ugsha-imri"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_2;

    ["Beds made (4/4)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_BEDS;
    ["Floors scrubbed (4/4)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_FLOORS;

    ["The water is deep and people are just watching you possibly drown!"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WEST_HARBOR;
    ["Not a bad place to swim, but it is quite public"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WEST_HARBOR;

    ["This would be a lot nicer if the water was more shallow"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTHERN_COVE;
    ["The water is warm and perfect for swimming"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTHERN_COVE;

    ["It's all right here, but way too deep"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_NORTHERN_CHANNEL;
    ["The water in the channel is calm and warm"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_NORTHERN_CHANNEL;

    ["What a dangerous place - this was a mistake!"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WESTERN_BEACH;
    ["The water is cold and the waves are a bit much"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WESTERN_BEACH;

    ["There is entirely too much water here!"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTH_WESTERN_BEACH;
    ["This is a nice, quiet place to swim"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTH_WESTERN_BEACH;

    ["Cleaned up the flotsam on the beach (1/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_1;
    ["Cleaned up the flotsam on the beach (2/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_2;
    ["Cleaned up the flotsam on the beach (3/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_3;
    ["Cleaned up the flotsam on the beach (4/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_4;
    ["Cleaned up the flotsam on the beach (5/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_5;
    ["Cleaned up the flotsam on the beach (6/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_6;

    ["This cushion will do"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_2;

    ["'More!', the strange man demands"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_2;
    ["He thanks you with a sigh of happiness"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_3;

    ["Collected fresh herbs (1/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_1;
    ["Collected fresh herbs (2/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_2;
    ["Collected fresh herbs (3/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_3;
    ["Collected fresh herbs (4/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_4;
    ["Collected juicy lemons (1/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_1;
    ["Collected juicy lemons (2/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_2;
    ["Collected juicy lemons (3/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_3;
    ["Collected juicy lemons (4/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_4;
    ["Collected handfuls of olives (1/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_1;
    ["Collected handfuls of olives (2/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_2;
    ["Collected handfuls of olives (3/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_3;
    ["Collected handfuls of olives (4/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_4;

    ["Seashells collected (8/8)"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_SEASHELLS;

};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Groomed horse %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_GROOM;
    ["Fed horse %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_FEED;
    ["Collected summer blossoms %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_COLLECT;
    ["Tossed a coin to a noisy minstrel %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_COMPLETE;
    ["Watered bushes %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WATER;
    ["Pulled out weeds %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WEEDS;
    ["Delivered pastries %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_4;
    ["Collected wedding supply crates %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_5;
    ["Delivered thank you notes %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_COMPLETE;
    ["Placed floral arrangements %((%d+)/(5)%)"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_END;
    ["Placed floral arrangements %((%d+)/(6)%)"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_COMPLETE;
    ["Disposed of half%-emptied bottles in the High Hall %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_BOTTLES;
    ["Caught wayward verses %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_COMPLETE;
    ["Collected barrels of ale %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_4;

};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["Beds made %((%d+)/(%d+)%)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_BEDS;
    ["Floors scrubbed %((%d+)/(%d+)%)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_FLOORS;
    ["Seashells collected %((%d+)/(%d+)%)"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_SEASHELLS;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
     [1] = { ["NAME"] = "Checkered Blanket"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_CRAFT; };
     [2] = { ["NAME"] = "Daghir"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_DAGHIR; };
     [3] = { ["NAME"] = "Pelnen"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PELNEN; };
     [4] = { ["NAME"] = "Gwárben"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_GWARBEN; };
     [5] = { ["NAME"] = "Arastil"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_ARASTIL; };
     [6] = { ["NAME"] = "Brandion"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_BRANDION; };
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    [1] = { ["NAME"] = "Thirsty Beachgoer"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_1; };
    [2] = { ["NAME"] = "Thirsty Beachgoer"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_3; };
    [3] = { ["NAME"] = "Relaxing Holidayer"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_1; };
    [4] = { ["NAME"] = "Relaxing Holidayer"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_3; };
    [5] = { ["NAME"] = "Unsettled Sightseer"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_1; };
    [6] = { ["NAME"] = "Unsettled Sightseer"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_3; };
    [7] = { ["NAME"] = "Hopeful Suitor"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_1; };
    [8] = { ["NAME"] = "Filled Picnic Basket"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_2; };
    [9] = { ["NAME"] = "Hopeful Suitor"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_3; };
   [10] = { ["NAME"] = "Queer Merrymaker"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_1; };
};
