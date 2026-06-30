_G.CubePlugins.FestivalBuddyII._QUICK_GUIDES[MIDSUMMER] = {
    [MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = "Minas Tirith";
    [MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = "Furtherholm";
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = "\nDiese Anleitung basiert auf LilRedHeads herausragendem 'LOTRO Midsummer Festival - Quick Guide', nachzulesen bei https://lifebeyondtheshire.com/lotro-midsummer-festival-quick-guide/. Vielen Dank LRH!";
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = "\nDiese Anleitung wurde von b414213562 während des Mittsommerfestes 2026 erstellt.";

QG_MIDSUMMER_MT = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE];
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP].DISPLAY = function() return TakeFromAt("Zur Feier von Mittsommer", "Faeleth", "Städtischen Ställen"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_PICKUP].DISPLAY = function() return TakeFromAt("Etwas blumig", "Merilien", "der Zitadelle"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_PICKUP].DISPLAY = function() return TakeFromAt("Bis zum letzten Tropfen", "Merilien", "der Zitadelle"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_PICKUP].DISPLAY = function() return TakeFromAt("Hochzeitsmaterialien", "Merilien", "der Zitadelle"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_PICKUP].DISPLAY = function() return TakeFromAt("Die Bier-Jahreszeiten", "Merilien", "der Zitadelle"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PICKUP].DISPLAY = function() return TakeFromAt("Köstliche Häppchen", "Othnoron", "der Zitadelle"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_PICKUP].DISPLAY = function() return TakeFromAt("Schmuck für die Stadt", "Blumenhändler", "der Zitadelle"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_PICKUP].DISPLAY = function() return TakeFromAt("Blumenkronen", "Blumenhändler", "der Zitadelle"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_PICKUP].DISPLAY = function() return TakeFromIn("Hilfe für die Stallhelfer", "Loborís", "den Städtischen Ställen"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_BRUSH].DISPLAY = function() return Continue("Hilfe für die Stallhelfer", "Nimm den Striegel aus der Ausrüstungskiste"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_APPLES].DISPLAY = function() return Continue("Hilfe für die Stallhelfer", "Nimm die Äpfel aus der Apfelkiste"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_GROOM].DISPLAY = function() return Continue("Hilfe für die Stallhelfer", "Striegle 3 Pferde"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_FEED].DISPLAY = function() return Continue("Hilfe für die Stallhelfer", "Füttere 3 Pferde"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_END].DISPLAY = function() return TurnInTo("Hilfe für die Stallhelfer", "Loborís"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_COLLECT].DISPLAY = function() return Continue("Blumenkronen", "Setze die Aufgabe mit der Tochter der Blumenhändlerin fort, sammle 10 Sommerblumen"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_CRAFT].DISPLAY = function() return Continue("Blumenkronen", "Setze die Aufgabe mit der Tochter der Blumenhändlerin fort, stelle Blumenkronen her. [Händisch abhaken]"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_PICKUP].DISPLAY = function() return TravelToTakeQuestFrom("Nimm den Stallmeister", "Soldatenring", "Richtungsweisende Kunst", "Borlach"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_PICKUP].DISPLAY = function() return TravelToTakeQuestFrom("Nach Süden (links)", "Der Gespaltenen Schild", "Münzwurf", "Ulthir (obere Etage)"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_COMPLETE].DISPLAY = function() return Continue("Münzwurf", "Wirf den lärmenden Barden 6 Münzen zu."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_1].DISPLAY = function() return Continue("Die Bier-Jahreszeiten", "Nimm das Bierfaß im Gespaltenen Schild."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_COMPLETE].DISPLAY = function() return Continue("Bis zum letzten Tropfen", "Nimm das richtige Weinfaß im Gespaltenen Schild."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_END].DISPLAY = function() return TurnInTo("Münzwurf", "Ulthir (obere Etage)"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_2].DISPLAY = function() return "Nach Süden zum " .. HighlightLocation("Mûmak und Feste") .. " für " .. HighlightQuestItem("das zweite Faß") .. " für " .. HighlightQuest("Die Bier-Jahreszeiten") .. ", Neben dem Mûmak"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_LEBADAR].DISPLAY = function() return "[Markstein] Nimm den Stallmeister zum " .. HighlightLocation("Handwerkerring") .. ". Am Fuß der Rampe, führe " .. HighlightQuest("Richtungsweisende Kunst") .. " mit " .. HighlightNpc("Lebadar") .. " fort"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_PICKUP].DISPLAY = function() return TakeFrom("Wachstumsschmerzen", "Lebadar"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_PICKUP].DISPLAY = function() return TakeFromIn("Unnütze Hunde", "der Besorgten Frau", "am Platz"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_CONTINUE].DISPLAY = function() return Continue("Unnütze Hunde", "Finde den vermißten Ring"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_END].DISPLAY = function() return TurnInTo("Unnütze Hunde", "der Besorgten Frau"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_1].DISPLAY = function() return "Reite die Rampe hinauf, wende Dich rechts, nimm " .. HighlightQuestItem("Hochzeitsmaterialien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_POTTER].DISPLAY = function() return ContinueWith("Richtungsweisende Kunst", "Töpfer"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_3].DISPLAY = function() return "Gehe in die " .. HighlightLocation("Häuser der Handwerkskunst") .. ", nimm zwei weitere " .. HighlightQuestItem("Hochzeitsmaterialien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_PICKUP].DISPLAY = function() return TakeFrom("Ein Dank an die Heiler", "Postmeister"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WATER].DISPLAY = function() return Continue("Wachstumsschmerzen", "Wässere 4 Büsche im Garten am Nordende"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WEEDS].DISPLAY = function() return Continue("Wachstumsschmerzen", "Rupfe 5 mal Unkraut"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_END].DISPLAY = function() return "[Markstein] Nimm den Stallmeister zum " .. HighlightLocation("Handwerkerring") .. ". Am Fuß der Rampe, gib " .. HighlightQuest("Wachstumsschmerzen") .. "."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_CIRIEL].DISPLAY = function() return "Reite die Rampe hinauf, nimm den Stallmeister zum " .. HighlightLocation("Spielerring") .. ". Am Fuß der Rampe, führe " .. HighlightQuest("Richtungsweisende Kunst") .. " bei " .. HighlightNpc("Ciriel") .. " fort."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_PICKUP].DISPLAY = function() return TakeFrom("Süße Grüße", "Ciriel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_2].DISPLAY = function() return "Finde die beiden Wachen nördlich von " .. HighlightNpc("Ciriel") .. ", führe " .. HighlightQuest("Süße Grüße") .. " mit jeder fort."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_4].DISPLAY = function() return "Nimm " .. HighlightQuestItem("Hochzeitsmaterialien") .. " um die Ecke bei " .. HighlightNpc("Ciriel") .. "."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_4].DISPLAY = function() return "Finde die beiden Wachen südlich von " .. HighlightNpc("Ciriel") .. ", führe " .. HighlightQuest("Süße Grüße") .. " mit jeder fort."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_5].DISPLAY = function() return "Nimm die letzten " .. HighlightQuestItem("Hochzeitsmaterialien") .. " zwischen beiden südlichen Wachen."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_2].DISPLAY = function() return "Geh zum " .. HighlightQuest("Fröhlichen Schwan") .. ", platziere zwei " .. HighlightQuestItem("Blumenarrangements") .. " auf der Bühne für " .. HighlightQuest("Schmuck für die Stadt") .. "."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_3].DISPLAY = function() return Continue("Die Bier-Jahreszeiten", "Nimm das Bierfaß im Fröhlichen Schwan."); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_END].DISPLAY = function() return TurnInTo("Süße Grüße", "Ciriel"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_END].DISPLAY = function() return "Die Rampe rauf, nimm den Stallmeister zum " .. HighlightLocation("Soldatenring") .. ". " .. TurnInTo("Richtungsweisende Kunst", "Borlach aus Rimmon"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_DAGHIR].DISPLAY = function() return "Nimm den Stallmeister zum " .. HighlightLocation("Spielerring") .. ". Führe " .. HighlightQuest("Köstliche Häppchen") .. " bei fünf loftier " .. HighlightNpc("Bürgern") .. "fort."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PELNEN].DISPLAY = function() return Continue("Köstliche Häppchen", "Bringt einen Probierhappen zu " .. HighlightNpc("Pelnen")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_GWARBEN].DISPLAY = function() return Continue("Köstliche Häppchen", "Bringt einen Probierhappen zu " .. HighlightNpc("Gwárben")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_ARASTIL].DISPLAY = function() return Continue("Köstliche Häppchen", "Bringt einen Probierhappen zu " .. HighlightNpc("Arastil")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_BRANDION].DISPLAY = function() return Continue("Köstliche Häppchen", "Bringt einen Probierhappen zu " .. HighlightNpc("Brandion")); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_PICKUP].DISPLAY = function() return TravelToTakeQuestFrom("Gehe zum", "Blauen Theater", "Etwas Verlegtes, etwas Blaues", "Duillam"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_HOLLUR].DISPLAY = function() return "Finde Hollur [Händisch abhaken]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_POLLA].DISPLAY = function() return "Finde Polla [Händisch abhaken]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_FROKI].DISPLAY = function() return "Finde Fróki [Händisch abhaken]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_DAENAR].DISPLAY = function() return "Finde Daenar [Händisch abhaken]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_ROBBO].DISPLAY = function() return "Finde Robbo [Händisch abhaken]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_GORD].DISPLAY = function() return "Finde Gord [Händisch abhaken]"; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_COMPLETE].DISPLAY = function() return "Führe 'Etwas Verlegtes, etwas Blaues' mit Hollur, Polla, Fróki, Gord, Robbo, und Daenar fort."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_END].DISPLAY = function() return "Im " .. HighlightLocation("Blauen Theater") .. ", platziere drei " .. HighlightQuestItem("Blumenarrangements") .. " an der Bühne für " .. HighlightQuest("Schmuck für die Stadt"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_END].DISPLAY = function() return TurnInTo("Etwas Verlegtes, etwas Blaues", "Duillam"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_PICKUP].DISPLAY = function() return "[Markstein] Nimm den Stallmeister zu den " .. HighlightLocation("Obere Ställen") .. ", gehe zu den " .. HighlightLocation("Häusern der Heilung, Hohen Halle") .. ", und nimm " .. HighlightQuest("Ein Mittel gegen jedes Leid") .. " bei " .. HighlightNpc("Ioreth") .. " an."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_PICKUP].HEIGHT = 50;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_BOTTLES].DISPLAY = function() return Continue("Ein Mittel gegen jedes Leid", "Entsorge 10 halb-volle Flaschen"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_REVELLERS].DISPLAY = function() return Continue("Ein Mittel gegen jedes Leid", "Schicke 6 störende Besucher [Händisch abhaken]]"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_END].DISPLAY = function() return TurnInTo("Ein Mittel gegen jedes Leid", "Ioreth"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_COMPLETE].DISPLAY = function() return "Gehe zu den " .. HighlightLocation("Häusern der Heilung") .. " und führe " .. HighlightQuest("Ein Dank an die Heiler") .. " bei 6 Heilern fort."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_COMPLETE].DISPLAY = function() return "Nimm die Rampe hinunter zum " .. HighlightLocation("Gelehrtenring") .. ", gehe zu den " .. HighlightLocation("Häusern des Wissens") .. " zur Rechten, und platziere 6 " .. HighlightQuestItem("Blumenarrangements") .. " für " .. HighlightQuest("Etwas blumig") .. "."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_COMPLETE].HEIGHT = 50;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_PICKUP].DISPLAY = function() return TakeFrom("Liebe liegt in der Luft", "Colladan"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_COMPLETE].DISPLAY = function() return Continue("Liebe liegt in der Luft", "Fange 6 verwehte Seite"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_END].DISPLAY = function() return TurnInTo("Liebe liegt in der Luft", "Colladan"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_4].DISPLAY = function() return "Verlasse die Häuser des Wissens, rechts wenden und gehe zum " .. HighlightQuest("Durstigen Seher") .. ". Vorwärts, dann rechts. Nimm das " .. HighlightQuestItem("Bierfaß") .. " für " .. HighlightQuest("Die Bier-Jahreszeiten") .. "."; end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_4].HEIGHT = 50;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END].DISPLAY = function() return "[Markstein] " .. TurnInTo("Zur Feier von Mittsommer", "Faeleth"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_END].DISPLAY = function() return "Nimm den Stallmeister zum " .. HighlightLocation("Handwerkerring") .. ". Betrete die " .. HighlightLocation("Häuser des Handwerks") .. ". " .. TurnInTo("Ein Dank an die Heiler", "Postmeister"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_END].DISPLAY = function() return "Nimm den Stallmeister zu den " .. HighlightLocation("Obere Ställe") .. ". Laufe Platz in der Zitadelle. " .. TurnInTo("Etwas blumig", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_END].DISPLAY = function() return TurnInTo("Bis zum letzten Tropfen", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_END].DISPLAY = function() return TurnInTo("Hochzeitsmaterialien", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_END].DISPLAY = function() return TurnInTo("Die Bier-Jahreszeiten", "Merilien"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_END].DISPLAY = function() return TurnInTo("Köstliche Häppchen", "Othnoron"); end;
QG_MIDSUMMER_MT[QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_END].DISPLAY = function() return TurnInTo("Blumenkronen", "der Blumenhändlerin"); end;

QG_MIDSUMMER_FH = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE];
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP].DISPLAY = function() return TakeFromIn("Zur Feier von Mittsommer", "Hauptmann Khâtaphos", "der gesprungene Krug"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_PICKUP].DISPLAY = function() return TakeFrom("Reinigungsdienst", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_BEDS].DISPLAY = function() return "Macht die Betten"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_FLOORS].DISPLAY = function() return "Schrubbt die Böden"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_END].DISPLAY = function() return TurnInTo("Reinigungsdienst", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_PICKUP].DISPLAY = function() return TakeFrom("Schätze der Gezeiten", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_SEASHELLS].DISPLAY = function() return "Sammelt Muscheln"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_END].DISPLAY = function() return TurnInTo("Schätze der Gezeiten", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_PICKUP].DISPLAY = function() return TakeFrom("Hilfe für den Koch", "Sâghlem"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_1].DISPLAY = function() return "Collect fresh herb on slope up"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_2].DISPLAY = function() return "Collect fresh herb on right"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_3].DISPLAY = function() return "Collect fresh herb on left, going up"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_4].DISPLAY = function() return "Collect fresh herb behind olive tree"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_1].DISPLAY = function() return "Sammelt saftige Zitronen"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_2].DISPLAY = function() return "Sammle saftige Zitronen auf der anderen Straßenseite"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_3].DISPLAY = function() return "Saftige Zitronen jenseits des Olivenbaums sammeln"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_4].DISPLAY = function() return "Folge dem Pfad nach oben und pflücke die saftige Zitrone vom Baum links"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_1].DISPLAY = function() return "Oliven vom Baum rechts pflücken"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_2].DISPLAY = function() return "Sammeln Sie Oliven von der linken Seite des Weges"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_3].DISPLAY = function() return "Oliven in der Nähe des Angelplatzes sammeln"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_4].DISPLAY = function() return "Fahren Sie weiter in nordöstlicher Richtung und sammeln Sie Oliven am Fuße der Klippen"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_END].DISPLAY = function() return TurnInTo("Hilfe für den Koch", "Sâghlem"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_PICKUP].DISPLAY = function() return TakeFrom("Burgenbau", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_1].DISPLAY = function() return "Baue eine Sandburg neben dem Durstige Strandgängerin"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_2].DISPLAY = function() return "Baue eine Sandburg neben dem Entspannte Urlauberin"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_3].DISPLAY = function() return "Baue eine Sandburg westlich des Ausgelassener Gast"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_4].DISPLAY = function() return "Baue eine Sandburg an der Bucht"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_END].DISPLAY = function() return TurnInTo("Burgenbau", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_PICKUP].DISPLAY = function() return TakeFrom("Auf der Suche nach Angelplätzen", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_FOUND].DISPLAY = function() return "Findet im Hafen eine Stelle zum Angeln"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_CAUGHT].DISPLAY = function() return "Angelt am Anleger des Hafens"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_FOUND].DISPLAY = function() return "Findet westlich des Hafens eine Stelle zum Angeln"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_CAUGHT].DISPLAY = function() return "Angelt am Anleger auf der Westseite des Hafens"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_FOUND].DISPLAY = function() return "Findet beim Wasserfall über dem Hafen eine Stelle zum Angeln"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_CAUGHT].DISPLAY = function() return "Fangt bei dem Wasserfall über dem Hafen einen Fisch"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_FOUND].DISPLAY = function() return "Findet bei der Sandbank im Norden eine Stelle zum Angeln"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_CAUGHT].DISPLAY = function() return "Fangt bei der Sandbank im Norden einen Fisch"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_END].DISPLAY = function() return TurnInTo("Auf der Suche nach Angelplätzen", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_PICKUP].DISPLAY = function() return TakeFrom("Hilfsangebot", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_1].DISPLAY = function() return "Redet mit der durstigen Strandspaziergängerin."; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_2].DISPLAY = function() return "Findet ein erfrischendes Getränk im Gesprungenen Krug."; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_3].DISPLAY = function() return "Bringt das erfrischende Getränk zur durstigen Strandspaziergängerin"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_1].DISPLAY = function() return "Sprecht mit der entspannten Urlauberin"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_2].DISPLAY = function() return "Findet das Buch der entspannten Urlauberin"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_3].DISPLAY = function() return "Bringt der entspannten Urlauberin ihr Buch"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_1].DISPLAY = function() return "Sprecht mit dem unruhigen Ausflügler"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_2].DISPLAY = function() return "Findet ein Kissen für den unruhigen Ausflügler"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_3].DISPLAY = function() return "Bringt dem unruhigen Ausflügler das Kissen"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_1].DISPLAY = function() return "Sprecht mit dem hoffnungsvollen Freier"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_2].DISPLAY = function() return "Findet einen Picknickkorb, Bringt ihn Sâghlem, Füllt den Picknickkorb"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_3].DISPLAY = function() return "Bringt den gefüllten Picknickkorb zum hoffnungsvollen Freier"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_1].DISPLAY = function() return "Sprecht mit dem ausgelassenen Gast"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_2].DISPLAY = function() return "Grabt den wunderlichen ausgelassenen Gast im Sand ein"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_3].DISPLAY = function() return "Grabt den wunderlichen ausgelassenen Gast tiefer im Sand ein"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_END].DISPLAY = function() return TurnInTo("Hilfsangebot", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_PICKUP].DISPLAY = function() return TakeFrom("Suche nach Badestellen", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WEST_HARBOR].DISPLAY = function() return "Schwimmt auf der Westseite des Hafens"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTHERN_COVE].DISPLAY = function() return "Schwimmt in der südlichen Bucht"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_NORTHERN_CHANNEL].DISPLAY = function() return "Schwimmt im nördlichen Kanal"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WESTERN_BEACH].DISPLAY = function() return "Schwimmt vom Weststrand aus"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTH_WESTERN_BEACH].DISPLAY = function() return "Schwimmt vom Südweststrand aus"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_END].DISPLAY = function() return TurnInTo("Suche nach Badestellen", "Merkhâma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_PICKUP].DISPLAY = function() return TakeFrom("Möwenschar", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_END].DISPLAY = function() return TurnInTo("Möwenschar", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_PICKUP].DISPLAY = function() return TakeFrom("Katzenfrage", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_QUEST].DISPLAY = function() return TakeFrom("Ja zu Katzen oder Nein zu Katzen", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SCRUFFY].DISPLAY = function() return "Füttert den schmutzigen Kater ODER Verscheucht den schmutzigen Kater"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SKINNY].DISPLAY = function() return "Füttert den dürren Kater ODER Verscheucht den dürren Kater"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLINKY].DISPLAY = function() return "Füttert den schleichenden Kater ODER Verscheucht den schleichenden Kater"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SMELLY].DISPLAY = function() return "Füttert die stinkende Katze ODER Verscheucht die stinkende Katze"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SASSY].DISPLAY = function() return "Füttert die aufmüpfige Katze ODER Verscheucht die aufmüpfige Katze"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLEEPY].DISPLAY = function() return "Füttert die müde Katze ODER Verscheucht die müde Katze"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_END].DISPLAY = function() return TurnInTo("Katzenfrage", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_PICKUP].DISPLAY = function() return TakeFrom("Verschandelte Strände", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_1].DISPLAY = function() return "Räumt am Strand Treibgut östlich des Besorgter Urlauber auf"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_2].DISPLAY = function() return "Räumt am Strand Treibgut westlich des Besorgter Urlauber auf"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_3].DISPLAY = function() return "Räumt am Strand Treibgut neben der Sandburg auf"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_4].DISPLAY = function() return "Räumt am Strand Treibgut hinter dem Renntor auf"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_5].DISPLAY = function() return "Räumt am Strand Treibgut neben der Sandburg auf"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_6].DISPLAY = function() return "Räumt am Strand Treibgut an der Bucht auf"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_END].DISPLAY = function() return TurnInTo("Verschandelte Strände", "Maghôrdo"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_PICKUP].DISPLAY = function() return TakeFrom("Drachen steigen lassen", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_BEACH].DISPLAY = function() return "Lasst einen Drachen am Südstrand steigen"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_COVE].DISPLAY = function() return "Lasst einen Drachen in der Bucht im Süden steigen"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_WEST_END_OF_HARBOUR].DISPLAY = function() return "Lasst einen Drachen am Westende des Hafens steigen"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_EASTERN_BRIDGE].DISPLAY = function() return "Lasst einen Drachen auf der östlichen Brücke steigen"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SAND_IN_FRONT_OF_INN].DISPLAY = function() return "Lasst einen Drachen im Sand vor dem Gasthaus steigen"; end
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_END].DISPLAY = function() return TurnInTo("Drachen steigen lassen", "Darôma"); end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_1].DISPLAY = function() return "Verjagt die Möwe am nördlichen Ende der Westbrücke"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_2].DISPLAY = function() return "Verjagt die Möwe in der Nähe von Merkhâma"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_3].DISPLAY = function() return "Verjagt die Möwe auf der östlichen Brücke"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_4].DISPLAY = function() return "Verjagt die Möwe in der Nähe von den dürren Kater"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_5].DISPLAY = function() return "Verjagt die Möwe in der Nähe von Entspannte Urlauberin"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_6].DISPLAY = function() return "Verjagt die Möwe in der Nähe des westlichen Angelplatzes"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_7].DISPLAY = function() return "Verjagt die Möwe am südlichen Ende der Westbrücke"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_8].DISPLAY = function() return "Verjagt die Möwe in der Nähe der stinkenden Katze"; end;
QG_MIDSUMMER_FH[QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END].DISPLAY = function() return TurnInTo("Zur Feier von Mittsommer", "Hauptmann Khâtaphos"); end;

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Neue Aufgabe: Zur Feier von Mittsommer"] = QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP;
    ["Neue Aufgabe: Etwas blumig"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_PICKUP;
    ["Neue Aufgabe: Bis zum letzten Tropfen"] = QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_PICKUP;
    ["Neue Aufgabe: Hochzeitsmaterialien"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_PICKUP;
    ["Neue Aufgabe: Die Bier-Jahreszeiten"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_PICKUP;
    ["Neue Aufgabe: Köstliche Häppchen"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PICKUP;
    ["Neue Aufgabe: Schmuck für die Stadt"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_PICKUP;
    ["Neue Aufgabe: Blumenkronen"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_PICKUP;
    ["Neue Aufgabe: Hilfe für die Stallhelfer"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_PICKUP;
    ["Neue Aufgabe: Richtungsweisende Kunst"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_PICKUP;
    ["Neue Aufgabe: Münzwurf"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_PICKUP;
    ["Neue Aufgabe: Wachstumsschmerzen"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_PICKUP;
    ["Neue Aufgabe: Unnütze Hunde"] = QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_PICKUP;
    ["Neue Aufgabe: Ein Dank an die Heiler"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_PICKUP;
    ["Neue Aufgabe: Süße Grüße"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_PICKUP;
    ["Neue Aufgabe: Etwas Verlegtes, etwas Blaues"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_PICKUP;
    ["Neue Aufgabe: Ein Mittel gegen jedes Leid"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_PICKUP;
    ["Neue Aufgabe: Liebe liegt in der Luft"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_PICKUP;
};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["Neue Aufgabe: Zur Feier von Mittsommer"] = QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_PICKUP;
    ["Neue Aufgabe: Reinigungsdienst"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_PICKUP;
    ["Neue Aufgabe: Schätze der Gezeiten"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_PICKUP;
    ["Neue Aufgabe: Hilfe für den Koch"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_PICKUP;
    ["Neue Aufgabe: Burgenbau"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_PICKUP;
    ["Neue Aufgabe: Auf der Suche nach Angelplätzen"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_PICKUP;
    ["Neue Aufgabe: Hilfsangebot"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_PICKUP;
    ["Neue Aufgabe: Suche nach Badestellen"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_PICKUP;
    ["Neue Aufgabe: Möwenschar"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_PICKUP;
    ["Neue Aufgabe: Katzenfrage"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_PICKUP;
    ["Neue Aufgabe: Katzenfrage: Ja zu Katzen"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_QUEST;
    ["Neue Aufgabe: Katzenfrage: Nein zu Katzen"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_QUEST;
    ["Neue Aufgabe: Verschandelte Strände"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_PICKUP;
    ["Neue Aufgabe: Drachen steigen lassen"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_PICKUP;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Abgeschlossen:\nHilfe für die Stallhelfer\n"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_END;
    ["Abgeschlossen:\nMünzwurf\n"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_END;
    ["Abgeschlossen:\nUnnütze Hunde\n"] = QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_END;
    ["Abgeschlossen:\nWachstumsschmerzen\n"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_END;
    ["Abgeschlossen:\nSüße Grüße\n"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_END;
    ["Abgeschlossen:\nRichtungsweisende Kunst\n"] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_END;
    ["Abgeschlossen:\nEtwas Verlegtes, etwas Blaues\n"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_END;
    ["Abgeschlossen:\nEin Mittel gegen jedes Leid\n"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_END;
    ["Abgeschlossen:\nLiebe liegt in der Luft\n"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_END;
    ["Abgeschlossen:\nZur Feier von Mittsommer\n"] = QG_MIDSUMMER_MT_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END;
    ["Abgeschlossen:\nEin Dank an die Heiler\n"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_END;
    ["Abgeschlossen:\nEtwas blumig\n"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_END;
    ["Abgeschlossen:\nBis zum letzten Tropfen\n"] = QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_END;
    ["Abgeschlossen:\nHochzeitsmaterialien\n"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_END;
    ["Abgeschlossen:\nDie Bier-Jahreszeiten\n"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_END;
    ["Abgeschlossen:\nKöstliche Häppchen\n"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_END;
    ["Abgeschlossen:\nBlumenkronen\n"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_END;
};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["Abgeschlossen:\nReinigungsdienst\n"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_END;
    ["Abgeschlossen:\nSchätze der Gezeiten\n"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_END;
    ["Abgeschlossen:\nHilfe für den Koch\n"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_END;
    ["Abgeschlossen:\nBurgenbau\n"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_END;
    ["Abgeschlossen:\nAuf der Suche nach Angelplätzen\n"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_END;
    ["Abgeschlossen:\nZur Feier von Mittsommer\n"] = QG_MIDSUMMER_FH_INDEX.IN_CELEBRATION_OF_MIDSUMMER_END;
    ["Abgeschlossen:\nHilfsangebot\n"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_END;
    ["Abgeschlossen:\nSuche nach Badestellen\n"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_END;
    ["Abgeschlossen:\nMöwenschar\n"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_END;
    ["Abgeschlossen:\nKatzenfrage\n"] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_END;
    ["Abgeschlossen:\nVerschandelte Strände\n"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_END;
    ["Abgeschlossen:\nDrachen steigen lassen\n"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_END;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Ihr habt einen Striegel gefunden."] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_BRUSH;
    ["Ihr habt Äpfel an Euch genommen."] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_APPLES;
    ["Anzahl gestriegelter Pferde (3/3)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_GROOM;
    ["Anzahl gefütterter Pferde (3/3)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_FEED;
    ["Anzahl gesammelter Sommerblumen (10/10)"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_COLLECT;
    ["Anzahl der lästigen Barden zugeworfenen Münzen (6/6)"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_COMPLETE;
    ["Anzahl gesammelter Bierfässer (1/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_1;
    ["Ihr habt das richtige Weinfass aufgenommen."] = QG_MIDSUMMER_MT_INDEX.TO_THE_LAST_DROP_COMPLETE;
    ["Anzahl gesammelter Bierfässer (2/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_2;
    ["Ihr habt Blumen beschafft."] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_LEBADAR;
    ["Ihr habt den Ring gefunden!"] = QG_MIDSUMMER_MT_INDEX.UNHELPFUL_HOUNDS_CONTINUE;
    ["Anzahl gesammelter Kisten mit Hochzeitsmaterialien (1/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_1;
    ["Ihr habt Lehm beschafft."] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_POTTER;
    ["Anzahl gesammelter Kisten mit Hochzeitsmaterialien (3/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_3;
    ["Anzahl der gegossenen Büsche (4/4)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WATER;
    ["Menge an gejätetem Unkraut (5/5)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WEEDS;
    ["Ihr habt Kohle beschafft."] = QG_MIDSUMMER_MT_INDEX.ARTISTIC_DIRECTION_CIRIEL;
    ["Anzahl der verteilten Backwaren (2/4)"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_2;
    ["Anzahl gesammelter Kisten mit Hochzeitsmaterialien (4/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_4;
    ["Anzahl der verteilten Backwaren (4/4)"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_4;
    ["Anzahl gesammelter Kisten mit Hochzeitsmaterialien (5/5)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_5;
    ["Anzahl platzierten Blumenschmucks (2/5)"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_2;
    ["Anzahl gesammelter Bierfässer (3/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_3;
    ["Anzahl der hinter die Bühne im Blauen Theater geschickten Wolkenköpfe (6/6)"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_MISPLACED_COMPLETE;
    ["Anzahl platzierten Blumenschmucks (5/5)"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_END;
    ["Anzahl der in der Hohen Halle entsorgten halb geleerten Flaschen (10/10)"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_BOTTLES;
    ["Anzahl überbrachter Dankesbriefe (6/6)"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_COMPLETE;
    ["Anzahl platzierten Blumenschmucks (6/6)"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_COMPLETE;
    ["Anzahl gefundener fortgewehter Verse (6/6)"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_COMPLETE;
    ["Anzahl gesammelter Bierfässer (4/4)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_4;

    ["Der Feiernde sagt nichts und verschwindet mit mürrischem Blick."] = { -- NAME is only used for debugging purposes.
        [1] = { ["NAME"] = "Reveller 1"; };
        [2] = { ["NAME"] = "Reveller 2"; };
        [3] = { ["NAME"] = "Reveller 3"; };
        [4] = { ["NAME"] = "Reveller 4"; };
        [5] = { ["NAME"] = "Reveller 5"; };
        [6] = { ["NAME"] = "Reveller 6"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_REVELLERS; };
    };
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["Der schmutzige Kater faucht und flitzt davon."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SCRUFFY;
    ["Der schmutzige Kater beißt Euch ein wenig in den Finger, als er Euch gierig das Leckerli aus der Hand frisst."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SCRUFFY;
    ["Der dürre Kater protestiert und läuft dann davon."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SKINNY;
    ["Der dürre Kater beäugt Euch misstrauisch, nimmt Euer Geschenk dann aber schnurrend an."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SKINNY;
    ["Der schleichende Kater beschwert sich lautstark und schleicht davon."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLINKY;
    ["Der schleichende Kater nimmt sich das Leckerli und dann ein kleines Bad."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLINKY;
    ["Die stinkende Katze faucht laut auf und rennt davon."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SMELLY;
    ["Die stinkende Katze schluckt das Leckerli mit einem Happs herunter und schmiegt sich an Euer Bein."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SMELLY;
    ["Die aufmüpfige Katze faucht Euch an und stolziert langsam davon, den Schwanz hoch in die Luft gereckt."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SASSY;
    ["Die aufmüpfige Katze schnappt sich das Leckerli, faucht Euch an und läuft davon."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SASSY;
    ["Die müde Katze knurrt Euch an und huscht davon."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLEEPY;
    ["Die müde Katze schnappt sich schnurrend das Leckerli und legt sich wieder schlafen."] = QG_MIDSUMMER_FH_INDEX.CAT_CONUNDRUM_SLEEPY;

    ["Anzahl im Sand gebauter Sandburgen (1/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_1;
    ["Anzahl im Sand gebauter Sandburgen (2/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_2;
    ["Anzahl im Sand gebauter Sandburgen (3/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_3;
    ["Anzahl im Sand gebauter Sandburgen (4/4)"] = QG_MIDSUMMER_FH_INDEX.BUILDING_CASTLES_4;

    ["Anzahl verjagter Möwen (1/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_1;
    ["Anzahl verjagter Möwen (2/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_2;
    ["Anzahl verjagter Möwen (3/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_3;
    ["Anzahl verjagter Möwen (4/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_4;
    ["Anzahl verjagter Möwen (5/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_5;
    ["Anzahl verjagter Möwen (6/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_6;
    ["Anzahl verjagter Möwen (7/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_7;
    ["Anzahl verjagter Möwen (8/8)"] = QG_MIDSUMMER_FH_INDEX.A_FLOCK_OF_SEAGULLS_8;

    ["Das sieht erfrischend aus!"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_2;

    ["Das sieht nach einer guten Stelle aus."] = { -- NAME is only used for debugging purposes.
        [1] = { ["NAME"] = "Fish 1 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_FOUND; };
        [2] = { ["NAME"] = "Fish 2 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_FOUND; };
        [3] = { ["NAME"] = "Fish 3 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_FOUND; };
        [4] = { ["NAME"] = "Fish 4 found"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_FOUND; };
    };

    ["Ihr habt einen Fisch gefangen!"] = { -- NAME is only used for debugging purposes.
        [1] = { ["NAME"] = "Fish 1 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_1_CAUGHT; };
        [2] = { ["NAME"] = "Fish 2 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_2_CAUGHT; };
        [3] = { ["NAME"] = "Fish 3 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_3_CAUGHT; };
        [4] = { ["NAME"] = "Fish 4 caught"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.FISHING_FOR_ADVICE_4_CAUGHT; };
    };

    ["Die Leute hier scheinen Euren Drachen nicht zu bemerken."] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_WEST_END_OF_HARBOUR;
    ["Hier dürftet Ihr von vielen Leuten gesehen werden!"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_EASTERN_BRIDGE;
    ["Die Leute hier wirken beeindruckt von Eurem Drachen!"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_BEACH;
    ["Wissen die Leute hier Euren Drachen zu würdigen?"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SOUTHERN_COVE;
    ["Ist da etwa jemand neidisch auf Euren Drachen?"] = QG_MIDSUMMER_FH_INDEX.LETS_GO_FLY_A_KITE_SAND_IN_FRONT_OF_INN;

    ["\"Die Erinnerungen der Mûmakil\" von J. F. Ugsha-imri eingesammelt."] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_2;

    ["Anzahl gemachter Betten (4/4)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_BEDS;
    ["Anzahl geschrubbter Böden (4/4)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_FLOORS;

    ["Das Wasser ist tief, und die Leute sehen einfach zu, wie Ihr vielleicht gleich ertrinkt!"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WEST_HARBOR;
    ["Kein schlechter Ort zum Schwimmen, aber recht belebt."] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WEST_HARBOR;

    ["Hier wäre es wesentlich schöner, wenn das Wasser flacher wäre."] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTHERN_COVE;
    ["Das Wasser ist warm und wunderbar zum Schwimmen geeignet."] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTHERN_COVE;

    ["Passabel hier, aber viel zu tief."] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_NORTHERN_CHANNEL;
    ["Das Wasser im Kanal ist ruhig und warm."] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_NORTHERN_CHANNEL;

    ["Es ist sehr gefährlich hier - das war ein Fehler!"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WESTERN_BEACH;
    ["Das Wasser ist kalt und der Wellengang ein bisschen zu stark."] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_WESTERN_BEACH;

    ["Hier gibt es eindeutig zu viel Wasser!"] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTH_WESTERN_BEACH;
    ["Dies ist schöner ruhiger Ort zum Schwimmen."] = QG_MIDSUMMER_FH_INDEX.SEARCHING_FOR_SWIMMING_SPOTS_SOUTH_WESTERN_BEACH;

    ["Anzahl am Strand aufgeräumten Treibguts (1/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_1;
    ["Anzahl am Strand aufgeräumten Treibguts (2/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_2;
    ["Anzahl am Strand aufgeräumten Treibguts (3/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_3;
    ["Anzahl am Strand aufgeräumten Treibguts (4/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_4;
    ["Anzahl am Strand aufgeräumten Treibguts (5/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_5;
    ["Anzahl am Strand aufgeräumten Treibguts (6/6)"] = QG_MIDSUMMER_FH_INDEX.EYESORES_DRIFTED_ASHORE_6;

    ["Dieses Kissen sollte passen."] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_2;

    ["'Mehr!', verlangt der fremde Mann."] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_2;
    ["Er dankt Euch mit einem glücklichen Seufzen."] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_3;

    ["Anzahl gesammelter frischer Kräuter (1/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_1;
    ["Anzahl gesammelter frischer Kräuter (2/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_2;
    ["Anzahl gesammelter frischer Kräuter (3/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_3;
    ["Anzahl gesammelter frischer Kräuter (4/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_HERB_4;
    ["Anzahl gesammelter saftiger Zitronen (1/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_1;
    ["Anzahl gesammelter saftiger Zitronen (2/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_2;
    ["Anzahl gesammelter saftiger Zitronen (3/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_3;
    ["Anzahl gesammelter saftiger Zitronen (4/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_LEMON_4;
    ["Anzahl gesammelter Handvoll Oliven (1/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_1;
    ["Anzahl gesammelter Handvoll Oliven (2/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_2;
    ["Anzahl gesammelter Handvoll Oliven (3/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_3;
    ["Anzahl gesammelter Handvoll Oliven (4/4)"] = QG_MIDSUMMER_FH_INDEX.ASSISTING_THE_COOK_OLIVE_4;

    ["Anzahl gesammelter Muscheln (8/8)"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_SEASHELLS;

};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
    ["Anzahl gestriegelter Pferde %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_GROOM;
    ["Anzahl gefütterter Pferde %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.AIDING_THE_STABLE_HANDS_FEED;
    ["Anzahl gesammelter Sommerblumen %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_COLLECT;
    ["Anzahl der lästigen Barden zugeworfenen Münzen %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.TOSS_A_COIN_COMPLETE;
    ["Anzahl der gegossenen Büsche %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WATER;
    ["Menge an gejätetem Unkraut %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.GROWING_PAINS_WEEDS;
    ["Anzahl der verteilten Backwaren %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.SWEET_TREATS_4;
    ["Anzahl gesammelter Kisten mit Hochzeitsmaterialien %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.WEDDING_SUPPLIES_5;
    ["Anzahl überbrachter Dankesbriefe %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.HONOURING_HEALERS_COMPLETE;
    ["Anzahl platzierten Blumenschmucks %((%d+)/(5)%)"] = QG_MIDSUMMER_MT_INDEX.ARRANGING_ARRANGEMENTS_END;
    ["Anzahl platzierten Blumenschmucks %((%d+)/(6)%)"] = QG_MIDSUMMER_MT_INDEX.SOMETHING_FLORAL_COMPLETE;
    ["Anzahl der in der Hohen Halle entsorgten halb geleerten Flaschen %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.A_CURE_FOR_ALL_ILLS_BOTTLES;
    ["Anzahl gefundener fortgewehter Verse %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.LOVE_IS_IN_THE_AIR_COMPLETE;
    ["Anzahl gesammelter Bierfässer %((%d+)/(%d+)%)"] = QG_MIDSUMMER_MT_INDEX.WHAT_ALES_YOU_4;

};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    ["Anzahl gemachter Betten %((%d+)/(%d+)%)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_BEDS;
    ["Anzahl geschrubbter Böden %((%d+)/(%d+)%)"] = QG_MIDSUMMER_FH_INDEX.HOUSEKEEPING_FLOORS;
    ["Anzahl gesammelter Muscheln %((%d+)/(%d+)%)"] = QG_MIDSUMMER_FH_INDEX.TIDAL_TREASURES_SEASHELLS;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[MIDSUMMER] = {};
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[MIDSUMMER][MIDSUMMER_MINAS_TIRITH_QUICK_GUIDE] = {
     [1] = { ["NAME"] = "Karierte Decke"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.FLORAL_CROWNS_CRAFT; };
     [2] = { ["NAME"] = "Daghir"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_DAGHIR; };
     [3] = { ["NAME"] = "Pelnen"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_PELNEN; };
     [4] = { ["NAME"] = "Gwárben"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_GWARBEN; };
     [5] = { ["NAME"] = "Arastil"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_ARASTIL; };
     [6] = { ["NAME"] = "Brandion"; ["INDEX"] = QG_MIDSUMMER_MT_INDEX.TASTY_MORSELS_BRANDION; };
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[MIDSUMMER][MIDSUMMER_FURTHERHOLM_QUICK_GUIDE] = {
    [1] = { ["NAME"] = "Durstige Strandgängerin"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_1; };
    [2] = { ["NAME"] = "Durstige Strandgängerin"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_BEACHGOER_3; };
    [3] = { ["NAME"] = "Entspannte Urlauberin"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_1; };
    [4] = { ["NAME"] = "Entspannte Urlauberin"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_HOLIDAYER_3; };
    [5] = { ["NAME"] = "Besorgter Urlauber"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_1; };
    [6] = { ["NAME"] = "Besorgter Urlauber"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SIGHTSEER_3; };
    [7] = { ["NAME"] = "Hoffnungsvoller Verehrer"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_1; };
    [8] = { ["NAME"] = "Gefüllter Picknickkorb"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_2; };
    [9] = { ["NAME"] = "Hoffnungsvoller Verehrer"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_SUITOR_3; };
   [10] = { ["NAME"] = "Ausgelassener Gast"; ["INDEX"] = QG_MIDSUMMER_FH_INDEX.OFFERING_TO_HELP_MERRYMAKER_1; };
};
