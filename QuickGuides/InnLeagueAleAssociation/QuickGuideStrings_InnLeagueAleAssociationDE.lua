
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[ILAA] = {
    [DEFAULT_QUICK_GUIDE] = "LRH Hunter-enabled";
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[ILAA] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[ILAA][DEFAULT_QUICK_GUIDE] = "\nDieser Leitfaden basiert auf dem hervorragenden Leitfaden von LilRedHead unter https://lifebeyondtheshire.com/inn-league-and-ale-association-hunter-assisted-speedy-delivery-run/. Vielen Dank, LRH!";

QG_ILAA = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[ILAA][DEFAULT_QUICK_GUIDE];
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_WHITE_PICKUP, function() return string.format("In %s, nimm %s von %s an", HighlightLocation("Gasthaus von Thorins Halle"), HighlightQuest("Ein wenig Weiß"), HighlightNpc("Gastwirt der Bier-Genossenschaft")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_CONVOLUTED_WINE_PICKUP, function() return string.format("Nimm %s an", HighlightQuest("Ein komplexer Wein")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_PRANK_PICKUP, function() return string.format("Nimm %s an", HighlightQuest("Ein dunkler Streich")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_PICKUP, function() return string.format("Nimm %s an", HighlightQuest("Eine andere Erinnerung an Bruchtal")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_PICKUP, function() return string.format("Nimm %s an", HighlightQuest("Das beste aller Getränke")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_PICKUP, function() return string.format("Nimm %s an", HighlightQuest("Alles außer dem guten Apfelwein")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.BOMBURS_BREATH_PICKUP, function() return string.format("Nimm %s an", HighlightQuest("Bomburs Odem")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_PICKUP, function() return string.format("Nimm %s an", HighlightQuest("Nie weiter weg von zu Hause")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_PICKUP, function() return string.format("Nimm %s an", HighlightQuest("Nicht Atlis Lieblingsgetränk")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_PICKUP, function() return string.format("Nimm %s an", HighlightQuest("Ein Getränk zu wenig")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_TICKLE_PICKUP, function() return string.format("Nimm %s an", HighlightQuest("Was zum Kichern")); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_TICKLE_DRINK, function() return CollectFromNpc("Gefälschtes Distelbauch-Bräu", "Rúnulf"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_TICKLE_END, function() return string.format("Reise nach %s, gib %s bei %s ab.", HighlightLocation("Feste Haer in Harlog"), HighlightQuest("Was zum Kichern"), HighlightNpc("Waldemar Labkraut")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_PICKLE_PICKUP, function() return TakeFrom("Das Dilemma", "Waldemar Labkraut"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_PICKLE_DRINK, function() return CollectFromLocation("Distelbauch-Bräu", "Gasthaus \"Efeubusch\", Hobbingen"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.QUITE_A_PICKLE_END, function() return TurnInTo("Das Dilemma", "Waldemar Labkraut"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_DRINK, function() return TravelCollectFrom("Zum Tänzelnden Pony in Bree", "Gefälschtes Limaels Tröpfchen", "Gerstenmann Butterblume"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_DRINK, function() return CollectFromNpc("Gefälschtes Verlassensbacher", "Gerstenmann Butterblume"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_END, function() return TravelTurnInTo("Thrasis Hütte", "Ein Getränk zu wenig", "Alrek"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_PICKUP, function() return TakeFrom("Ein Getränk zu viel", "Alrek"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_DRINK, function() return CollectFromLocation("Verlassensbacher", "Die Verlassene Herberge, Die Einsamen Lande"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_END, function() return TurnInTo("Ein Getränk zu viel", "Alrek"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_END, function() return TravelTurnInTo("Dornlags Baustelle in Breeland", "Nie weiter weg von zu Hause", "Widukind Hopfenholz"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_PICKUP, function() return TakeFrom("Nie weit weg von zu Hause", "Widukind Hopfenholz"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_DRINK, function() return CollectFromLocation("Limaels Tröpfchen", "Limaels Weinberg, Ered Luin"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_END, function() return TurnInTo("Nie weit weg von zu Hause", "Widukind Hopfenholz"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_DRINK, function() return TravelCollectFrom("Die Verlassene Herberge in den Einsamen Lande", "Gefälschter Apfelwein \"Alter Stern\"", "Anlaf der Einsame"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_CONVOLUTED_WINE_DRINK, function() return TravelCollectFrom("Gasthaus \"Adler und Kind\" in Michelbinge", "Gefälschter Branntwein", "Karlo Schwarzhain"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_WHITE_DRINK, function() return TravelCollectFrom("Gasthaus \"Efeubusch\" in Hobbingen", "Gefälschtes Schwarzhain Dunkel", "Herward Lehmhügels"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.BOMBURS_BREATH_DRINK, function() return TravelCollectFrom("Gasthaus Zum Grünen Drachen in Wasserau", "Gefälschtes Bomburs Helles", "Berndt Wurzelknoten"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_DRINK, function() return CollectFromNpc("Gefälschtes Schnabelbrecher-Bier", "Berndt Wurzelknoten"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_PRANK_DRINK, function() return TravelCollectFrom("Gasthaus \"Zum Schwimmenden Balken\" in Froschmoorstetten", "Gefälschtes Moor-Keiler-Bier", "Ponto Hopfenblüte"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.BOMBURS_BREATH_END, function() return TravelTurnInTo("Othrikar in Die Nordhöhen", "Bomburs Odem", "Múli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_MEMBER_IN_NEED_PICKUP, function() return TakeFrom("Ein Mitglied braucht Hilfe", "Múli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_MEMBER_IN_NEED_DRINK, function() return CollectFromLocation("Bomburs Helles", "Gasthaus von Thorins Halle, Ered Luin"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_MEMBER_IN_NEED_END, function() return TurnInTo("Ein Mitglied braucht Hilfe", "Múli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_WHITE_END, function() return TravelTurnInTo("Hafergut in Evendim", "Ein wenig Weiß", "Harigar Schmutzpöter"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_BROWN_PICKUP, function() return TakeFrom("Etwas Dunkelbier", "Harigar Schmutzpöter"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_BROWN_DRINK, function() return CollectFromLocation("Schwarzhain Dunkel", "Gasthaus \"Adler und Kind\", Das Auenland"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_BIT_OF_BROWN_END, function() return TurnInTo("Etwas Dunkelbier", "Harigar Schmutzpöter"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_END, function() return TravelTurnInTo("Dachsbauten in Das Auenland", "Alles außer dem guten Apfelwein", "Fuchsia Gruber"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_CIDER_PICKUP, function() return TakeFrom("Alles außer dem Apfelwein", "Fuchsia Gruber"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_CIDER_DRINK, function() return CollectFromLocation("Apfelwein 'Alter Stern'", "Zum Tänzelnden Pony, Breeland"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ALL_BUT_THE_CIDER_END, function() return TurnInTo("Alles außer dem Apfelwein", "Fuchsia Gruber"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_DRINK, function() return string.format("Im %s, besorge %s von %s", HighlightLocation("Gasthaus Pflug und Sterne"), HighlightQuestItem("Gefälschtes Spülwasser"), HighlightNpc("Herwarth Kahnwurz")); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_END, function() return TravelTurnInTo("Hrimbarg im Nebelgebirge", "Nicht Atlis Lieblingsgetränk", "Óli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ATLIS_FAVOURITE_PICKUP, function() return TakeFrom("Atlis Lieblingsgetränk", "Óli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ATLIS_FAVOURITE_DRINK, function() return CollectFromLocation("Schnabelbrecher-Bier", "Gasthaus \"Schluchtenflechter\", Schlucht, Breeland"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.ATLIS_FAVOURITE_END, function() return TurnInTo("Atlis Lieblingsgetränk", "Óli"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_DRINK, function() return TravelCollectFrom("Das Letzte Heimelige Haus in Bruchtal-Klamm", "Gefälschter weißer Dorwinion", "Sogadan"); end);

SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_CONVOLUTED_WINE_END, function() return TravelTurnInTo("Echad Candelleth in den Trollhöhen", "Ein komplexer Wein", "Saerthuithel"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_SIMPLE_WINE_PICKUP, function() return TakeFrom("Ein einfacher Wein", "Saerthuithel"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_SIMPLE_WINE_DRINK, function() return CollectFromLocation("Branntwein", "Gasthaus Zum Goldenen Barsch, Das Auenland"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_SIMPLE_WINE_END, function() return TurnInTo("Ein einfacher Wein", "Saerthuithel"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_PRANK_END, function() return TravelTurnInTo("Zigilgund in Forochel", "Ein dunkler Streich", "Lófi"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_DAY_PICKUP, function() return TakeFrom("Ein dunkler Tag", "Lófi"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_DAY_DRINK, function() return CollectFromLocation("Moor-Keiler-Bier", "Zum Tänzelnden Pony, Breeland"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DARK_DAY_END, function() return TurnInTo("Ein dunkler Tag", "Lófi"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_END, function() return TravelTurnInTo("Aughaire in Angmar", "Das beste aller Getränke", "Nathalan"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_PICKUP, function() return TakeFrom("Das übelste aller Getränke", "Nathalan"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_DRINK, function() return CollectFromLocation("Spülwasser", "Die Verlassene Herberge, Die Einsamen Lande"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_END, function() return TurnInTo("Das übelste aller Getränke", "Nathalan"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_END, function() return TravelTurnInTo("Zuflucht Edhelion in Ered Luin", "Eine andere Erinnerung an Bruchtal", "Lendasil"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_PICKUP, function() return TakeFrom("Eine Erinnerung an Bruchtal", "Lendasil"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_DRINK, function() return CollectFromLocation("Weißer Dorwinion", "Das Letzte Heimelige Haus, Die Trollhöhen"); end);
SetQuickGuideDisplay(QG_ILAA, QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_END, function() return TurnInTo("Eine Erinnerung an Bruchtal", "Lendasil"); end);
