
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[ILAA] = "\nThis guide is based on LilRedHead's excellent Inn League and Ale Association Hunter-assisted run at https://lifebeyondtheshire.com/inn-league-and-ale-association-hunter-assisted-speedy-delivery-run/. Thank you LRH!";

QG_ILAA = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[ILAA];
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_WHITE_PICKUP].DISPLAY = function() return string.format("In %s, take %s from %s", HighlightLocation("Thorin's Hall Inn"), HighlightQuest("A Bit of White"), HighlightNpc("Ale Association Tavern Keep")); end
QG_ILAA[QG_ILAA_INDEX.A_CONVOLUTED_WINE_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("A Convoluted Wine")); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_PRANK_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("A Dark Prank")); end
QG_ILAA[QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("A Different Reminder of Rivendell")); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("A Drink of the Best Character")); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("All But the Good Cider")); end
QG_ILAA[QG_ILAA_INDEX.BOMBURS_BREATH_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Bombur's Breath")); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Never Further From Home")); end
QG_ILAA[QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Not Atli's Favourite")); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("One Drink Too Few")); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_TICKLE_PICKUP].DISPLAY = function() return string.format("Take %s", HighlightQuest("Quite a Tickle")); end

QG_ILAA[QG_ILAA_INDEX.QUITE_A_TICKLE_DRINK].DISPLAY = function() return CollectFromNpc("Fake Thistlebelly Brew", "Rúnulf"); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_TICKLE_END].DISPLAY = function() return string.format("Travel to %s, turn in %s to %s.", HighlightLocation("Ost Haer in Harloeg"), HighlightQuest("Quite a Tickle"), HighlightNpc("Wald Mugwort")); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_PICKLE_PICKUP].DISPLAY = function() return TakeFrom("Quite a Pickle", "Wald Mugwort"); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_PICKLE_DRINK].DISPLAY = function() return CollectFromLocation("Thistlebelly Brew", "The Ivy Bush in Hobbiton"); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_PICKLE_END].DISPLAY = function() return TurnInTo("Quite a Pickle", "Wald Mugwort"); end

QG_ILAA[QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_DRINK].DISPLAY = function() return TravelCollectFrom("Prancing Pony in Bree", "Fake Limael's Vintage", "Barliman Butterbur"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_DRINK].DISPLAY = function() return CollectFromNpc("Fake Forsaken Ale", "Barliman Butterbur"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_END].DISPLAY = function() return TravelTurnInTo("Thrasi's Lodge", "One Drink Too Few", "Alrek"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_PICKUP].DISPLAY = function() return TakeFrom("One Drink Too Many", "Alrek"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_DRINK].DISPLAY = function() return CollectFromLocation("Forsaken Ale", "The Forsaken Inn, Lone-lands"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_END].DISPLAY = function() return TurnInTo("One Drink Too Many", "Alrek"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_END].DISPLAY = function() return TravelTurnInTo("Thornley's Work Site in Bree-land", "Never Further From Home", "Wesley Hopwood"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_PICKUP].DISPLAY = function() return TakeFrom("Never Far From Home", "Wesley Hopwood"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_DRINK].DISPLAY = function() return CollectFromLocation("Limael's Vintage", "Limael's Vineyard, Ered Luin"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_END].DISPLAY = function() return TurnInTo("Never Far From Home", "Wesley Hopwood"); end

QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_DRINK].DISPLAY = function() return TravelCollectFrom("The Forsaken Inn in Lone-lands", "Fake Stars of Old Cider", "Anlaf the Forlorn"); end
QG_ILAA[QG_ILAA_INDEX.A_CONVOLUTED_WINE_DRINK].DISPLAY = function() return TravelCollectFrom("The Bird and Baby Inn in Michel Delving", "Fake Brandy Wine", "Carlo Blagrove"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_WHITE_DRINK].DISPLAY = function() return TravelCollectFrom("The Ivy Bush Inn in Hobbiton", "Fake Blagrove's Brown", "Hereward Loamsdown"); end
QG_ILAA[QG_ILAA_INDEX.BOMBURS_BREATH_DRINK].DISPLAY = function() return TravelCollectFrom("The Green Dragon in Bywater", "Fake Bombur's Beard Lager", "Barmy Rootknot"); end
QG_ILAA[QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_DRINK].DISPLAY = function() return CollectFromNpc("Fake Beakbreaker Ale", "Barmy Rootknot"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_PRANK_DRINK].DISPLAY = function() return TravelCollectFrom("The Floating Log Inn in Frogmorton", "Fake Moor-boar Beer", "Ponto Hopsbloom"); end

QG_ILAA[QG_ILAA_INDEX.BOMBURS_BREATH_END].DISPLAY = function() return TravelTurnInTo("Othrikar in North Downs", "Bombur's Breath", "Múli"); end
QG_ILAA[QG_ILAA_INDEX.A_MEMBER_IN_NEED_PICKUP].DISPLAY = function() return TakeFrom("A Member in Need", "Múli"); end
QG_ILAA[QG_ILAA_INDEX.A_MEMBER_IN_NEED_DRINK].DISPLAY = function() return CollectFromLocation("Bombur's Beard Lager", "Thorin's Hall Inn, Ered Luin"); end
QG_ILAA[QG_ILAA_INDEX.A_MEMBER_IN_NEED_END].DISPLAY = function() return TurnInTo("A Member in Need", "Múli"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_WHITE_END].DISPLAY = function() return TravelTurnInTo("Oatbarton in Evendim", "A Bit of White", "Harigar Mudbottom"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_BROWN_PICKUP].DISPLAY = function() return TakeFrom("A Bit of Brown", "Harigar Mudbottom"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_BROWN_DRINK].DISPLAY = function() return CollectFromLocation("Blagrove's Brown", "The Bird and Baby Inn, The Shire"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_BROWN_END].DISPLAY = function() return TurnInTo("A Bit of Brown", "Harigar Mudbottom"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_END].DISPLAY = function() return TravelTurnInTo("Brockenborings in The Shire", "All But the Good Cider", "Foxglove Grubb"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_CIDER_PICKUP].DISPLAY = function() return TakeFrom("All But the Cider", "Foxglove Grubb"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_CIDER_DRINK].DISPLAY = function() return CollectFromLocation("Stars of Old Cider", "The Prancing Pony, Bree-land"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_CIDER_END].DISPLAY = function() return TurnInTo("All But the Cider", "Foxglove Grubb"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_DRINK].DISPLAY = function() return string.format("In %s, collect %s from %s", HighlightLocation("The Plough and Stars"), HighlightQuestItem("Fake Swill"), HighlightNpc("Halson Tubwort")); end
QG_ILAA[QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_END].DISPLAY = function() return TravelTurnInTo("Hrimbarg in Misty Mountains", "Not Atli's Favourite", "Óli"); end
QG_ILAA[QG_ILAA_INDEX.ATLIS_FAVOURITE_PICKUP].DISPLAY = function() return TakeFrom("Atli's Favourite", "Óli"); end
QG_ILAA[QG_ILAA_INDEX.ATLIS_FAVOURITE_DRINK].DISPLAY = function() return CollectFromLocation("Beakbreaker Ale", "The Comb and Wattle Inn, Bree-land"); end
QG_ILAA[QG_ILAA_INDEX.ATLIS_FAVOURITE_END].DISPLAY = function() return TurnInTo("Atli's Favourite", "Óli"); end
QG_ILAA[QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_DRINK].DISPLAY = function() return TravelCollectFrom("The Last Homely House in Rivendell", "Fake Dorwinion White", "Sogadan"); end

QG_ILAA[QG_ILAA_INDEX.A_CONVOLUTED_WINE_END].DISPLAY = function() return TravelTurnInTo("Echad Candelleth in Trollshaws", "A Convoluted Wine", "Saerthuithel"); end
QG_ILAA[QG_ILAA_INDEX.A_SIMPLE_WINE_PICKUP].DISPLAY = function() return TakeFrom("A Simple Wine", "Saerthuithel"); end
QG_ILAA[QG_ILAA_INDEX.A_SIMPLE_WINE_DRINK].DISPLAY = function() return CollectFromLocation("Brandy Wine", "The Golden Perch, The Shire"); end
QG_ILAA[QG_ILAA_INDEX.A_SIMPLE_WINE_END].DISPLAY = function() return TurnInTo("A Simple Wine", "Saerthuithel"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_PRANK_END].DISPLAY = function() return TravelTurnInTo("Zigilgund in Forochel", "A Dark Prank", "Lófi"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_DAY_PICKUP].DISPLAY = function() return TakeFrom("A Dark Day", "Lófi"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_DAY_DRINK].DISPLAY = function() return CollectFromLocation("Moor-boar Beer", "The Prancing Pony, Bree-land"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_DAY_END].DISPLAY = function() return TurnInTo("A Dark Day", "Lófi"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_END].DISPLAY = function() return TravelTurnInTo("Aughaire in Angmar", "A Drink of the Best Character", "Nathalan"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_PICKUP].DISPLAY = function() return TakeFrom("A Drink of the Worst Character", "Nathalan"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_DRINK].DISPLAY = function() return CollectFromLocation("Swill", "The Forsaken Inn, Lone-lands"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_END].DISPLAY = function() return TurnInTo("A Drink of the Worst Character", "Nathalan"); end
QG_ILAA[QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_END].DISPLAY = function() return TravelTurnInTo("Refuge of Edhelion in Ered Luin", "A Different Reminder of Rivendell", "Lendasil"); end
QG_ILAA[QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_PICKUP].DISPLAY = function() return TakeFrom("A Reminder of Rivendell", "Lendasil"); end
QG_ILAA[QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_DRINK].DISPLAY = function() return CollectFromLocation("Dorwinion White", "The Last Homely House, Trollshaws"); end
QG_ILAA[QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_END].DISPLAY = function() return TurnInTo("A Reminder of Rivendell", "Lendasil"); end

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[ILAA] = {
    ["New Quest: All But the Good Cider"] = QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_PICKUP;
    ["New Quest: All But the Cider"] = QG_ILAA_INDEX.ALL_BUT_THE_CIDER_PICKUP;

    ["New Quest: Never Further From Home"] = QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_PICKUP;
    ["New Quest: Never Far From Home"] = QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_PICKUP;

    ["New Quest: One Drink Too Few"] = QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_PICKUP;
    ["New Quest: One Drink Too Many"] = QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_PICKUP;

    ["New Quest: Quite a Tickle"] = QG_ILAA_INDEX.QUITE_A_TICKLE_PICKUP;
    ["New Quest: Quite a Pickle"] = QG_ILAA_INDEX.QUITE_A_PICKLE_PICKUP;

    ["New Quest: A Bit of White"] = QG_ILAA_INDEX.A_BIT_OF_WHITE_PICKUP;
    ["New Quest: A Bit of Brown"] = QG_ILAA_INDEX.A_BIT_OF_BROWN_PICKUP;

    ["New Quest: Bombur's Breath"] = QG_ILAA_INDEX.BOMBURS_BREATH_PICKUP;
    ["New Quest: A Member in Need"] = QG_ILAA_INDEX.A_MEMBER_IN_NEED_PICKUP;

    ["New Quest: A Different Reminder of Rivendell"] = QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_PICKUP;
    ["New Quest: A Reminder of Rivendell"] = QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_PICKUP;

    ["New Quest: A Drink of the Best Character"] = QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_PICKUP;
    ["New Quest: A Drink of the Worst Character"] = QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_PICKUP;

    ["New Quest: A Convoluted Wine"] = QG_ILAA_INDEX.A_CONVOLUTED_WINE_PICKUP;
    ["New Quest: A Simple Wine"] = QG_ILAA_INDEX.A_SIMPLE_WINE_PICKUP;

    ["New Quest: A Dark Prank"] = QG_ILAA_INDEX.A_DARK_PRANK_PICKUP;
    ["New Quest: A Dark Day"] = QG_ILAA_INDEX.A_DARK_DAY_PICKUP;

    ["New Quest: Not Atli's Favourite"] = QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_PICKUP;
    ["New Quest: Atli's Favourite"] = QG_ILAA_INDEX.ATLIS_FAVOURITE_PICKUP;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[ILAA] = {
    ["Completed:\nAll But the Good Cider\n"] = QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_END;
    ["Completed:\nAll But the Cider\n"] = QG_ILAA_INDEX.ALL_BUT_THE_CIDER_END;

    ["Completed:\nNever Further From Home\n"] = QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_END;
    ["Completed:\nNever Far From Home\n"] = QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_END;

    ["Completed:\nOne Drink Too Few\n"] = QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_END;
    ["Completed:\nOne Drink Too Many\n"] = QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_END;

    ["Completed:\nQuite a Tickle\n"] = QG_ILAA_INDEX.QUITE_A_TICKLE_END;
    ["Completed:\nQuite a Pickle\n"] = QG_ILAA_INDEX.QUITE_A_PICKLE_END;

    ["Completed:\nA Bit of White\n"] = QG_ILAA_INDEX.A_BIT_OF_WHITE_END;
    ["Completed:\nA Bit of Brown\n"] = QG_ILAA_INDEX.A_BIT_OF_BROWN_END;

    ["Completed:\nBombur's Breath\n"] = QG_ILAA_INDEX.BOMBURS_BREATH_END;
    ["Completed:\nA Member in Need\n"] = QG_ILAA_INDEX.A_MEMBER_IN_NEED_END;

    ["Completed:\nA Different Reminder of Rivendell\n"] = QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_END;
    ["Completed:\nA Reminder of Rivendell\n"] = QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_END;

    ["Completed:\nA Drink of the Best Character\n"] = QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_END;
    ["Completed:\nA Drink of the Worst Character\n"] = QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_END;

    ["Completed:\nA Convoluted Wine\n"] = QG_ILAA_INDEX.A_CONVOLUTED_WINE_END;
    ["Completed:\nA Simple Wine\n"] = QG_ILAA_INDEX.A_SIMPLE_WINE_END;

    ["Completed:\nA Dark Prank\n"] = QG_ILAA_INDEX.A_DARK_PRANK_END;
    ["Completed:\nA Dark Day\n"] = QG_ILAA_INDEX.A_DARK_DAY_END;

    ["Completed:\nNot Atli's Favourite\n"] = QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_END;
    ["Completed:\nAtli's Favourite\n"] = QG_ILAA_INDEX.ATLIS_FAVOURITE_END;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[ILAA] = {
    ["You have collected fake Stars of Old Cider"] = QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_DRINK;
    ["You have collected Stars of Old Cider"] = QG_ILAA_INDEX.ALL_BUT_THE_CIDER_DRINK;

    ["You have collected fake Limael's Vintage"] = QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_DRINK;
    ["You have collected Limael's Vintage"] = QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_DRINK;

    ["You have collected fake Forsaken Ale"] = QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_DRINK;
    ["You have collected Forsaken Ale"] = QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_DRINK;

    ["You have collected fake Thistlebelly Brew"] = QG_ILAA_INDEX.QUITE_A_TICKLE_DRINK;
    ["You have collected Thistlebelly Brew"] = QG_ILAA_INDEX.QUITE_A_PICKLE_DRINK;

    ["You have collected fake Blagrove's Brown"] = QG_ILAA_INDEX.A_BIT_OF_WHITE_DRINK;
    ["You have collected Blagrove's Brown"] = QG_ILAA_INDEX.A_BIT_OF_BROWN_DRINK;

    ["You have collected fake Bombur's Beard Lager"] = QG_ILAA_INDEX.BOMBURS_BREATH_DRINK;
    ["Collected Bombur's Beard Lager"] = QG_ILAA_INDEX.A_MEMBER_IN_NEED_DRINK;

    ["You have collected fake Dorwinion White"] = QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_DRINK;
    ["You have collected Dorwinion White"] = QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_DRINK;

    ["You have collected the mead. It will be disguised as Swill for you"] = QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_DRINK;
    ["You have collected Swill....(yech)"] = QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_DRINK;

    ["You have collected fake Brandy Wine"] = QG_ILAA_INDEX.A_CONVOLUTED_WINE_DRINK;
    ["You have collected Brandy Wine"] = QG_ILAA_INDEX.A_SIMPLE_WINE_DRINK;

    ["You have collected fake Moor-boar Beer"] = QG_ILAA_INDEX.A_DARK_PRANK_DRINK;
    ["You have collected Moor-boar Beer"] = QG_ILAA_INDEX.A_DARK_DAY_DRINK;

    ["You have collected fake Beakbreaker Ale"] = QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_DRINK;
    ["You have collected Beakbreaker Ale"] = QG_ILAA_INDEX.ATLIS_FAVOURITE_DRINK;
};
