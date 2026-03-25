
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDITS[SPRING] = "\nThis guide created by Cube during the 2026 Spring Festival.\n\nNote: Several objectives, especially for Flower Envy, do not produce observable results. Festival Buddy makes use of who you are targetting as a proxy for actually talking to them. If you randomly select various NPCs it may cause objectives to prematurely complete.";
_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_CREDIT_HEIGHTS[SPRING] = 140;

QG_SPRING = _G.CubePlugins.FestivalBuddyII._QUICK_GUIDE[SPRING];
QG_SPRING[QG_SPRING_INDEX.A_TASTE_OF_SPRING_PICKUP].DISPLAY = function() return TakeFrom("A Taste of Spring", "Rhudamer Hirtul"); end;
QG_SPRING[QG_SPRING_INDEX.A_TASTE_OF_SPRING_END].DISPLAY = function() return TurnInTo("A Taste of Spring", "Rhudamer Hirtul"); end;
QG_SPRING[QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_PICKUP].DISPLAY = function() return TakeFromIn("Daffodil Days (Daily)", "Athra Devister", "Clegur"); end
QG_SPRING[QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_END].DISPLAY = function() return TurnInTo("Daffodil Days (Daily)", "Athra Devister"); end
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_PICKUP].DISPLAY = function() return TakeFrom("The Gift of Spring", "Athra Devister"); end;
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PICKED].DISPLAY = function() return "Pick daffodils around Clegur"; end
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PLANTED].DISPLAY = function() return "Plant daffodils in containers"; end
QG_SPRING[QG_SPRING_INDEX.THE_GIFT_OF_SPRING_END].DISPLAY = function() return TurnInTo("The Gift of Spring", "Athra Devister"); end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_PICKUP].DISPLAY = function() return TakeFrom("Promoting Pie", "Maramam Bobbid"); end;
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_1].DISPLAY = function() return "Give flier to visiting hobbit near musicians"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_2].DISPLAY = function() return "Give flier to visiting hobbit near Malmadog Torlan"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_3].DISPLAY = function() return "Give flier to visiting hobbit near butcher"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_4].DISPLAY = function() return "Give flier to visiting hobbit near Leri Grudd"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_FLIER_5].DISPLAY = function() return "Give flier to visiting hobbit near Delyth Saethur"; end
QG_SPRING[QG_SPRING_INDEX.PROMOTING_PIE_END].DISPLAY = function() return TurnInTo("Promoting Pie", "Maramam Bobbid"); end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_PICKUP].DISPLAY = function() return TakeFrom("Flower Envy", "Naffa Blodven"); end;
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_1].DISPLAY = function() return "Talk to Welduth Lhush for Flower Envy"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_2].DISPLAY = function() return "Talk to Gloron Magimrud for Flower Envy"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_3].DISPLAY = function() return "Place the banner in front of the barn, then talk to Gloron Magimrud for Flower Envy"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_TALK_4].DISPLAY = function() return "Talk to Welduth Lhush for Flower Envy"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_BULB_COLLECTED].DISPLAY = function() return "Collect the prized daffodil bulbs"; end
QG_SPRING[QG_SPRING_INDEX.FLOWER_ENVY_END].DISPLAY = function() return TurnInTo("Flower Envy", "Naffa Blodven"); end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_PICKUP].DISPLAY = function() return TakeFrom("The Musicians' Misfortune", "Lutenist"); end;
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FIDDLE].DISPLAY = function() return "Find the fiddle"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BAGPIPES].DISPLAY = function() return "Find the bagpipes"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FLUTE].DISPLAY = function() return "Find the flute"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_LUTE].DISPLAY = function() return "Find the lute"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BODHRAN].DISPLAY = function() return "Find the bodhran"; end
QG_SPRING[QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_END].DISPLAY = function() return TurnInTo("The Musicians' Misfortune", "Lutenist"); end
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_PICKUP].DISPLAY = function() return TakeFrom("Springtime's Colours", "Malmadog Torlan"); end;
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PICKED_UP].DISPLAY = function() return "Pick up Daffodil Days banners" end;
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PLACED].DISPLAY = function() return "Place Daffodil Days banners"; end
QG_SPRING[QG_SPRING_INDEX.SPRINGTIMES_COLOURS_END].DISPLAY = function() return TurnInTo("Springtime's Colours", "Malmadog Torlan"); end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PICKUP].DISPLAY = function() return TakeFrom("Stretched Too Thin", "Cunedda Moltgig"); end;
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_LAMB].DISPLAY = function() return "Pick up the packaged lamb meat"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_1].DISPLAY = function() return "Deliver lamb meat to Leri Grudd"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_2].DISPLAY = function() return "Deliver lamb meat to Delyth Saethur"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_3].DISPLAY = function() return "Deliver lamb meat to Drudwen"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_4].DISPLAY = function() return "Deliver lamb meat to Gloron Magimrud"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_5].DISPLAY = function() return "Deliver lamb meat to Mayor Malmadog Torlan"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_6].DISPLAY = function() return "Deliver lamb meat to Welduth Lhush"; end
QG_SPRING[QG_SPRING_INDEX.STRETCHED_TOO_THIN_END].DISPLAY = function() return TurnInTo("Stretched Too Thin", "Cunedda Moltgig"); end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_PICKUP].DISPLAY = function() return TakeFrom("Well-watered Blooms", "Leri Grudd"); end;
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_FOUND].DISPLAY = function() return "Find the water buckets near the pond"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_1].DISPLAY = function() return "Water the daffodils in Leri's yard"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_2].DISPLAY = function() return "Water the daffodils next to the beehives, near the butcher shop"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_3].DISPLAY = function() return "Water the daffodils near the stable-master"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_4].DISPLAY = function() return "Water the daffodils in front of Delyth Saethur's smial"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_5].DISPLAY = function() return "Water the daffodils by the oven"; end
QG_SPRING[QG_SPRING_INDEX.WELL_WATERED_BLOOMS_END].DISPLAY = function() return TurnInTo("Well-watered Blooms", "Leri Grudd"); end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_PICKUP].DISPLAY = function() return TakeFrom("Family Feast", "Rosentyl Flutch"); end;
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_LAMB].DISPLAY = function() return "Collect a package of lamb meat"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_CARROTS].DISPLAY = function() return "Collect carrots"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_POTATOES].DISPLAY = function() return "Collect potatoes"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_LEEKS_TALK].DISPLAY = function() return "Talk to Bortho Bishel, the Provisioner's Assistant"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_LEEKS].DISPLAY = function() return "Collect leeks"; end
QG_SPRING[QG_SPRING_INDEX.FAMILY_FEAST_END].DISPLAY = function() return TurnInTo("Family Feast", "Rosentyl Flutch"); end

-- What is the difference between _QUICK_GUIDE_PROGRESS and _QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS?

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_PROGRESS[SPRING] = {
    ["Daffodils picked %((%d+)/(%d+)%)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PICKED;
    ["Daffodils planted %((%d+)/(%d+)%)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PLANTED;
    ["Banners placed %((%d+)/(%d+)%)"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PLACED;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_NEW_QUEST_STRINGS[SPRING] = {
    ["New Quest: A Taste of Spring"] = QG_SPRING_INDEX.A_TASTE_OF_SPRING_PICKUP;
    ["New Quest: Daffodil Days (Daily)"] = QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_PICKUP;
    ["New Quest: The Gift of Spring"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_PICKUP;
    ["New Quest: Promoting Pie"] = QG_SPRING_INDEX.PROMOTING_PIE_PICKUP;
    ["New Quest: Flower Envy"] = QG_SPRING_INDEX.FLOWER_ENVY_PICKUP;
    ["New Quest: Springtime's Colours"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_PICKUP;
    ["New Quest: The Musicians' Misfortune"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_PICKUP;
    ["New Quest: Stretched Too Thin"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PICKUP;
    ["New Quest: Family Feast"] = QG_SPRING_INDEX.FAMILY_FEAST_PICKUP;
    ["New Quest: Well-watered Blooms"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_PICKUP;
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_COMPLETED_QUEST_STRINGS[SPRING] = {
    ["Completed:\nA Taste of Spring\n"] = QG_SPRING_INDEX.A_TASTE_OF_SPRING_END;
    ["Completed:\nDaffodil Days (Daily)\n"] = QG_SPRING_INDEX.DAFFODIL_DAYS_DAILY_END;
    ["Completed:\nThe Gift of Spring\n"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_END;
    ["Completed:\nPromoting Pie\n"] = QG_SPRING_INDEX.PROMOTING_PIE_END;
    ["Completed:\nFlower Envy\n"] = QG_SPRING_INDEX.FLOWER_ENVY_END;
    ["Completed:\nSpringtime's Colours\n"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_END;
    ["Completed:\nThe Musicians' Misfortune\n"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_END;
    ["Completed:\nStretched Too Thin\n"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_END;
    ["Completed:\nFamily Feast\n"] = QG_SPRING_INDEX.FAMILY_FEAST_END;
    ["Completed:\nWell-watered Blooms\n"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_END;

};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_QUEST_OBJECTIVE_STRINGS[SPRING] = {
    ["Daffodils picked (8/8)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PICKED;
    ["Daffodils planted (8/8)"] = QG_SPRING_INDEX.THE_GIFT_OF_SPRING_DAFFODILS_PLANTED;
    ["Fliers handed out (1/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_1;
    ["Fliers handed out (2/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_2;
    ["Fliers handed out (3/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_3;
    ["Fliers handed out (4/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_4;
    ["Fliers handed out (5/5)"] = QG_SPRING_INDEX.PROMOTING_PIE_FLIER_5;
    ["Prized daffodil bulbs collected!"] = QG_SPRING_INDEX.FLOWER_ENVY_BULB_COLLECTED;
    ["Banners placed (6/6)"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PLACED;
    ["The fiddle has been found"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FIDDLE;
    ["The bagpipes have been found"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BAGPIPES;
    ["The flute has been found"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_FLUTE;
    ["The lute has been found"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_LUTE;
    ["The bodhran has been found"] = QG_SPRING_INDEX.THE_MUSICIANS_MISFORTUNE_BODHRAN;
    ["Packages delivered (1/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_1;
    ["Packages delivered (2/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_2;
    ["Packages delivered (3/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_3;
    ["Packages delivered (4/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_4;
    ["Packages delivered (5/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_5;
    ["Packages delivered (6/6)"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_PACKAGE_6;
    ["Lamb meat collected"] = QG_SPRING_INDEX.FAMILY_FEAST_LAMB;
    ["Carrots collected"] = QG_SPRING_INDEX.FAMILY_FEAST_CARROTS;
    ["Potatoes collected"] = QG_SPRING_INDEX.FAMILY_FEAST_POTATOES;
    ["Leeks collected"] = QG_SPRING_INDEX.FAMILY_FEAST_LEEKS;
    ["Water buckets found!"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_FOUND;
    ["Watered!"] = { -- NAME is only used for debugging purposes.
        [1] = { ["NAME"] = "Watered! 1"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_1; };
        [2] = { ["NAME"] = "Watered! 2"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_2; };
        [3] = { ["NAME"] = "Watered! 3"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_3; };
        [4] = { ["NAME"] = "Watered! 4"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_4; };
        [5] = { ["NAME"] = "Watered! 5"; ["INDEX"] = QG_SPRING_INDEX.WELL_WATERED_BLOOMS_WATER_5; };
    };
};

_G.CubePlugins.FestivalBuddyII._QUICK_GUIDE_TARGETS[SPRING] = {
    [1] = { ["NAME"] = "Welduth Lhush"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_1; };
    [2] = { ["NAME"] = "Packaged Lamb"; ["INDEX"] = QG_SPRING_INDEX.STRETCHED_TOO_THIN_LAMB; };
    [3] = { ["NAME"] = "Gloron Magimrud"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_2; };
    [4] = { ["NAME"] = "Bortho Bishel"; ["INDEX"] = QG_SPRING_INDEX.FAMILY_FEAST_LEEKS_TALK; };
    [5] = { ["NAME"] = "Daffodil Days Banners"; ["INDEX"] = QG_SPRING_INDEX.SPRINGTIMES_COLOURS_BANNERS_PICKED_UP; };
    [6] = { ["NAME"] = "Gloron Magimrud"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_3; };
    [7] = { ["NAME"] = "Welduth Lhush"; ["INDEX"] = QG_SPRING_INDEX.FLOWER_ENVY_TALK_4; };
};
