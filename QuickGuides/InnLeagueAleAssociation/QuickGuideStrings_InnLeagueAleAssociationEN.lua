
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[ILAA] = {
    [DEFAULT_QUICK_GUIDE] = "LRH Hunter-enabled";
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[ILAA] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[ILAA][DEFAULT_QUICK_GUIDE] = "\nThis guide is based on LilRedHead's excellent Inn League and Ale Association Hunter-assisted run at https://lifebeyondtheshire.com/inn-league-and-ale-association-hunter-assisted-speedy-delivery-run/. Thank you LRH!";

QG_ILAA = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[ILAA][DEFAULT_QUICK_GUIDE];
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_WHITE_PICKUP, function() return string.format("In %s, take %s from %s", HighlightLocation("Thorin's Hall Inn"), HighlightQuest("A Bit of White"), HighlightNpc("Ale Association Tavern Keep")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_CONVOLUTED_WINE_PICKUP, function() return string.format("Take %s", HighlightQuest("A Convoluted Wine")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_PRANK_PICKUP, function() return string.format("Take %s", HighlightQuest("A Dark Prank")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_PICKUP, function() return string.format("Take %s", HighlightQuest("A Different Reminder of Rivendell")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_PICKUP, function() return string.format("Take %s", HighlightQuest("A Drink of the Best Character")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_PICKUP, function() return string.format("Take %s", HighlightQuest("All But the Good Cider")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.BOMBURS_BREATH_PICKUP, function() return string.format("Take %s", HighlightQuest("Bombur's Breath")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_PICKUP, function() return string.format("Take %s", HighlightQuest("Never Further From Home")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_PICKUP, function() return string.format("Take %s", HighlightQuest("Not Atli's Favourite")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_PICKUP, function() return string.format("Take %s", HighlightQuest("One Drink Too Few")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_TICKLE_PICKUP, function() return string.format("Take %s", HighlightQuest("Quite a Tickle")); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_TICKLE_DRINK, function() return CollectFromNpc("Fake Thistlebelly Brew", "Rúnulf"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_TICKLE_END, function() return string.format("Travel to %s, turn in %s to %s.", HighlightLocation("Ost Haer in Harloeg"), HighlightQuest("Quite a Tickle"), HighlightNpc("Wald Mugwort")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_PICKLE_PICKUP, function() return TakeFrom("Quite a Pickle", "Wald Mugwort"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_PICKLE_DRINK, function() return CollectFromLocation("Thistlebelly Brew", "The Ivy Bush in Hobbiton"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_PICKLE_END, function() return TurnInTo("Quite a Pickle", "Wald Mugwort"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_DRINK, function() return TravelCollectFrom("Prancing Pony in Bree", "Fake Limael's Vintage", "Barliman Butterbur"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_DRINK, function() return CollectFromNpc("Fake Forsaken Ale", "Barliman Butterbur"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_END, function() return TravelTurnInTo("Thrasi's Lodge", "One Drink Too Few", "Alrek"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_PICKUP, function() return TakeFrom("One Drink Too Many", "Alrek"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_DRINK, function() return CollectFromLocation("Forsaken Ale", "The Forsaken Inn, Lone-lands"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_END, function() return TurnInTo("One Drink Too Many", "Alrek"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_END, function() return TravelTurnInTo("Thornley's Work Site in Bree-land", "Never Further From Home", "Wesley Hopwood"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_PICKUP, function() return TakeFrom("Never Far From Home", "Wesley Hopwood"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_DRINK, function() return CollectFromLocation("Limael's Vintage", "Limael's Vineyard, Ered Luin"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_END, function() return TurnInTo("Never Far From Home", "Wesley Hopwood"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_DRINK, function() return TravelCollectFrom("The Forsaken Inn in Lone-lands", "Fake Stars of Old Cider", "Anlaf the Forlorn"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_CONVOLUTED_WINE_DRINK, function() return TravelCollectFrom("The Bird and Baby Inn in Michel Delving", "Fake Brandy Wine", "Carlo Blagrove"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_WHITE_DRINK, function() return TravelCollectFrom("The Ivy Bush Inn in Hobbiton", "Fake Blagrove's Brown", "Hereward Loamsdown"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.BOMBURS_BREATH_DRINK, function() return TravelCollectFrom("The Green Dragon in Bywater", "Fake Bombur's Beard Lager", "Barmy Rootknot"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_DRINK, function() return CollectFromNpc("Fake Beakbreaker Ale", "Barmy Rootknot"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_PRANK_DRINK, function() return TravelCollectFrom("The Floating Log Inn in Frogmorton", "Fake Moor-boar Beer", "Ponto Hopsbloom"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.BOMBURS_BREATH_END, function() return TravelTurnInTo("Othrikar in North Downs", "Bombur's Breath", "Múli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_MEMBER_IN_NEED_PICKUP, function() return TakeFrom("A Member in Need", "Múli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_MEMBER_IN_NEED_DRINK, function() return CollectFromLocation("Bombur's Beard Lager", "Thorin's Hall Inn, Ered Luin"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_MEMBER_IN_NEED_END, function() return TurnInTo("A Member in Need", "Múli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_WHITE_END, function() return TravelTurnInTo("Oatbarton in Evendim", "A Bit of White", "Harigar Mudbottom"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_BROWN_PICKUP, function() return TakeFrom("A Bit of Brown", "Harigar Mudbottom"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_BROWN_DRINK, function() return CollectFromLocation("Blagrove's Brown", "The Bird and Baby Inn, The Shire"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_BROWN_END, function() return TurnInTo("A Bit of Brown", "Harigar Mudbottom"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_END, function() return TravelTurnInTo("Brockenborings in The Shire", "All But the Good Cider", "Foxglove Grubb"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_CIDER_PICKUP, function() return TakeFrom("All But the Cider", "Foxglove Grubb"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_CIDER_DRINK, function() return CollectFromLocation("Stars of Old Cider", "The Prancing Pony, Bree-land"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_CIDER_END, function() return TurnInTo("All But the Cider", "Foxglove Grubb"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_DRINK, function() return string.format("In %s, collect %s from %s", HighlightLocation("The Plough and Stars"), HighlightQuestItem("Fake Swill"), HighlightNpc("Halson Tubwort")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_END, function() return TravelTurnInTo("Hrimbarg in Misty Mountains", "Not Atli's Favourite", "Óli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ATLIS_FAVOURITE_PICKUP, function() return TakeFrom("Atli's Favourite", "Óli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ATLIS_FAVOURITE_DRINK, function() return CollectFromLocation("Beakbreaker Ale", "The Comb and Wattle Inn, Combe, Bree-land"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ATLIS_FAVOURITE_END, function() return TurnInTo("Atli's Favourite", "Óli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_DRINK, function() return TravelCollectFrom("The Last Homely House in Rivendell", "Fake Dorwinion White", "Sogadan"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_CONVOLUTED_WINE_END, function() return TravelTurnInTo("Echad Candelleth in Trollshaws", "A Convoluted Wine", "Saerthuithel"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_SIMPLE_WINE_PICKUP, function() return TakeFrom("A Simple Wine", "Saerthuithel"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_SIMPLE_WINE_DRINK, function() return CollectFromLocation("Brandy Wine", "The Golden Perch, The Shire"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_SIMPLE_WINE_END, function() return TurnInTo("A Simple Wine", "Saerthuithel"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_PRANK_END, function() return TravelTurnInTo("Zigilgund in Forochel", "A Dark Prank", "Lófi"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_DAY_PICKUP, function() return TakeFrom("A Dark Day", "Lófi"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_DAY_DRINK, function() return CollectFromLocation("Moor-boar Beer", "The Prancing Pony, Bree-land"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_DAY_END, function() return TurnInTo("A Dark Day", "Lófi"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_END, function() return TravelTurnInTo("Aughaire in Angmar", "A Drink of the Best Character", "Nathalan"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_PICKUP, function() return TakeFrom("A Drink of the Worst Character", "Nathalan"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_DRINK, function() return CollectFromLocation("Swill", "The Forsaken Inn, Lone-lands"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_END, function() return TurnInTo("A Drink of the Worst Character", "Nathalan"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_END, function() return TravelTurnInTo("Refuge of Edhelion in Ered Luin", "A Different Reminder of Rivendell", "Lendasil"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_PICKUP, function() return TakeFrom("A Reminder of Rivendell", "Lendasil"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_DRINK, function() return CollectFromLocation("Dorwinion White", "The Last Homely House, Trollshaws"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_END, function() return TurnInTo("A Reminder of Rivendell", "Lendasil"); end);
