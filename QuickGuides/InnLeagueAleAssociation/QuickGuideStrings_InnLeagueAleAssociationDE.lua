
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[ILAA] = "\nDieser Leitfaden basiert auf dem hervorragenden Leitfaden von LilRedHead unter https://lifebeyondtheshire.com/inn-league-and-ale-association-hunter-assisted-speedy-delivery-run/. Vielen Dank, LRH!";

QG_ILAA = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[ILAA];
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_WHITE_PICKUP].DISPLAY = function() return string.format("In %s, nimm %s von %s an", HighlightLocation("Gasthaus von Thorins Halle"), HighlightQuest("Ein wenig Weiß"), HighlightNpc("Gastwirt der Bier-Genossenschaft")); end
QG_ILAA[QG_ILAA_INDEX.A_CONVOLUTED_WINE_PICKUP].DISPLAY = function() return string.format("Nimm %s an", HighlightQuest("Ein komplexer Wein")); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_PRANK_PICKUP].DISPLAY = function() return string.format("Nimm %s an", HighlightQuest("Ein dunkler Streich")); end
QG_ILAA[QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_PICKUP].DISPLAY = function() return string.format("Nimm %s an", HighlightQuest("Eine andere Erinnerung an Bruchtal")); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_PICKUP].DISPLAY = function() return string.format("Nimm %s an", HighlightQuest("Das beste aller Getränke")); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_PICKUP].DISPLAY = function() return string.format("Nimm %s an", HighlightQuest("Alles außer dem guten Apfelwein")); end
QG_ILAA[QG_ILAA_INDEX.BOMBURS_BREATH_PICKUP].DISPLAY = function() return string.format("Nimm %s an", HighlightQuest("Bomburs Odem")); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_PICKUP].DISPLAY = function() return string.format("Nimm %s an", HighlightQuest("Nie weiter weg von zu Hause")); end
QG_ILAA[QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_PICKUP].DISPLAY = function() return string.format("Nimm %s an", HighlightQuest("Nicht Atlis Lieblingsgetränk")); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_PICKUP].DISPLAY = function() return string.format("Nimm %s an", HighlightQuest("Ein Getränk zu wenig")); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_TICKLE_PICKUP].DISPLAY = function() return string.format("Nimm %s an", HighlightQuest("Was zum Kichern")); end

QG_ILAA[QG_ILAA_INDEX.QUITE_A_TICKLE_DRINK].DISPLAY = function() return CollectFromNpc("Gefälschtes Distelbauch-Bräu", "Rúnulf"); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_TICKLE_END].DISPLAY = function() return string.format("Reise nach %s, gib %s bei %s ab.", HighlightLocation("Feste Haer in Harlog"), HighlightQuest("Was zum Kichern"), HighlightNpc("Waldemar Labkraut")); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_PICKLE_PICKUP].DISPLAY = function() return TakeFrom("Das Dilemma", "Waldemar Labkraut"); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_PICKLE_DRINK].DISPLAY = function() return CollectFromLocation("Distelbauch-Bräu", "Gasthaus \"Efeubusch\", Hobbingen"); end
QG_ILAA[QG_ILAA_INDEX.QUITE_A_PICKLE_END].DISPLAY = function() return TurnInTo("Das Dilemma", "Waldemar Labkraut"); end

QG_ILAA[QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_DRINK].DISPLAY = function() return TravelCollectFrom("Zum Tänzelnden Pony in Bree", "Gefälschtes Limaels Tröpfchen", "Gerstenmann Butterblume"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_DRINK].DISPLAY = function() return CollectFromNpc("Gefälschtes Verlassensbacher", "Gerstenmann Butterblume"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_END].DISPLAY = function() return TravelTurnInTo("Thrasis Hütte", "Ein Getränk zu wenig", "Alrek"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_PICKUP].DISPLAY = function() return TakeFrom("Ein Getränk zu viel", "Alrek"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_DRINK].DISPLAY = function() return CollectFromLocation("Verlassensbacher", "Die Verlassene Herberge, Die Einsamen Lande"); end
QG_ILAA[QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_END].DISPLAY = function() return TurnInTo("Ein Getränk zu viel", "Alrek"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_END].DISPLAY = function() return TravelTurnInTo("Dornlags Baustelle in Breeland", "Nie weiter weg von zu Hause", "Widukind Hopfenholz"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_PICKUP].DISPLAY = function() return TakeFrom("Nie weit weg von zu Hause", "Widukind Hopfenholz"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_DRINK].DISPLAY = function() return CollectFromLocation("Limaels Tröpfchen", "Limaels Weinberg, Ered Luin"); end
QG_ILAA[QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_END].DISPLAY = function() return TurnInTo("Nie weit weg von zu Hause", "Widukind Hopfenholz"); end

QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_DRINK].DISPLAY = function() return TravelCollectFrom("Die Verlassene Herberge in Die Einsamen Lande", "Gefälschter Apfelwein \"Alter Stern\"", "Anlaf der Einsame"); end
QG_ILAA[QG_ILAA_INDEX.A_CONVOLUTED_WINE_DRINK].DISPLAY = function() return TravelCollectFrom("Gasthaus \"Adler und Kind\" in Michelbinge", "Gefälschter Branntwein", "Karlo Schwarzhain"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_WHITE_DRINK].DISPLAY = function() return TravelCollectFrom("Gasthaus \"Efeubusch\" in Hobbingen", "Gefälschtes Schwarzhain Dunkel", "Herward Lehmhügels"); end
QG_ILAA[QG_ILAA_INDEX.BOMBURS_BREATH_DRINK].DISPLAY = function() return TravelCollectFrom("Gasthaus Zum Grünen Drachen in Wasserau", "Gefälschtes Bomburs Helles", "Berndt Wurzelknoten"); end
QG_ILAA[QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_DRINK].DISPLAY = function() return CollectFromNpc("Gefälschtes Schnabelbrecher-Bier", "Berndt Wurzelknoten"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_PRANK_DRINK].DISPLAY = function() return TravelCollectFrom("Gasthaus \"Zum Schwimmenden Balken\" in Froschmoorstetten", "Gefälschtes Moor-Keiler-Bier", "Ponto Hopfenblüte"); end

QG_ILAA[QG_ILAA_INDEX.BOMBURS_BREATH_END].DISPLAY = function() return TravelTurnInTo("Othrikar in Die Nordhöhen", "Bomburs Odem", "Múli"); end
QG_ILAA[QG_ILAA_INDEX.A_MEMBER_IN_NEED_PICKUP].DISPLAY = function() return TakeFrom("Ein Mitglied braucht Hilfe", "Múli"); end
QG_ILAA[QG_ILAA_INDEX.A_MEMBER_IN_NEED_DRINK].DISPLAY = function() return CollectFromLocation("Bomburs Helles", "Gasthaus von Thorins Halle, Ered Luin"); end
QG_ILAA[QG_ILAA_INDEX.A_MEMBER_IN_NEED_END].DISPLAY = function() return TurnInTo("Ein Mitglied braucht Hilfe", "Múli"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_WHITE_END].DISPLAY = function() return TravelTurnInTo("Hafergut in Evendim", "Ein wenig Weiß", "Harigar Schmutzpöter"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_BROWN_PICKUP].DISPLAY = function() return TakeFrom("Etwas Dunkelbier", "Harigar Schmutzpöter"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_BROWN_DRINK].DISPLAY = function() return CollectFromLocation("Schwarzhain Dunkel", "Gasthaus \"Adler und Kind\", Das Auenland"); end
QG_ILAA[QG_ILAA_INDEX.A_BIT_OF_BROWN_END].DISPLAY = function() return TurnInTo("Etwas Dunkelbier", "Harigar Schmutzpöter"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_END].DISPLAY = function() return TravelTurnInTo("Dachsbauten in Das Auenland", "Alles außer dem guten Apfelwein", "Fuchsia Gruber"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_CIDER_PICKUP].DISPLAY = function() return TakeFrom("Alles außer dem Apfelwein", "Fuchsia Gruber"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_CIDER_DRINK].DISPLAY = function() return CollectFromLocation("Apfelwein 'Alter Stern'", "Zum Tänzelnden Pony, Breeland"); end
QG_ILAA[QG_ILAA_INDEX.ALL_BUT_THE_CIDER_END].DISPLAY = function() return TurnInTo("Alles außer dem Apfelwein", "Fuchsia Gruber"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_DRINK].DISPLAY = function() return string.format("In %s, besorge %s von %s", HighlightLocation("Gasthaus Pflug und Sterne"), HighlightQuestItem("Gefälschtes Spülwasser"), HighlightNpc("Herwarth Kahnwurz")); end
QG_ILAA[QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_END].DISPLAY = function() return TravelTurnInTo("Hrimbarg in Nebelgebirge", "Nicht Atlis Lieblingsgetränk", "Óli"); end
QG_ILAA[QG_ILAA_INDEX.ATLIS_FAVOURITE_PICKUP].DISPLAY = function() return TakeFrom("Atlis Lieblingsgetränk", "Óli"); end
QG_ILAA[QG_ILAA_INDEX.ATLIS_FAVOURITE_DRINK].DISPLAY = function() return CollectFromLocation("Schnabelbrecher-Bier", "Gasthaus \"Schluchtenflechter\", Breeland"); end
QG_ILAA[QG_ILAA_INDEX.ATLIS_FAVOURITE_END].DISPLAY = function() return TurnInTo("Atlis Lieblingsgetränk", "Óli"); end
QG_ILAA[QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_DRINK].DISPLAY = function() return TravelCollectFrom("Das Letzte Heimelige Haus in Bruchtal-Klamm", "Gefälschter weißer Dorwinion", "Sogadan"); end

QG_ILAA[QG_ILAA_INDEX.A_CONVOLUTED_WINE_END].DISPLAY = function() return TravelTurnInTo("Echad Candelleth in Die Trollhöhen", "Ein komplexer Wein", "Saerthuithel"); end
QG_ILAA[QG_ILAA_INDEX.A_SIMPLE_WINE_PICKUP].DISPLAY = function() return TakeFrom("Ein einfacher Wein", "Saerthuithel"); end
QG_ILAA[QG_ILAA_INDEX.A_SIMPLE_WINE_DRINK].DISPLAY = function() return CollectFromLocation("Branntwein", "Gasthaus Zum Goldenen Barsch, Das Auenland"); end
QG_ILAA[QG_ILAA_INDEX.A_SIMPLE_WINE_END].DISPLAY = function() return TurnInTo("Ein einfacher Wein", "Saerthuithel"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_PRANK_END].DISPLAY = function() return TravelTurnInTo("Zigilgund in Forochel", "Ein dunkler Streich", "Lófi"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_DAY_PICKUP].DISPLAY = function() return TakeFrom("Ein dunkler Tag", "Lófi"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_DAY_DRINK].DISPLAY = function() return CollectFromLocation("Moor-Keiler-Bier", "Zum Tänzelnden Pony, Breeland"); end
QG_ILAA[QG_ILAA_INDEX.A_DARK_DAY_END].DISPLAY = function() return TurnInTo("Ein dunkler Tag", "Lófi"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_END].DISPLAY = function() return TravelTurnInTo("Aughaire in Angmar", "Das beste aller Getränke", "Nathalan"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_PICKUP].DISPLAY = function() return TakeFrom("Das übelste aller Getränke", "Nathalan"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_DRINK].DISPLAY = function() return CollectFromLocation("Spülwasser", "Die Verlassene Herberge, Die Einsamen Lande"); end
QG_ILAA[QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_END].DISPLAY = function() return TurnInTo("Das übelste aller Getränke", "Nathalan"); end
QG_ILAA[QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_END].DISPLAY = function() return TravelTurnInTo("Zuflucht Edhelion in Ered Luin", "Eine andere Erinnerung an Bruchtal", "Lendasil"); end
QG_ILAA[QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_PICKUP].DISPLAY = function() return TakeFrom("Eine Erinnerung an Bruchtal", "Lendasil"); end
QG_ILAA[QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_DRINK].DISPLAY = function() return CollectFromLocation("Weißer Dorwinion", "Das Letzte Heimelige Haus, Die Trollhöhen"); end
QG_ILAA[QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_END].DISPLAY = function() return TurnInTo("Eine Erinnerung an Bruchtal", "Lendasil"); end

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[ILAA] = {
    ["Neue Aufgabe: Alles außer dem guten Apfelwein"] = QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_PICKUP;
    ["Neue Aufgabe: Alles außer dem Apfelwein"] = QG_ILAA_INDEX.ALL_BUT_THE_CIDER_PICKUP;

    ["Neue Aufgabe: Nie weiter weg von zu Hause"] = QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_PICKUP;
    ["Neue Aufgabe: Nie weit weg von zu Hause"] = QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_PICKUP;

    ["Neue Aufgabe: Ein Getränk zu wenig"] = QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_PICKUP;
    ["Neue Aufgabe: Ein Getränk zu viel"] = QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_PICKUP;

    ["Neue Aufgabe: Was zum Kichern"] = QG_ILAA_INDEX.QUITE_A_TICKLE_PICKUP;
    ["Neue Aufgabe: Das Dilemma"] = QG_ILAA_INDEX.QUITE_A_PICKLE_PICKUP;

    ["Neue Aufgabe: Ein wenig Weiß"] = QG_ILAA_INDEX.A_BIT_OF_WHITE_PICKUP;
    ["Neue Aufgabe: Etwas Dunkelbier"] = QG_ILAA_INDEX.A_BIT_OF_BROWN_PICKUP;

    ["Neue Aufgabe: Bomburs Odem"] = QG_ILAA_INDEX.BOMBURS_BREATH_PICKUP;
    ["Neue Aufgabe: Ein Mitglied braucht Hilfe"] = QG_ILAA_INDEX.A_MEMBER_IN_NEED_PICKUP;

    ["Neue Aufgabe: Eine andere Erinnerung an Bruchtal"] = QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_PICKUP;
    ["Neue Aufgabe: Eine Erinnerung an Bruchtal"] = QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_PICKUP;

    ["Neue Aufgabe: Das beste aller Getränke"] = QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_PICKUP;
    ["Neue Aufgabe: Das übelste aller Getränke"] = QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_PICKUP;

    ["Neue Aufgabe: Ein komplexer Wein"] = QG_ILAA_INDEX.A_CONVOLUTED_WINE_PICKUP;
    ["Neue Aufgabe: Ein einfacher Wein"] = QG_ILAA_INDEX.A_SIMPLE_WINE_PICKUP;

    ["Neue Aufgabe: Ein dunkler Streich"] = QG_ILAA_INDEX.A_DARK_PRANK_PICKUP;
    ["Neue Aufgabe: Ein dunkler Tag"] = QG_ILAA_INDEX.A_DARK_DAY_PICKUP;

    ["Neue Aufgabe: Nicht Atlis Lieblingsgetränk"] = QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_PICKUP;
    ["Neue Aufgabe: Atlis Lieblingsgetränk"] = QG_ILAA_INDEX.ATLIS_FAVOURITE_PICKUP;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[ILAA] = {
    ["Abgeschlossen:\nAlles außer dem guten Apfelwein\n"] = QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_END;
    ["Abgeschlossen:\nAlles außer dem Apfelwein\n"] = QG_ILAA_INDEX.ALL_BUT_THE_CIDER_END;

    ["Abgeschlossen:\nNie weiter weg von zu Hause\n"] = QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_END;
    ["Abgeschlossen:\nNie weit weg von zu Hause\n"] = QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_END;

    ["Abgeschlossen:\nEin Getränk zu wenig\n"] = QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_END;
    ["Abgeschlossen:\nEin Getränk zu viel\n"] = QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_END;

    ["Abgeschlossen:\nWas zum Kichern\n"] = QG_ILAA_INDEX.QUITE_A_TICKLE_END;
    ["Abgeschlossen:\nDas Dilemma\n"] = QG_ILAA_INDEX.QUITE_A_PICKLE_END;

    ["Abgeschlossen:\nEin wenig Weiß\n"] = QG_ILAA_INDEX.A_BIT_OF_WHITE_END;
    ["Abgeschlossen:\nEtwas Dunkelbier\n"] = QG_ILAA_INDEX.A_BIT_OF_BROWN_END;

    ["Abgeschlossen:\nBomburs Odem\n"] = QG_ILAA_INDEX.BOMBURS_BREATH_END;
    ["Abgeschlossen:\nEin Mitglied braucht Hilfe\n"] = QG_ILAA_INDEX.A_MEMBER_IN_NEED_END;

    ["Abgeschlossen:\nEine andere Erinnerung an Bruchtal\n"] = QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_END;
    ["Abgeschlossen:\nEine Erinnerung an Bruchtal\n"] = QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_END;

    ["Abgeschlossen:\nDas beste aller Getränke\n"] = QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_END;
    ["Abgeschlossen:\nDas übelste aller Getränke\n"] = QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_END;

    ["Abgeschlossen:\nEin komplexer Wein\n"] = QG_ILAA_INDEX.A_CONVOLUTED_WINE_END;
    ["Abgeschlossen:\nEin einfacher Wein\n"] = QG_ILAA_INDEX.A_SIMPLE_WINE_END;

    ["Abgeschlossen:\nEin dunkler Streich\n"] = QG_ILAA_INDEX.A_DARK_PRANK_END;
    ["Abgeschlossen:\nEin dunkler Tag\n"] = QG_ILAA_INDEX.A_DARK_DAY_END;

    ["Abgeschlossen:\nNicht Atlis Lieblingsgetränk\n"] = QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_END;
    ["Abgeschlossen:\nAtlis Lieblingsgetränk\n"] = QG_ILAA_INDEX.ATLIS_FAVOURITE_END;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[ILAA] = {
    ["Ihr habt gefälschten Apfelwein \"Alter Stern\" beschafft"] = QG_ILAA_INDEX.ALL_BUT_THE_GOOD_CIDER_DRINK;
    ["Ihr habt Apfelwein \"Alter Stern\" beschafft"] = QG_ILAA_INDEX.ALL_BUT_THE_CIDER_DRINK;

    ["Ihr habt gefälschtes Limaels Tröpfchen beschafft"] = QG_ILAA_INDEX.NEVER_FURTHER_FROM_HOME_DRINK;
    ["Ihr habt Limaels Tröpfchen beschafft"] = QG_ILAA_INDEX.NEVER_FAR_FROM_HOME_DRINK;

    ["Ihr habt das gefälschte Verlassensbacher beschafft"] = QG_ILAA_INDEX.ONE_DRINK_TOO_FEW_DRINK;
    ["Ihr habt das Verlassensbacher beschafft"] = QG_ILAA_INDEX.ONE_DRINK_TOO_MANY_DRINK;

    ["Ihr habt das gefälschte Distelbauch-Bräu beschafft"] = QG_ILAA_INDEX.QUITE_A_TICKLE_DRINK;
    ["Ihr habt Distelbauch-Bräu beschafft"] = QG_ILAA_INDEX.QUITE_A_PICKLE_DRINK;

    ["Ihr habt das gefälschte Schwarzhain Dunkel beschafft"] = QG_ILAA_INDEX.A_BIT_OF_WHITE_DRINK;
    ["Ihr habt das Schwarzhain Dunkel beschafft"] = QG_ILAA_INDEX.A_BIT_OF_BROWN_DRINK;

    ["Ihr habt gefälschtes Bomburs Helles beschafft"] = QG_ILAA_INDEX.BOMBURS_BREATH_DRINK;
    ["Ihr habt Bomburs Helles beschafft"] = QG_ILAA_INDEX.A_MEMBER_IN_NEED_DRINK;

    ["Ihr habt den gefälschten Weißen Dorwinion beschafft"] = QG_ILAA_INDEX.A_DIFFERENT_REMINDER_OF_RIVENDELL_DRINK;
    ["Ihr habt den Weißen Dorwinion beschafft"] = QG_ILAA_INDEX.A_REMINDER_OF_RIVENDELL_DRINK;

    ["Ihr habt Met besorgt! Es wird für Euch als Spülwasser getarnt"] = QG_ILAA_INDEX.A_DRINK_OF_THE_BEST_CHARACTER_DRINK;
    ["Ihr habt Spülwasser beschafft ... (igitt)"] = QG_ILAA_INDEX.A_DRINK_OF_THE_WORST_CHARACTER_DRINK;

    ["Ihr habt gefälschten Branntwein beschafft"] = QG_ILAA_INDEX.A_CONVOLUTED_WINE_DRINK;
    ["Ihr habt Branntwein beschafft"] = QG_ILAA_INDEX.A_SIMPLE_WINE_DRINK;

    ["Ihr habt das gefälschte Moor-Keiler-Bier beschafft"] = QG_ILAA_INDEX.A_DARK_PRANK_DRINK;
    ["Ihr habt das Moor-Keiler-Bier beschafft"] = QG_ILAA_INDEX.A_DARK_DAY_DRINK;

    ["Ihr habt das gefälschte Schnabelbrecher-Bier beschafft"] = QG_ILAA_INDEX.NOT_ATLIS_FAVOURITE_DRINK;
    ["Ihr habt Schnabelbrecher-Bier beschafft"] = QG_ILAA_INDEX.ATLIS_FAVOURITE_DRINK;
};
