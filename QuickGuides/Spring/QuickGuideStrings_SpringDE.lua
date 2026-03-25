
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[SPRING] = "\nDieser Leitfaden wurde von Cube während des Frühlingsfestes 2026 erstellt.\n\nHinweis: Einige Ziele, insbesondere bei „Blumenneid“, führen nicht zu sichtbaren Ergebnissen. Festival Buddy nutzt die anvisierte Person als Stellvertreter für ein tatsächliches Gespräch. Wenn Sie zufällig verschiedene NPCs auswählen, können Ziele vorzeitig abgeschlossen werden.";
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDIT_HEIGHTS[SPRING] = 140;

QG_SPRING = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[SPRING];
QG_SPRING[QG_SPRING_INDEX.A_TASTE_OF_SPRING_PICKUP].DISPLAY = function() return TakeFrom("Ein Hauch von Frühling", "Rhudamer Hirtul"); end;
QG_SPRING[QG_SPRING_INDEX.A_TASTE_OF_SPRING_END].DISPLAY = function() return TurnInTo("Ein Hauch von Frühling", "Rhudamer Hirtul"); end;
QG_SPRING[QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_PICKUP].DISPLAY = function() return TakeFromIn("Narzissentage (Täglich)", "Athra Devister", "Clegur"); end
QG_SPRING[QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_END].DISPLAY = function() return TurnInTo("Narzissentage (Täglich)", "Athra Devister"); end
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_PICKUP].DISPLAY = function() return TakeFrom("Das Geschenk des Frühlings", "Athra Devister"); end;
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PICKED].DISPLAY = function() return "Pflückt Narzissen in Clegur"; end
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PLANTED].DISPLAY = function() return "Pflanzt Narzissen in Behältern ein"; end
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_END].DISPLAY = function() return TurnInTo("Das Geschenk des Frühlings", "Athra Devister"); end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_PICKUP].DISPLAY = function() return TakeFrom("Kuchenwerbung", "Maramam Bobbid"); end;
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_1].DISPLAY = function() return "Verteilt Flugblatt an Hobbit-Gast in der Nähe von Musikern"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_2].DISPLAY = function() return "Verteilt Flugblatt an Hobbit-Gast in der Nähe von Malmadog Torlan"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_3].DISPLAY = function() return "Verteilt Flugblatt an Hobbit-Gast in der Nähe von des Metzgers"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_4].DISPLAY = function() return "Verteilt Flugblatt an Hobbit-Gast in der Nähe von Leri Grudd"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_5].DISPLAY = function() return "Verteilt Flugblatt an Hobbit-Gast in der Nähe von Delyth Saethur"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_END].DISPLAY = function() return TurnInTo("Kuchenwerbung", "Maramam Bobbid"); end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_PICKUP].DISPLAY = function() return TakeFrom("Blumenneid", "Naffa Blodven"); end;
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_1].DISPLAY = function() return "Sprich mit Welduth Lhush für Aufgabe Blumenneid"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_2].DISPLAY = function() return "Sprich mit Gloron Magimrud für Aufgabe Blumenneid."; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_3].DISPLAY = function() return "Platziert das Banner vor der Scheune, dann sprich mit Gloron Magimrud für Aufgabe Blumenneid."; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_4].DISPLAY = function() return "Sprich mit Welduth Lhush für Aufgabe Blumenneid"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_BULB_COLLECTED].DISPLAY = function() return "Sammelt die begehrten Narzissenzwiebeln ein"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_END].DISPLAY = function() return TurnInTo("Blumenneid", "Naffa Blodven"); end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_PICKUP].DISPLAY = function() return TakeFrom("Das Pech der Musiker", "Lautenspieler"); end;
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FIDDLE].DISPLAY = function() return "Findet die Fiedel"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BAGPIPES].DISPLAY = function() return "Findet den Dudelsack"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FLUTE].DISPLAY = function() return "Findet die Flöte"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_LUTE].DISPLAY = function() return "Findet die Laute"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BODHRAN].DISPLAY = function() return "Findet die Bodhran"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_END].DISPLAY = function() return TurnInTo("Das Pech der Musiker", "Lautenspieler"); end
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_PICKUP].DISPLAY = function() return TakeFrom("Frühlingsfest-Farben", "Malmadog Torlan"); end;
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PICKED_UP].DISPLAY = function() return "Nehmt Narzissentage-Banner auf" end;
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PLACED].DISPLAY = function() return "Platziert Narzissentage-Banner"; end
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_END].DISPLAY = function() return TurnInTo("Frühlingsfest-Farben", "Malmadog Torlan"); end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PICKUP].DISPLAY = function() return TakeFrom("Zu wenig", "Cunedda Moltgig"); end;
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_LAMB].DISPLAY = function() return "Nehmt das eingepackte Lammfleisch"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_1].DISPLAY = function() return "Bringt Leri Grudd Lammfleisch"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_2].DISPLAY = function() return "Bringt Delyth Saethur Lammfleisch"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_3].DISPLAY = function() return "Bringt Drudwen Lammfleisch"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_4].DISPLAY = function() return "Bringt Gloron Magimrud Lammfleisch"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_5].DISPLAY = function() return "Bringt Bürgermeister Malmadog Lammfleisch"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_6].DISPLAY = function() return "Bringt Welduth Lhush Lammfleisch"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_END].DISPLAY = function() return TurnInTo("Zu wenig", "Cunedda Moltgig"); end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_PICKUP].DISPLAY = function() return TakeFrom("Ordentlich gegossene Blumen", "Leri Grudd"); end;
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_FOUND].DISPLAY = function() return "Findet die Wassereimer in der Nähe des Teichs"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_1].DISPLAY = function() return "Gießt die Narzissen in Leris Garten"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_2].DISPLAY = function() return "Gießt die Narzissen neben den Bienenstöcken, in der Nähe des Fleischerladens"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_3].DISPLAY = function() return "Gießt die Narzissen beim Stallmeister"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_4].DISPLAY = function() return "Gießt die Narzissen vor Delyth Saethurs Smial"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_5].DISPLAY = function() return "Gießt die Narzissen hinter dem Ofen"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_END].DISPLAY = function() return TurnInTo("Ordentlich gegossene Blumen", "Leri Grudd"); end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_PICKUP].DISPLAY = function() return TakeFrom("Familienfestmahl", "Rosentyl Flutch"); end;
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_LAMB].DISPLAY = function() return "Sammelt ein Paket Lammfleisch"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_CARROTS].DISPLAY = function() return "Sammelt Karotten"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_POTATOES].DISPLAY = function() return "Sammelt Kartoffeln"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_LEEKS_TALK].DISPLAY = function() return "Sprecht mit Bortho Bishel, dem Gehilfen der Vorratshändlerin"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_LEEKS].DISPLAY = function() return "Sammelt Lauch"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_END].DISPLAY = function() return TurnInTo("Familienfestmahl", "Rosentyl Flutch"); end

-- What is the difference between _QUICK_GUIDE_PROGRESS and _QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS?

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[SPRING] = {
    ["Anzahl gepflückter Narzissen %((%d+)/(%d+)%)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PICKED;
    ["Anzahl eingepflanzter Narzissen %((%d+)/(%d+)%)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PLANTED;
    ["Anzahl platzierter Banner %((%d+)/(%d+)%)"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PLACED;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[SPRING] = {
    ["Neue Aufgabe: Ein Hauch von Frühling"] = QG_SPRING_INDEX.A_TASTE_OF_SPRING_PICKUP;
    ["Neue Aufgabe: Narzissentage (Täglich)"] = QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_PICKUP;
    ["Neue Aufgabe: Das Geschenk des Frühlings"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_PICKUP;
    ["Neue Aufgabe: Kuchenwerbung"] = QG_SPRING_INDEX.PROMOTING_PIE_PICKUP;
    ["Neue Aufgabe: Blumenneid"] = QG_SPRING_INDEX.FLOWER_ENVY_PICKUP;
    ["Neue Aufgabe: Frühlingsfest-Farben"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_PICKUP;
    ["Neue Aufgabe: Das Pech der Musiker"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_PICKUP;
    ["Neue Aufgabe: Zu wenig"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PICKUP;
    ["Neue Aufgabe: Familienfestmahl"] = QG_SPRING_INDEX.FAMILY_FEAST_PICKUP;
    ["Neue Aufgabe: Ordentlich gegossene Blumen"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_PICKUP;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[SPRING] = {
    ["Abgeschlossen:\nEin Hauch von Frühling\n"] = QG_SPRING_INDEX.A_TASTE_OF_SPRING_END;
    ["Abgeschlossen:\nNarzissentage (Täglich)\n"] = QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_END;
    ["Abgeschlossen:\nDas Geschenk des Frühlings\n"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_END;
    ["Abgeschlossen:\nKuchenwerbung\n"] = QG_SPRING_INDEX.PROMOTING_PIE_END;
    ["Abgeschlossen:\nBlumenneid\n"] = QG_SPRING_INDEX.FLOWER_ENVY_END;
    ["Abgeschlossen:\nFrühlingsfest-Farben\n"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_END;
    ["Abgeschlossen:\nDas Pech der Musiker\n"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_END;
    ["Abgeschlossen:\nZu wenig\n"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_END;
    ["Abgeschlossen:\nFamilienfestmahl\n"] = QG_SPRING_INDEX.FAMILY_FEAST_END;
    ["Abgeschlossen:\nOrdentlich gegossene Blumen\n"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_END;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[SPRING] = {
    ["Anzahl gepflückter Narzissen (8/8)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PICKED;
    ["Anzahl eingepflanzter Narzissen (8/8)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PLANTED;
    ["Anzahl verteilter Flugblätter (1/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_1;
    ["Anzahl verteilter Flugblätter (2/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_2;
    ["Anzahl verteilter Flugblätter (3/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_3;
    ["Anzahl verteilter Flugblätter (4/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_4;
    ["Anzahl verteilter Flugblätter (5/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_5;
    ["Begehrte Narzissenzwiebeln gesammelt!"] = QG_SPRING_INDEX.FLOWER_ENVY_BULB_COLLECTED;
    ["Anzahl platzierter Banner (6/6)"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PLACED;
    ["Die Fiedel wurde gefunden."] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FIDDLE;
    ["Der Dudelsack wurde gefunden."] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BAGPIPES;
    ["Die Flöte wurde gefunden."] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FLUTE;
    ["Die Laute wurde gefunden."] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_LUTE;
    ["Die Bodhran wurde gefunden."] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BODHRAN;
    ["Anzahl ausgelieferter Pakete (1/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_1;
    ["Anzahl ausgelieferter Pakete (2/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_2;
    ["Anzahl ausgelieferter Pakete (3/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_3;
    ["Anzahl ausgelieferter Pakete (4/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_4;
    ["Anzahl ausgelieferter Pakete (5/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_5;
    ["Anzahl ausgelieferter Pakete (6/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_6;
    ["Lammfleisch gesammelt"] = QG_SPRING_INDEX.FAMILY_FEAST_LAMB;
    ["Karotten gesammelt"] = QG_SPRING_INDEX.FAMILY_FEAST_CARROTS;
    ["Kartoffeln gesammelt"] = QG_SPRING_INDEX.FAMILY_FEAST_POTATOES;
    ["Lauch gesammelt"] = QG_SPRING_INDEX.FAMILY_FEAST_LEEKS;
    ["Wassereimer gefunden!"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_FOUND;
    ["Gegossen!"] = {
        [1] = { ["NAME"] = "Watered! 1"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_1; };
        [2] = { ["NAME"] = "Watered! 2"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_2; };
        [3] = { ["NAME"] = "Watered! 3"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_3; };
        [4] = { ["NAME"] = "Watered! 4"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_4; };
        [5] = { ["NAME"] = "Watered! 5"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_5; };
    };
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[SPRING] = {
    [1] = { ["NAME"] = "Welduth Lhush"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_1; };
    [2] = { ["NAME"] = "Eingepacktes Lamm"; ["INDEX"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_LAMB; };
    [3] = { ["NAME"] = "Gloron Magimrud"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_2; };
    [4] = { ["NAME"] = "Bortho Bishel"; ["INDEX"] = QG_SPRING_INDEX.FAMILY_FEAST_LEEKS_TALK; };
    [5] = { ["NAME"] = "Narzissentage-Banner"; ["INDEX"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PICKED_UP; };
    [6] = { ["NAME"] = "Gloron Magimrud"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_3; };
    [7] = { ["NAME"] = "Welduth Lhush"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_4; };
};
