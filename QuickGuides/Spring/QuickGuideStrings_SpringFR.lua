
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[SPRING] = "\nCe guide a été créé par Cube durant le Festival du Printemps 2026.\n\nRemarque : Plusieurs objectifs, notamment celui de « Jalousie florale », ne donnent pas de résultats visibles. L'option « Compagnon du festival » utilise la personne que vous ciblez comme indicateur pour simuler une interaction. Si vous sélectionnez des PNJ au hasard, les objectifs risquent d'être validés prématurément.";
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDIT_HEIGHTS[SPRING] = 140;

QG_SPRING = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[SPRING];
QG_SPRING[QG_SPRING_INDEX.A_TASTE_OF_SPRING_PICKUP].DISPLAY = function() return TakeFrom("Un goût de printemps", "Rhudamer Hirtul"); end;
QG_SPRING[QG_SPRING_INDEX.A_TASTE_OF_SPRING_END].DISPLAY = function() return TurnInTo("Un goût de printemps", "Rhudamer Hirtul"); end;
QG_SPRING[QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_PICKUP].DISPLAY = function() return TakeFromIn("Jours de la jonquille (quotidien)", "Avra Devistère", "Clegur"); end
QG_SPRING[QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_END].DISPLAY = function() return TurnInTo("Jours de la jonquille (quotidien)", "Avra Devistère"); end
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_PICKUP].DISPLAY = function() return TakeFrom("Le cadeau du printemps", "Avra Devistère"); end;
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PICKED].DISPLAY = function() return "Cueillez des jonquilles autour de Clegur"; end
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PLANTED].DISPLAY = function() return "Plantez des jonquilles dans des pots"; end
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_END].DISPLAY = function() return TurnInTo("Le cadeau du printemps", "Avra Devistère"); end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_PICKUP].DISPLAY = function() return TakeFrom("Promotion des tartes", "Maramam Baubide"); end;
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_1].DISPLAY = function() return "Distribuez le prospectus au Hobbit en visite près des musiciens"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_2].DISPLAY = function() return "Distribuez le prospectus au Hobbit en visite près Malmadog Torlan"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_3].DISPLAY = function() return "Distribuez le prospectus au Hobbit en visite près le boucher"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_4].DISPLAY = function() return "Distribuez le prospectus au Hobbit en visite près Leri Grudd"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_5].DISPLAY = function() return "Distribuez le prospectus au Hobbit en visite près Delyth Saethur"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_END].DISPLAY = function() return TurnInTo("Promotion des tartes", "Maramam Baubide"); end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_PICKUP].DISPLAY = function() return TakeFrom("Envie de fleurs", "Naffa Sanvin"); end;
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_1].DISPLAY = function() return "Parlez à Velda Luche pour la quête Envie de fleurs"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_2].DISPLAY = function() return "Parlez à Gloron Magirouge pour la quête Envie de fleurs"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_3].DISPLAY = function() return "Placez la bannière devant la grange, puis parlez à Gloron Magirouge pour la quête Envie de fleurs"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_4].DISPLAY = function() return "Parlez à Velda Luche pour la quête Envie de fleurs"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_BULB_COLLECTED].DISPLAY = function() return "Récoltez les précieux bulbes de jonquilles"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_END].DISPLAY = function() return TurnInTo("Envie de fleurs", "Naffa Sanvin"); end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_PICKUP].DISPLAY = function() return TakeFrom("Les déboires des musiciens", "Luthiste"); end;
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FIDDLE].DISPLAY = function() return "Trouvez le violon"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BAGPIPES].DISPLAY = function() return "Trouvez la cornemuse"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FLUTE].DISPLAY = function() return "Trouvez la flûte"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_LUTE].DISPLAY = function() return "Trouvez le luth"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BODHRAN].DISPLAY = function() return "Trouvez le bodhrán"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_END].DISPLAY = function() return TurnInTo("Les déboires des musiciens", "Luthiste"); end
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_PICKUP].DISPLAY = function() return TakeFrom("Couleurs du printemps", "Malmadog Torlan"); end;
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PICKED_UP].DISPLAY = function() return "Ramassez les bannières des Jours de la jonquille" end;
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PLACED].DISPLAY = function() return "Installez des bannières pour les Jours des jonquilles"; end
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_END].DISPLAY = function() return TurnInTo("Couleurs du printemps", "Malmadog Torlan"); end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PICKUP].DISPLAY = function() return TakeFrom("Trop d'éparpillement", "Cunedda Muguigue"); end;
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_LAMB].DISPLAY = function() return "Ramassez le paquet de viande d'agneau"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_1].DISPLAY = function() return "Livrez la viande d'agneau à Leri Grudd"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_2].DISPLAY = function() return "Livrez la viande d'agneau à Delyth Saethur"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_3].DISPLAY = function() return "Livrez la viande d'agneau à Drudwen"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_4].DISPLAY = function() return "Livrez la viande d'agneau à Gloron Magirouge"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_5].DISPLAY = function() return "Livrez la viande d'agneau au maire Malmadog Torlan"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_6].DISPLAY = function() return "Livrez la viande d'agneau à Velda Luche"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_END].DISPLAY = function() return TurnInTo("Trop d'éparpillement", "Cunedda Muguigue"); end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_PICKUP].DISPLAY = function() return TakeFrom("Fleurs bien arrosées", "Leri Grudd"); end;
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_FOUND].DISPLAY = function() return "Trouvez les seaux d'eau près de l'étang"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_1].DISPLAY = function() return "Arroser les jonquilles dans le jardin de Leri"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_2].DISPLAY = function() return "Arroser les jonquilles situées près des ruches, à côté de la boucherie"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_3].DISPLAY = function() return "Arroser les jonquilles situées près des écuries"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_4].DISPLAY = function() return "Arroser les jonquilles situées devant le smial de Delyth Saethur"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_5].DISPLAY = function() return "Arroser les jonquilles situées derrière le four"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_END].DISPLAY = function() return TurnInTo("Fleurs bien arrosées", "Leri Grudd"); end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_PICKUP].DISPLAY = function() return TakeFrom("Festin familial", "Rosentyl Flutch"); end;
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_LAMB].DISPLAY = function() return "Récupérez un colis de viande d'agneau"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_CARROTS].DISPLAY = function() return "Récoltez des carottes"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_POTATOES].DISPLAY = function() return "Récupérer des pommes de terre"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_LEEKS_TALK].DISPLAY = function() return "Parlez à Bortho Bichelle, l'assistant de l'approvisionneur"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_LEEKS].DISPLAY = function() return "Récoltez des poireaux"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_END].DISPLAY = function() return TurnInTo("Festin familial", "Rosentyl Flutch"); end

-- What is the difference between _QUICK_GUIDE_PROGRESS and _QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS?

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[SPRING] = {
    ["Jonquilles cueillies %((%d+)/(%d+)%)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PICKED;
    ["Jonquilles plantées %((%d+)/(%d+)%)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PLANTED;
    ["Bannières installées %((%d+)/(%d+)%)"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PLACED;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[SPRING] = {
    ["Nouvelle quête : Un goût de printemps"] = QG_SPRING_INDEX.A_TASTE_OF_SPRING_PICKUP;
    ["Nouvelle quête : Jours de la jonquille (quotidien)"] = QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_PICKUP;
    ["Nouvelle quête : Le cadeau du printemps"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_PICKUP;
    ["Nouvelle quête : Promotion des tartes"] = QG_SPRING_INDEX.PROMOTING_PIE_PICKUP;
    ["Nouvelle quête : Envie de fleurs"] = QG_SPRING_INDEX.FLOWER_ENVY_PICKUP;
    ["Nouvelle quête : Couleurs du printemps"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_PICKUP;
    ["Nouvelle quête : Les déboires des musiciens"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_PICKUP;
    ["Nouvelle quête : Trop d'éparpillement"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PICKUP;
    ["Nouvelle quête : Festin familial"] = QG_SPRING_INDEX.FAMILY_FEAST_PICKUP;
    ["Nouvelle quête : Fleurs bien arrosées"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_PICKUP;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[SPRING] = {
    ["Terminé :\nUn goût de printemps\n"] = QG_SPRING_INDEX.A_TASTE_OF_SPRING_END;
    ["Terminé :\nJours de la jonquille (quotidien)\n"] = QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_END;
    ["Terminé :\nLe cadeau du printemps\n"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_END;
    ["Terminé :\nPromotion des tartes\n"] = QG_SPRING_INDEX.PROMOTING_PIE_END;
    ["Terminé :\nEnvie de fleurs\n"] = QG_SPRING_INDEX.FLOWER_ENVY_END;
    ["Terminé :\nCouleurs du printemps\n"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_END;
    ["Terminé :\nLes déboires des musiciens\n"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_END;
    ["Terminé :\nTrop d'éparpillement\n"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_END;
    ["Terminé :\nFestin familial\n"] = QG_SPRING_INDEX.FAMILY_FEAST_END;
    ["Terminé :\nFleurs bien arrosées\n"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_END;

};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[SPRING] = {
    ["Jonquilles cueillies (8/8)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PICKED;
    ["Jonquilles plantées (8/8)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PLANTED;
    ["Prospectus distribués (1/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_1;
    ["Prospectus distribués (2/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_2;
    ["Prospectus distribués (3/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_3;
    ["Prospectus distribués (4/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_4;
    ["Prospectus distribués (5/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_5;
    ["Bulbes de jonquilles précieux récoltés !"] = QG_SPRING_INDEX.FLOWER_ENVY_BULB_COLLECTED;
    ["Bannières installées (6/6)"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PLACED;
    ["Le violon a été retrouvé"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FIDDLE;
    ["La cornemuse a été retrouvée"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BAGPIPES;
    ["La flûte a été retrouvée"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FLUTE;
    ["Le luth a été retrouvé"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_LUTE;
    ["Le bodhrán a été retrouvé"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BODHRAN;
    ["Paquets livrés (1/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_1;
    ["Paquets livrés (2/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_2;
    ["Paquets livrés (3/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_3;
    ["Paquets livrés (4/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_4;
    ["Paquets livrés (5/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_5;
    ["Paquets livrés (6/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_6;
    ["Viande d'agneau récupérée"] = QG_SPRING_INDEX.FAMILY_FEAST_LAMB;
    ["Carottes récoltées"] = QG_SPRING_INDEX.FAMILY_FEAST_CARROTS;
    ["Pommes de terre récoltées"] = QG_SPRING_INDEX.FAMILY_FEAST_POTATOES;
    ["Poireaux récoltés"] = QG_SPRING_INDEX.FAMILY_FEAST_LEEKS;
    ["Seaux d'eau trouvés !"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_FOUND;
    ["Arrosé !"] = {
        [1] = { ["NAME"] = "Watered! 1"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_1; };
        [2] = { ["NAME"] = "Watered! 2"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_2; };
        [3] = { ["NAME"] = "Watered! 3"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_3; };
        [4] = { ["NAME"] = "Watered! 4"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_4; };
        [5] = { ["NAME"] = "Watered! 5"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_5; };
    };
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[SPRING] = {
    [1] = { ["NAME"] = "Velda Luche"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_1; };
    [2] = { ["NAME"] = "Agneau emballé"; ["INDEX"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_LAMB; };
    [3] = { ["NAME"] = "Gloron Magirouge"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_2; };
    [4] = { ["NAME"] = "Borto Bichelle"; ["INDEX"] = QG_SPRING_INDEX.FAMILY_FEAST_LEEKS_TALK; };
    [5] = { ["NAME"] = "Bannières des Jours de la jonquille"; ["INDEX"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PICKED_UP; };
    [6] = { ["NAME"] = "Gloron Magirouge"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_3; };
    [7] = { ["NAME"] = "Velda Luche"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_4; };
};
