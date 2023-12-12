
-- Quest strings

-- ["STRINGNAME"] = {["ENGLISH"] = ""; ["FRENCH"] = ""; ["GERMAN"] = ""; };
-- \n = new line

_QUESTSTRINGS = {

    -- SPRING --------------------------------------------------------------------------------------------------
    [SPRING] = {
        -- Festival maze map coordinates
        -- Add an entry to the quest-level MAP to override.
        ["MAP"] = {
            name = {
                ["ENGLISH"] = "Hedge Maze Map";
                ["FRENCH"] = "Hedge Maze Map";
                ["GERMAN"] = "Hedge Maze Map";
            };
            cornerCoordinates = {
                west = -50.8718,
                north = -24.32345,
                east = -49.91255,
                south = -25.2614
            };
            defaultImage = _IMAGES[SPRING].MAZEMAP;
        };

        ["SHREWLEISURELY"] = {
            ["STRING"] = {
                ["ENGLISH"] =  "Drive away 10 pesky shrews\nCan be completed across numerous rounds";
                ["FRENCH"] =  "Ecrasez 10 musaraignes\nPeut \195\170tre compl\195\169t\195\169 en plusieurs manches";
                ["GERMAN"] =  "Drive away 10 pesky shrews\nCan be completed across numerous rounds";
            };

            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Boots of Quite-imaginable Power";};
                    [2] = {["TYPE"]="Item";["NAME"]="Enormous Boots";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Bottes de puissance tout \195\160 fait commensurable";};
                    [2] = {["TYPE"]="Item";["NAME"]="Bottes \195\169normes";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Stiefel von gut vorstellbarer Macht";};
                    [2] = {["TYPE"]="Item";["NAME"]="Riesige Stiefel";};
                };
            };
        };

        ["SHREWPRACTICED"] = {
            ["STRING"] = {
                ["ENGLISH"] =  "Drive away 10 pesky shrews before the end of the round";
                ["FRENCH"] =  "Ecrasez 10 musaraignes avant la fin de la manche";
                ["GERMAN"] =  "Drive away 10 pesky shrews before the end of the round";
            };

            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Boots of Quite-imaginable Power";};
                    [2] = {["TYPE"]="Item";["NAME"]="Enormous Boots";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Bottes de puissance tout \195\160 fait commensurable";};
                    [2] = {["TYPE"]="Item";["NAME"]="Bottes \195\169normes";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Stiefel von gut vorstellbarer Macht";};
                    [2] = {["TYPE"]="Item";["NAME"]="Riesige Stiefel";};
                };
            };
        };

        ["SHREWELITE"] = {
            ["STRING"] = {
                ["ENGLISH"] =  "Before the end of the round:\n\n1) Drive away 10 pesky shrews\n2) Plant 5 seedlings in mounds of soil";
                ["FRENCH"] =  "Avant la fin de la manche:\n\n1) Ecrasez 10 musaraignes\n2) Plantez 5 graines dans les tas de terreau";
                ["GERMAN"] =  "Before the end of the round:\n\n1) Drive away 10 pesky shrews\n2) Plant 5 seedlings in mounds of soil";
            };

            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Boots of Quite-imaginable Power";};
                    [2] = {["TYPE"]="Item";["NAME"]="Enormous Boots";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Bottes de puissance tout \195\160 fait commensurable";};
                    [2] = {["TYPE"]="Item";["NAME"]="Bottes \195\169normes";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Stiefel von gut vorstellbarer Macht";};
                    [2] = {["TYPE"]="Item";["NAME"]="Riesige Stiefel";};
                };
            };
        };

        ["SHREWENORMOUS"] = {
            ["STRING"] = {
                ["ENGLISH"] =  "Drive away the enormous shrew";
                ["FRENCH"] =  "Ecrasez la musaraigne gigantesque";
                ["GERMAN"] =  "Drive away the enormous shrew";
            };

            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Boots of Quite-imaginable Power";};
                    [2] = {["TYPE"]="Item";["NAME"]="Enormous Boots";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Bottes de puissance tout \195\160 fait commensurable";};
                    [2] = {["TYPE"]="Item";["NAME"]="Bottes \195\169normes";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Stiefel von gut vorstellbarer Macht";};
                    [2] = {["TYPE"]="Item";["NAME"]="Riesige Stiefel";};
                };
            };
        };

        ["FISTFULFLOWERS"] = {
            ["STRING"] = {
                ["ENGLISH"] =  "Collect as many flowers as you can in one hour.\n\n<rgb=#ffc000>Marigolds</rgb> can be found north of Michel Delving\n<rgb=#f06ee0>Violets</rgb> can be found west of Bree\n<rgb=#bbfffb>Primroses</rgb> can be found west of Celondim\n\nThese are found in patches of flowers";
                ["FRENCH"] =  "Rammassez autant de fleurs que vous le pouvez en une heure.\n\nLes <rgb=#ffc000>Soucis</rgb> se trouvent au nord de Grand'Cave\nLes <rgb=#f06ee0>Violettes</rgb> se trouvent \195\160 l'ouest de Bree\nLes <rgb=#bbfffb>Primev\195\168res</rgb> se trouvent \195\160 l'ouest de Celondim\n\nElles se trouvent dans les parterres de fleurs.";
                ["GERMAN"] =  "Collect as many flowers as you can in one hour.\n\n<rgb=#ffc000>Marigolds</rgb> can be found north of Michel Delving\n<rgb=#f06ee0>Violets</rgb> can be found west of Bree\n<rgb=#bbfffb>Primroses</rgb> can be found west of Celondim\n\nThese are found in patches of flowers";
            };
        };

        ["DISORIENTATION"] = {
            ["STRING"] = {
                ["ENGLISH"] = "";
                ["FRENCH"] = "";
                ["GERMAN"] = "";
            };
        
            ["MAP"] = {
                image = _IMAGES[SPRING].MAZEMAP;
            };
        };
        
        ["THE_CHICKEN_DASH"] = {
            ["STRING"] = {
                ["ENGLISH"] = "";
                ["FRENCH"] = "";
                ["GERMAN"] = "";
            };
        
            ["MAP"] = {
                image = _IMAGES[SPRING].MAZEMAP;
            };
        };
        
        ["THE_GREEN_CHALLENGE"] = {
            ["STRING"] = {
                ["ENGLISH"] = "";
                ["FRENCH"] = "";
                ["GERMAN"] = "";
            };
        
            ["MAP"] = {
                image = _IMAGES[SPRING].MAZEMAP_KEG;
            };
        };
        
        ["THE_CLOVEN_TRACK"] = {
            ["STRING"] = {
                ["ENGLISH"] = "";
                ["FRENCH"] = "";
                ["GERMAN"] = "";
            };
        
            ["MAP"] = {
                image = _IMAGES[SPRING].MAZEMAP_MAIN;
            };
        };
        
        ["A_SPEEDY_ERRAND"] = {
            ["STRING"] = {
                ["ENGLISH"] = "";
                ["FRENCH"] = "";
                ["GERMAN"] = "";
            };
        
            ["MAP"] = {
                image = _IMAGES[SPRING].MAZEMAP_MAIN;
            };
        };
        
        ["A_FOOLS_ERRAND"] = {
            ["STRING"] = {
                ["ENGLISH"] = "";
                ["FRENCH"] = "";
                ["GERMAN"] = "";
            };
        
            ["MAP"] = {
                image = _IMAGES[SPRING].MAZEMAP_MAIN;
            };
        };
        
        ["MISPLACED_COMPANIONS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "";
                ["FRENCH"] = "";
                ["GERMAN"] = "";
            };
        
            ["MAP"] = {
                image = _IMAGES[SPRING].MAZEMAP_ELVES;
            };
        };
        
        ["A_LAUGH_AT_THE_LOST"] = {
            ["STRING"] = {
                ["ENGLISH"] = "";
                ["FRENCH"] = "";
                ["GERMAN"] = "";
            };
        
            ["MAP"] = {
                image = _IMAGES[SPRING].MAZEMAP_SIGNS;
            };
        };

        ["TERRIBLE_TWEENS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "";
                ["FRENCH"] = "";
                ["GERMAN"] = "";
            };

            ["MAP"] = {
                image = _IMAGES[SPRING].MAZEMAP;
            };
        };


    };

    -- SUMMER ------------------------------------------------------------------------------------------------------
    [SUMMER] = {

        ["TOOMUCHFESTIVAL"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Find all 5 of Foxglove's items. They can all be found about the festival area.\n\nTeapot - 29.7s, 71.5w \nParasol - 30.2s, 71.5w \nWine - 29.9s, 71.1w \nBook - 29.7s, 71.2w \nTwine - 29.9s, 71.5w \n";
                ["FRENCH"] = "Find all 5 of Foxglove's items. They can all be found about the festival area.\n\nTeapot - 29.7s, 71.5w \nParasol - 30.2s, 71.5w \nWine - 29.9s, 71.1w \nBook - 29.7s, 71.2w \nTwine - 29.9s, 71.5w \n";
                ["GERMAN"] = "Finde alle 5 Gegenstände für Fuchsia. \n\nTeekanne - 29.7s, 71.5w \nSchirm - 30.2s, 71.5w \nWein - 29.9s, 71.1w \nBuch - 29.7s, 71.2w \nZwirn - 29.9s, 71.5w\n";
            };
        };

        ["GOINGHUNGRY"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Find all 5 of Melilot's items.\n\nPorridge - 29.4s, 71.4w \nCheese - 29.7s, 72.0w \nBread - 30.9s, 71.2w \nEggs - 30.4s, 71.4w \nMushrooms - 29.4s, 70.5w \n";
                ["FRENCH"] = "Find all 5 of Melilot's items.\n\nPorridge - 29.4s, 71.4w \nCheese - 29.7s, 72.0w \nBread - 30.9s, 71.2w \nEggs - 30.4s, 71.4w \nMushrooms - 29.4s, 70.5w \n";
                ["GERMAN"] = "Finde alle 5 Gegenstände für Melilot.\n\nHaferbrei - 29.4s, 71.4w \nKäse - 29.7s, 72.0w \nBrot - 30.9s, 71.2w \nEier - 30.4s, 71.4w \nPilze - 29.4s, 70.5w \n";
            };
        };

        ["BELONGINGS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Find all 5 of Mosco's items.\n\nLucky Bait - 30.5s, 70.1w \nFishing Pole - 31.3s, 69.9w \nHoe - 31.0s, 70.0w \nCloak - 31.3s, 69.2w \nElevenses Meal - 30.7s, 69.6w \n";
                ["FRENCH"] = "Find all 5 of Mosco's items.\n\nLucky Bait - 30.5s, 70.1w \nFishing Pole - 31.3s, 69.9w \nHoe - 31.0s, 70.0w \nCloak - 31.3s, 69.2w \nElevenses Meal - 30.7s, 69.6w \n";
                ["GERMAN"] = "Finde alle 5 Gegenstände für Mosco.\n\nGlücksköder - 30.5s, 70.1w \nAngelrute - 31.3s, 69.9w \nKorb - 31.0s, 70.0w \nUmhang - 31.3s, 69.2w \nImbiss - 30.7s, 69.6w \n";
            };
        };

        ["STOCKINGPOND"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1) The best place to catch amberjacks is inside Thorin's Hall near the waterfall.\n\n2) The best place to catch luillim is in Celondim by the docks.\n\n3) The best place to catch drum is near Bree, at the pond by Pierson's Farm (33.0s, 49.8w).";
                ["FRENCH"] = "1) The best place to catch amberjacks is inside Thorin's Hall near the waterfall.\n\n2) The best place to catch luillim is in Celondim by the docks.\n\n3) The best place to catch drum is near Bree, at the pond by Pierson's Farm (33.0s, 49.8w).";
                ["GERMAN"] = "1) Der beste Platz für amberjacks ist in Thorins Halle nahe des Wasserfalls.\n\n2) Der beste Platz für Luillim ist am Hafen in Celondim.\n\n3) Der beste Platz für Trommelfische ist südlich von Bree, am Teich (33.0s, 49.8w).";
            };
        };

        ["FORGOTTENERRANDS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Find all 5 of Ambi's items.\n\nRed Jar - auction room by Farmann \nGreen Jar - vault by Escrow Broker Tuki \nBlue Bottle - main hall by minstrel trainer \nNote - eastern slope to the tavern \nPack - next to the bridge by the waterfall";
                ["FRENCH"] = "Find all 5 of Ambi's items.\n\nRed Jar - auction room by Farmann \nGreen Jar - vault by Escrow Broker Tuki \nBlue Bottle - main hall by minstrel trainer \nNote - eastern slope to the tavern \nPack - next to the bridge by the waterfall";
                ["GERMAN"] = "Finde alle 5 Gegenstände für Ambi.\n\nRote Vase - Auktionshalle nähe Farmann \nGrüne Vase - Vermögensverwahrer Tuki \nBlaue Flasche - Haupthalle beim Barden-Trainer \nNotiz - östliche Rampe zur Kneipe\nRucksack - an der Brücke beim Wasserfall";
            };
        };

        ["WAGER"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Find all 5 of Skalli's items.\n\nThe items are all easily found within the race arena.";
                ["FRENCH"] = "Find all 5 of Skalli's items.\n\nThe items are all easily found within the race arena.";
                ["GERMAN"] = "Finde alle 5 Gegenstände für Skalli.\n\nGegenstände befinden sich alle in der Renn-Arena.";
            };
        };

        ["MISSINGTHINGS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Find all 5 of Lalfor's items about Duillon.\n\nGoblet - 24.1s, 93.2w \nJewellery Box - 23.9s, 93.0w \nBlue Book - 23.8s, 92.9w \nBrown Book - 23.8s, 92.7w \nBundle of Books - 23.9s, 92.7w \n";
                ["FRENCH"] = "Find all 5 of Lalfor's items about Duillon.\n\nGoblet - 24.1s, 93.2w \nJewellery Box - 23.9s, 93.0w \nBlue Book - 23.8s, 92.9w \nBrown Book - 23.8s, 92.7w \nBundle of Books - 23.9s, 92.7w \n";
                ["GERMAN"] = "Finde alle 5 Gegenstände für Lalfor um Duillon.\n\nKelch - 24.1s, 93.2w \nJuwelenkiste - 23.9s, 93.0w \nblaues Buch - 23.8s, 92.9w \nbraunes Buch - 23.8s, 92.7w \nBücherbündel - 23.9s, 92.7w \n";
            };
        };

    };


    -- HARVESTMATH -----------------------------------------------------------------------------------------------------
    [HARVESTMATH]= {
        -- Festival maze map coordinates
        -- Add an entry to the quest-level MAP to override.
        ["MAP"] = {
            name = {
                ["ENGLISH"] = "Tanglecorn Map";
                ["FRENCH"] = "Tanglecorn Map";
                ["GERMAN"] = "Knäuelkornkarte";
            };
            cornerCoordinates = {
                west = -113.9133,
                north = 71.4280,
                east = -113.3603,
                south = 70.8800,
            };
            defaultImage1 = _IMAGES[HARVESTMATH].TANGLECORN_1_CORDS_AND_GOURDS;
            defaultImage2 = _IMAGES[HARVESTMATH].TANGLECORN_2_CORDS_AND_GOURDS;
            defaultImage3 = _IMAGES[HARVESTMATH].TANGLECORN_3_CORDS_AND_GOURDS;
            defaultImage4 = _IMAGES[HARVESTMATH].TANGLECORN_4_CORDS_AND_GOURDS;
            defaultImage5 = _IMAGES[HARVESTMATH].TANGLECORN_5_CORDS_AND_GOURDS;
        };

        ["TROVESDUILLOND"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Troves and Trickery -- Duillond \n\nPerform emotes on selected targets: \n24.6S, 92.4W = /look \n23.9S, 92.5W = /hail \n24.1S, 93.2W = /eat \n24.1S, 93.0W = /dance \n\nLocations and emotes from http://casualstrolltomordor.com";
                ["FRENCH"] = "Tours et surprises -- Duillond \n\nLancer les \195\169motes sur les cibles: \n24.6S, 92.4W = /regarder \n23.9S, 92.5W = /bonjour \n24.1S, 93.2W = /manger \n24.1S, 93.0W = /danser \n\nLocations and emotes from http://casualstrolltomordor.com";
                ["GERMAN"] = "Troves and Trickery -- Duillond \n\nPerform emotes on selected targets: \n24.6S, 92.4W = /look \n23.9S, 92.5W = /hail \n24.1S, 93.2W = /eat \n24.1S, 93.0W = /dance \n\nLocations and emotes from http://casualstrolltomordor.com";
            };
            ["EMOTES"] = {
                ["ENGLISH"] = {"/look","/hail","/eat","/dance"};
                ["FRENCH"] = {"/regarder","/bonjour","/manger","/danser"};
                ["GERMAN"] = {"/schauen","/gruß","/essen","/tanzen"};
            };
        };

        ["TROVESTHORINS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Troves and Trickery -- Thorin's Hall \n\nPerform emotes on selected targets: \nLabourer in corridor near tavern = /whistle \nDwarf in Maker's Hall = /drink \nDwarf in Forging Hall = /flex \nDwarf in Main Hall by Hunter Trainer = /mock \n\nLocations and emotes from http://casualstrolltomordor.com";
                ["FRENCH"] = "Tours et surprises -- Palais de Thorin \n\nLancer les \195\169motes sur les cibles: \nDans le corridor vers la taverne = /siffler \nDans la galerie des artisans = /boire \nDans la salle des forges = /biceps \nDans le hall vers le mentor chasseur = /railler \n\nLocations and emotes from http://casualstrolltomordor.com";
                ["GERMAN"] = "Troves and Trickery -- Thorin's Hall \n\nPerform emotes on selected targets: \nLabourer in corridor near tavern = /whistle \nDwarf in Maker's Hall = /drink \nDwarf in Forging Hall = /flex \nDwarf in Main Hall by Hunter Trainer = /mock \n\nLocations and emotes from http://casualstrolltomordor.com";
            };
            ["EMOTES"] = {
                ["ENGLISH"] = {"/whistle","/drink","/flex","/mock"};
                ["FRENCH"] = {"/siffler","/boire","/biceps","/railler"};
                ["GERMAN"] = {"/pfeifen","/trinken","/muskelspiel","/verspotten"};
            };
        };

        ["TROVESSHIRE"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Troves and Trickery -- the Shire \n\nPerform emotes on selected targets: \n30.7S, 71.1W = /shiver \n31.0S, 70.9W = /tantrum \n31.5S, 71.4W = /burp \n29.5S, 71.2W = /pick \n\nLocations and emotes from http://casualstrolltomordor.com";
                ["FRENCH"] = "Tours et surprises -- La Comt\195\169 \n\nLancer les  \195\169motes sur les cibles: \n30.7S, 71.1W = /frissonner \n31.0S, 70.9W = /caprice \n31.5S, 71.4W = /rot \n29.5S, 71.2W = /d\195\169manger \n\nLocations and emotes from http://casualstrolltomordor.com";
                ["GERMAN"] = "Troves and Trickery -- the Shire \n\nPerform emotes on selected targets: \n30.7S, 71.1W = /shiver \n31.0S, 70.9W = /tantrum \n31.5S, 71.4W = /burp \n29.5S, 71.2W = /pick \n\nLocations and emotes from http://casualstrolltomordor.com";
            };
            ["EMOTES"] = {
                ["ENGLISH"] = {"/shiver","/tantrum","/burp","/pick"};
                ["FRENCH"] = {"/frissonner","/caprice","/rot","/démanger"};
                ["GERMAN"] = {"/erschauern","/wutanfall","/rülpsen","/pokratzen"};
            };
        };

        ["TROVESBREE"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Troves and Trickery -- Bree \n\nPerform emotes on selected targets: \n30.6S, 52.0W = /scold \n30.9S, 52.6W = /crazy \n31.9S, 50.6W = /no \n29.9S, 51.3W = /whippitydo \n\nLocations and emotes from http://casualstrolltomordor.com";
                ["FRENCH"] = "Tours et surprises -- Bree \n\nLancer les \195\169motes sur les cibles: \n30.6S, 52.0W = /gronder \n30.9S, 52.6W = /fou \n31.9S, 50.6W = /non \n29.9S, 51.3W = /youpi \n\nLocations and emotes from http://casualstrolltomordor.com";
                ["GERMAN"] = "Troves and Trickery -- Bree \n\nPerform emotes on selected targets: \n30.6S, 52.0W = /scold \n30.9S, 52.6W = /crazy \n31.9S, 50.6W = /no \n29.9S, 51.3W = /whippitydo \n\nLocations and emotes from http://casualstrolltomordor.com";
            };
            ["EMOTES"] = {
                ["ENGLISH"] = {"/scold","/crazy","/no","/whippitydo"};
                ["FRENCH"] = {"/gronder","/fou","/non","/youpi"};
                ["GERMAN"] = {"/ausschimpfen","/verrückt","/nein","/ohwietoll"};
            };
        };

        -- Wistmead
        -- todo: localize these new quests:
        ["A_WINDY_WALK_THROUGH_WISTMEAD"] = {
            ["STRING"] = {
                ["ENGLISH"] = "(One-time quest to unlock the rest of the Wistmead quests)\n1. Pick up quest from Walaric Goldworthy in Wistmead.\n2. Talk to Ermentrude Haybank next to the maze.\n3. Talk to Halinard Bunce by the tents.\n4. Talk to Iris Tunnelly near Walaric.\n1. Return to Walaric."
            };
            ["IMAGE"] = _IMAGES[HARVESTMATH].A_WINDY_WALK_THROUGH_WISTMEAD;
        };
        ["CHALLENGING_WHEAT"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Navigate the maze quickly, but don't cheat!";
            };

            ["MAP"] = {
                ["image1"] = _IMAGES[HARVESTMATH].TANGLECORN_1_CHALLENGE;
                ["image2"] = _IMAGES[HARVESTMATH].TANGLECORN_2_CHALLENGE;
                ["image3"] = _IMAGES[HARVESTMATH].TANGLECORN_3_CHALLENGE;
                ["image4"] = _IMAGES[HARVESTMATH].TANGLECORN_4_CHALLENGE;
                ["image5"] = _IMAGES[HARVESTMATH].TANGLECORN_5_CHALLENGE;
            };
        };
        ["CHEAT_OF_THE_WHEAT"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Navigate the maze quickly! (You'll need to cheat!)";
            };

            ["MAP"] = {
                ["image1"] = _IMAGES[HARVESTMATH].TANGLECORN_1_CHEAT;
                ["image2"] = _IMAGES[HARVESTMATH].TANGLECORN_2_CHEAT;
                ["image3"] = _IMAGES[HARVESTMATH].TANGLECORN_3_CHEAT;
                ["image4"] = _IMAGES[HARVESTMATH].TANGLECORN_4_CHEAT;
                ["image5"] = _IMAGES[HARVESTMATH].TANGLECORN_5_CHEAT;
            };
        };
        ["GATHERING_GOURDS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Find 10 gourds in the maze! (No time limit.)";
            };
            ["MAP"] = {
                ["image1"] = _IMAGES[HARVESTMATH].TANGLECORN_1_CORDS_AND_GOURDS;
                ["image2"] = _IMAGES[HARVESTMATH].TANGLECORN_2_CORDS_AND_GOURDS;
                ["image3"] = _IMAGES[HARVESTMATH].TANGLECORN_3_CORDS_AND_GOURDS;
                ["image4"] = _IMAGES[HARVESTMATH].TANGLECORN_4_CORDS_AND_GOURDS;
                ["image5"] = _IMAGES[HARVESTMATH].TANGLECORN_5_CORDS_AND_GOURDS;
            };
        };
        ["PREVENTING_A_MURDER"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Find 10 cords in the maze! (No time limit.)";
            };
            ["MAP"] = {
                ["image1"] = _IMAGES[HARVESTMATH].TANGLECORN_1_CORDS_AND_GOURDS;
                ["image2"] = _IMAGES[HARVESTMATH].TANGLECORN_2_CORDS_AND_GOURDS;
                ["image3"] = _IMAGES[HARVESTMATH].TANGLECORN_3_CORDS_AND_GOURDS;
                ["image4"] = _IMAGES[HARVESTMATH].TANGLECORN_4_CORDS_AND_GOURDS;
                ["image5"] = _IMAGES[HARVESTMATH].TANGLECORN_5_CORDS_AND_GOURDS;
            };
        };
        -- Haunted Burrow:
        ["A_CELLAR_DOOR_APPEARS"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
(Start of one-time quest chain to unlock the Haunted Burrow)

1. Pick up quest from Opal Goodbody.
2. Talk to Lobelia Sackville-Baggins.
3. Talk to Gaffer Gamgee.

Next quest: Bilbo's Letter]];
            };
        };
        ["BILBOS_LETTER"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
(2nd of one-time quest chain to unlock the Haunted Burrow)

1. Pick up quest from Gaffer Gamgee.
2. Ask the Gaffer for Bilbo's letter.
3. Bring Bilbo's letter to Lobelia.
4. Prod Lobelia for information x4.

Next quest: The Haunted Burrow]];
            };
        };
        ["THE_HAUNTED_BURROW"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
(Final of one-time quest chain to unlock the Haunted Burrow)
1. Pick up quest from Lobelia Sackville-Baggins.
2. Talk to Lobelia inside the Haunted Burrow.
3. Talk to Opal Goodbody.]];
            };
        };

        ["RATTLING_IN_THE_HAUNTED_BURROW"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
1. Use chain in the Attic, defeat the 'skeleton'.
Return to Polo Puddifoot.]];
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Harvestmath/Rattling in the Haunted Burrow.tga";
        };
        ["ROARING_MAW_IN_THE_HAUNTED_BURROW"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
1. Use honey in the Cobwebbed Wing, defeat the 'bear'.
Return to Polo Puddifoot.]];
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Harvestmath/Roaring Maw in the Haunted Burrow.tga";
        };
        ["WAILING_IN_THE_HAUNTED_BURROW"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
1. Use candle in the Creeping Wing, defeat the 'ghost'.
Return to Polo Puddifoot.]];
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Harvestmath/Wailing in the Haunted Burrow.tga";
        };

        ["A_RIDDLE_IN_A_BOTTLE"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
1. Go inside and use the white bottle.
2. Go to Cobwebbed Wing, use the blue bottle.
3. Go to Creeping Wing, use the orange bottle.
4. Go to Basement, use the blue bottle.
Return to Algrim Goodbody.]];
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Harvestmath/A Riddle in a Bottle.tga";
        };

        ["A_STROLL_THROUGH_THE_HAUNTED_BURROW"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
1. Get the proof in the Attic.
2. Get the proof in the Cobwebbed Wing.
3. Get the proof in the Creeping Wing.
4. Get the proof in the Basement.
Return to Poppy Cotton.
]];
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Harvestmath/A Stroll Through the Haunted Burrow.tga";
        };
        ["A_RACE_THROUGH_THE_HAUNTED_BURROW"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
1. Get the proof in the Attic.
2. Get the proof in the Cobwebbed Wing.
3. Get the proof in the Creeping Wing.
4. Get the proof in the Basement.
Return to Poppy Cotton.
]];
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Harvestmath/A Stroll Through the Haunted Burrow.tga";
        };

        ["THE_GREAT_HOBBIT_RESCUE"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
1. Find hobbit in Attic.
2. Find hobbit in Cobwebbed Wing.
3. Find hobbit in Basement.
4. Find hobbit near Bag End in Main Cellar.
5. Find hobbit in middle of Main Cellar.
6. Find hobbit near Main Cellar entrance.
Return to May Gamgee.
]];
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Harvestmath/The Great Hobbit Rescue.tga";
        };
        ["VALUABLES_GONE_ASTRAY"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
1. Get the valuable outside the Attic.
2. Get the valuable in the Attic.
3. Get the valuable in the Cobwebbed Wing.
4. Get the valuable in the Creeping Wing.
5. Get the valuable in the Basement.
Return to Holfast Burrows.
]];
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Harvestmath/Valuables Gone Astray.tga";
        };

        ["THE_ALE_ASSOCIATION_A_GAME_OF_HOBBIT_HARRYING"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
1. Scare hobbit in Attic.
2. Scare hobbit in Cobwebbed Wing.
3. Scare hobbit in Basement.
4. Scare hobbit near Bag End in Main Cellar.
5. Scare hobbit in middle of Main Cellar.
6. Scare hobbit near Main Cellar entrance.
Return to May Gamgee.
]];
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Harvestmath/The Great Hobbit Rescue.tga";
        };
        ["THE_INN_LEAGUE_EXCAVATION"] = {
            ["STRING"] = {
                ["ENGLISH"] = [[
1. Collect treasured wine.
Return to Cora Brownlock.
]];
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Harvestmath/The Inn League Excavation.tga";
        };
    };

    -- YULE --------------------------------------------------------------------------------------------------------
    [YULE] = {
        ["THE_ABOMINABLE_SNOW_BEASTS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "<rgb=#FF0000>/cheer</rgb> at snowbeasts (select target).\n\nThe snowbeasts can be found in the lightly wooded area in the southeast corner of the map (12.2N, 93.6W). - casualstrolltomordor.com";
                ["FRENCH"] = "<rgb=#FF0000>/bravo</rgb> aux b\195\170tes des neiges (s\195\169lectionner la cible).\n\nLes b\195\170tes des neiges se trouvent dans le petit bois dans le coin sud-est de la carte (12.2N, 93.6W). - casualstrolltomordor.com";
                ["GERMAN"] = {"<rgb=#FF0000>/cheer</rgb> at snowbeasts (select target).\n\nThe snowbeasts can be found in the lightly wooded area in the southeast corner of the map (12.2N, 93.6W). - casualstrolltomordor.com"};
            };
            ["EMOTES"] = {
                ["ENGLISH"] = {"/cheer"};
                ["FRENCH"] = {"/bravo"};
                ["GERMAN"] = {"/jubeln"};
            };
        };

        ["THEATRE"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Whilst in the theatre, why not enjoy a special performance of the Curious Disappearance of Mad Baggins.\n\nMake sure you stock up on rotten fruit and flower petals before the performance to use when the actors perform.";
                ["FRENCH"] = "Pendant que vous \195\170tes au th\195\169\195\162tre, pourquoi ne pas essayez d'ex\195\169cuter une performance sp\195\169ciale dans L'\195\169trange disparition de Sacquet le fou.\n\nSoyez s\195\187r d'avoir fait votre stock de fruits et de p\195\169tales avant la performance pour les utilisez sur les acteurs.";
                ["GERMAN"] = "Whilst in the theatre, why not enjoy a special performance of the Curious Disappearance of Mad Baggins.\n\nMake sure you stock up on rotten fruit and flower petals before the performance to use when the actors perform.";
            };
            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Frostbluff Rotten Fruit";};
                    [2] = {["TYPE"]="Item";["NAME"]="Frostbluff Flower Petals";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Fruit pourri de Rivegel";};
                    [2] = {["TYPE"]="Item";["NAME"]="P\195\169tales de fleurs de Rivegel";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Verfaulte Früchte aus Frostfels";};
                    [2] = {["TYPE"]="Item";["NAME"]="Frostfels-Blütenblätter";};
                };
            };
        };

        ["VILLAIN"] = { -- Gandalf
            ["STRING"] = {
                ["ENGLISH"] = "Perform emotes when prompted - note you must have selected <rgb=#FF0000>'The Audience'</rgb> as your target";
                ["FRENCH"] = "Jouez les \195\169motes lorsque demand\195\169 - vous devez avoir s\195\169lectionn\195\169 <rgb=#FF0000>'Le Public'</rgb> en tant que cible";
                ["GERMAN"] = "Perform emotes when prompted - note you must have selected <rgb=#FF0000>'The Audience'</rgb> as your target";
            };
            ["EMOTES"] = {
                ["ENGLISH"] = {"/laugh","/shakefist","/rude"};
                ["FRENCH"] = {"/rire","/poing","/ricaner"};
                ["GERMAN"] = {"/lachen","/faustschütteln","/unhöflich"};
            };
            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Frostbluff Rotten Fruit";};
                    [2] = {["TYPE"]="Item";["NAME"]="Frostbluff Flower Petals";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Fruit pourri de Rivegel";};
                    [2] = {["TYPE"]="Item";["NAME"]="P\195\169tales de fleurs de Rivegel";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Verfaulte Früchte aus Frostfels";};
                    [2] = {["TYPE"]="Item";["NAME"]="Frostfels-Blütenblätter";};
                };
            };
        };

        ["EXTRA"] = { -- Partygoer
            ["STRING"] = {
                ["ENGLISH"] = "Perform emotes when prompted - note you must have selected <rgb=#FF0000>'The Audience'</rgb> as your target";
                ["FRENCH"] = "Jouez les \195\169motes lorsque demand\195\169 - vous devez avoir s\195\169lectionn\195\169 <rgb=#FF0000>'Le Public'</rgb> en tant que cible";
                ["GERMAN"] = "Perform emotes when prompted - note you must have selected <rgb=#FF0000>'The Audience'</rgb> as your target";
            };
            ["EMOTES"] = {
                ["ENGLISH"] = {"/cheer","/dance","/clap"};
                ["FRENCH"] = {"/bravo","/danser","/applaudir"};
                ["GERMAN"] = {"/jubeln","/tanzen","/klatschen"};
            };
            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Frostbluff Rotten Fruit";};
                    [2] = {["TYPE"]="Item";["NAME"]="Frostbluff Flower Petals";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Fruit pourri de Rivegel";};
                    [2] = {["TYPE"]="Item";["NAME"]="P\195\169tales de fleurs de Rivegel";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Verfaulte Früchte aus Frostfels";};
                    [2] = {["TYPE"]="Item";["NAME"]="Frostfels-Blütenblätter";};
                };
            };
        };

        ["PROTAGONIST"] = { -- Bilbo
            ["STRING"] = {
                ["ENGLISH"] = "Perform emotes when prompted - note you must have selected <rgb=#FF0000>'The Audience'</rgb> as your target";
                ["FRENCH"] = "Jouez les \195\169motes lorsque demand\195\169 - vous devez avoir s\195\169lectionn\195\169 <rgb=#FF0000>'Le Public'</rgb> en tant que cible";
                ["GERMAN"] = "Perform emotes when prompted - note you must have selected <rgb=#FF0000>'The Audience'</rgb> as your target";
            };
            ["EMOTES"] = {
                ["ENGLISH"] = {"/bow","/talk","/wave"};
                ["FRENCH"] = {"/révérence","/discuter","/coucou"};
                ["GERMAN"] = {"/verbeugen","/sprechen","/winken"};
            };
            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Frostbluff Rotten Fruit";};
                    [2] = {["TYPE"]="Item";["NAME"]="Frostbluff Flower Petals";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Fruit pourri de Rivegel";};
                    [2] = {["TYPE"]="Item";["NAME"]="P\195\169tales de fleurs de Rivegel";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Verfaulte Früchte aus Frostfels";};
                    [2] = {["TYPE"]="Item";["NAME"]="Frostfels-Blütenblätter";};
                };
            };
        };

        ["STUFFING_THE_STUFFED"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Gather ingredients for the feast\n\nCollect Fresh winterberries - near cabin 12.7N, 93.4W\ncollect eggs from pampered chickens - Cluckland 13.3N, 94.6W\ncollect pampered mushrooms - in greenhouse 11.8N, 94.3W\nmake fresh bread at the servants oven - 12.4N, 95.6W\n\nCo-ordinates from casualstrolltomordor.com";
                ["FRENCH"] = "R\195\169cup\195\169rez les ingr\195\169dients pour la f\195\170te\n\nCueillez des baies - vers le fort 12.7N, 93.4W\nRamassez des \197\147ufs pr\195\168s des poules - Terre de Cotte 13.3N, 94.6W\nRamassez de beaux champignons - dans la serre 11.8N, 94.3W\nFaites du pain au four des domestiques - 12.4N, 95.6W\n\nCo-ordinates from casualstrolltomordor.com";
                ["GERMAN"] = "Gather ingredients for the feast\n\nCollect Fresh winterberries - near cabin 12.7N, 93.4W\ncollect eggs from pampered chickens - Cluckland 13.3N, 94.6W\ncollect pampered mushrooms - in greenhouse 11.8N, 94.3W\nmake fresh bread at the servants oven - 12.4N, 95.6W\n\nCo-ordinates from casualstrolltomordor.com";
            };
        };

        ["EMPTY_KEG_EMERGENCY"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Deliver a keg to the Thirsty Patron without a Watcher seeing you.\n\nKegs can be found next to the servants oven.\n\nWith the keg, take the path opposite Nora Lewison towards Jack Mitford (third table in the 'Biggest Stomach of Them All' quest - <rgb=#FF0000>be careful as you approach as a Watcher patrols this corner</rgb>).\n\nAt Jack Mitford jump over the wall behind the table to deliver the keg to the Thirsy Patron below.";
                ["FRENCH"] = "Livrez le tonneau au Client Assoif\195\169 sans vous faire attraper par les gardes.\n\nLes tonneaux se trouvent \195\169 c\195\180t\195\169 du four de serviteur.\n\nAvec le tonneau, prendre le chemin face \195\160 Nora Lewison vers Jacques Passegu\195\169 (la troisi\195\168me table de la qu\195\170te 'Le plus gros estomac du monde' - <rgb=#FF0000>attention au garde qui patrouille dans le coin</rgb>).\n\nArriv\195\169 \195\160 Jacques Passegu\195\169 sauter le mur derri\195\168re les tables pour livrer le tonneau au Client Assoif\195\169 en dessous.";
                ["GERMAN"] = "Deliver a keg to the Thirsty Patron without a Watcher seeing you.\n\nKegs can be found next to the servants oven.\n\nWith the keg, take the path opposite Nora Lewison towards Jack Mitford (third table in the 'Biggest Stomach of Them All' quest - <rgb=#FF0000>be careful as you approach as a Watcher patrols this corner</rgb>).\n\nAt Jack Mitford jump over the wall behind the table to deliver the keg to the Thirsy Patron below.";
            };
        };

        ["THE_BIGGEST_STOMACH_OF_THEM_ALL"] = {
            ["STRING"] = {
                ["ENGLISH"] = "This is an eating race where you need to eat 5 things at each table before you can continue. Try to avoid eating bread and pies as they have the biggest debuffs.\n\n- Berries: -1% run speed (4m)\n- Mushrooms: -3% run speed (4m)\n- Eggs: -5% run speed (4m)\n- Pie: -10% run speed (4m)\n- Bread: -15% run speed (4m)\n- Mystery Drink: Removes all debuffs OR -60% run speed (20s)";
                ["FRENCH"] = "C'est une course de nourriture o\195\185 vous devez manger 5 choses par table avant de continuer. Essayez d'\195\169viter de manger du pain ou des tourtes car ils ont les plus gros debuffs.\n\n- Baies: -1% vitesse de course (4m)\n- Champignons: -3% vitesse de course (4m)\n- \197\146ufs: -5% vitesse de course (4m)\n- Tourte: -10% vitesse de course (4m)\n- Pain: -15% vitesse de course (4m)\n- Boisson Myst\195\168rieuse: Supprime tout les debuffs OU -60% vitesse de course (20s)";
                ["GERMAN"] = "This is an eating race where you need to eat 5 things at each table before you can continue. Try to avoid eating bread and pies as they have the biggest debuffs.\n\n- Berries: -1% run speed (4m)\n- Mushrooms: -3% run speed (4m)\n- Eggs: -5% run speed (4m)\n- Pie: -10% run speed (4m)\n- Bread: -15% run speed (4m)\n- Mystery Drink: Removes all debuffs OR -60% run speed (20s)";
            };
        };

    };

    -- ANNIVERSARY -------------------------------------------------------------------------------------------------------------------
    [ANNIVERSARY] = {
        ["MIGHTIESTBLOW_BASIC"] = {
            ["STRING"] = {
                ["ENGLISH"] = "This takes place in the Festival Arena at Thorin's Hall\n\nObjectives:\n-Knock <rgb=#FF0000>8</rgb> competitors out of the way.\n-You do not need to pick up the mug.\n-You will not fail if knocked out of the arena.\n\nContributes to the 'Mightiest Arm' deed.";
                ["FRENCH"] = "Cet \195\169v\195\168nement se passe dans l'ar\195\168ne du festival au Palais de Thorin\n\nObjectifs:\n-Ejectez <rgb=#FF0000>8</rgb> adversaires hors de l'ar\195\168ne.\n-Vous n'avez pas besoin d'attraper la chope.\n-Vous n'\195\169chouerez pas si vous \195\170tes \195\169ject\195\169 de l'ar\195\168ne.\n\nContribue \195\160 la prouesse 'Casseur'.";
                ["GERMAN"] = "This takes place in the Festival Arena at Thorin's Hall\n\nObjectives:\n-Knock <rgb=#FF0000>8</rgb> competitors out of the way.\n-You do not need to pick up the mug.\n-You will not fail if knocked out of the arena.\n\nContributes to the 'Mightiest Arm' deed.";
            };

            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Dwarf-club of Unimaginable Power";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Gourdin de nain";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Zwergenkeule der Unvorstellbaren Macht";};
                };
            };
        };

        ["MIGHTIESTBLOW_INT"] = {
            ["STRING"] = {
                ["ENGLISH"] = "This takes place in the Festival Arena at Thorin's Hall\n\nObjectives:\n-Knock <rgb=#FF0000>8</rgb> competitors out of the way.\n-You do not need to pick up the mug.\n-You <rgb=#FF0000>will fail</rgb> if knocked out of the arena.\n\nContributes to the 'Mightiest Arm' deed.";
                ["FRENCH"] = "Cet \195\169v\195\168nement se passe dans l'ar\195\168ne du festival au Palais de Thorin\n\nObjectifs:\n-Ejectez <rgb=#FF0000>8</rgb> adversaires hors de l'ar\195\168ne.\n-Vous n'avez pas besoin d'attraper la chope.\n-Vous <rgb=#FF0000>\195\169chouerez</rgb> si vous \195\170tes \195\169ject\195\169 de l'ar\195\168ne.\n\nContribue \195\160 la prouesse 'Casseur'.";
                ["GERMAN"] = "This takes place in the Festival Arena at Thorin's Hall\n\nObjectives:\n-Knock <rgb=#FF0000>8</rgb> competitors out of the way.\n-You do not need to pick up the mug.\n-You <rgb=#FF0000>will fail</rgb> if knocked out of the arena.\n\nContributes to the 'Mightiest Arm' deed.";
            };

            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Dwarf-club of Unimaginable Power";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Gourdin de nain";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Zwergenkeule der Unvorstellbaren Macht";};
                };
            };
        };

        ["MIGHTIESTBLOW_EXPERT"] = {
            ["STRING"] = {
                ["ENGLISH"] = "This takes place in the Festival Arena at Thorin's Hall\n\nObjectives:\n-Knock <rgb=#FF0000>8</rgb> competitors out of the way.\n-You <rgb=#FF0000>need</rgb> to pick up the mug.\n-You <rgb=#FF0000>will fail</rgb> if knocked out of the arena.\n\nContributes to the 'Mightiest Arm' deed.\nContributes to the 'Why Your Head Hurts' deed.";
                ["FRENCH"] = "Cet \195\169v\195\168nement se passe dans l'ar\195\168ne du festival au Palais de Thorin\n\nObjectifs:\n-Ejectez <rgb=#FF0000>8</rgb> adversaires hors de l'ar\195\168ne.\n-Vous <rgb=#FF0000>devez</rgb> attraper la chope.\n-Vous <rgb=#FF0000>\195\169chouerez</rgb> si vous \195\170tes \195\169ject\195\169 de l'ar\195\168ne.\n\nContribue \195\160 la prouesse 'Casseur'.\nContribue \195\160 la prouesse 'Battu, Contusionn\195\169, Endolori'";
                ["GERMAN"] = "This takes place in the Festival Arena at Thorin's Hall\n\nObjectives:\n-Knock <rgb=#FF0000>8</rgb> competitors out of the way.\n-You <rgb=#FF0000>need</rgb> to pick up the mug.\n-You <rgb=#FF0000>will fail</rgb> if knocked out of the arena.\n\nContributes to the 'Mightiest Arm' deed.\nContributes to the 'Why Your Head Hurts' deed.";
            };

            ["QUICKSLOTS"] = {
                ["ENGLISH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Dwarf-club of Unimaginable Power";};
                };
                ["FRENCH"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Gourdin de nain";};
                };
                ["GERMAN"] = {
                    [1] = {["TYPE"]="Item";["NAME"]="Zwergenkeule der Unvorstellbaren Macht";};
                };
            };
        };

        ["BREEFIREWORKS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Follow the instructions given by the 'Fireworks Announcer' to make sure you launch a suitable coloured firework.\n\nThe Announcer will try and trick you out with statements such as, <rgb=#FF0000>anything except</rgb>, or <rgb=#FF0000>anything but</rgb>, so make sure you read the instructions carefully.";
                ["FRENCH"] = "Suivez les instructions donn\195\169es par 'l'Animateur du feu d'artifice' pour \195\170tre s\195\187r(e) de lancer la bonne couleur.\n\nL'animateur tente de vous embrouiller avec des formules du type, <rgb=#FF0000>tout ce que vous voulez sauf</rgb>, ou <rgb=#FF0000>autre chose que</rgb>, soyez certain(e) d'avoir lu les instructions correctement.";
                ["GERMAN"] = "Follow the instructions given by the 'Fireworks Announcer' to make sure you launch a suitable coloured firework.\n\nThe Announcer will try and trick you out with statements such as, <rgb=#FF0000>anything except</rgb>, or <rgb=#FF0000>anything but</rgb>, so make sure you read the instructions carefully.";
            };
        };

        ["LOSTINVITES"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Envelopes can be found around Bree, open them to collect invitations and occassionally get prizes.\n\nNote: You can collect as many envelopes as you want, but can only open them until the six invitations have been collected.";
                ["FRENCH"] = "Les enveloppes se trouvent dans Bree, ouvrez les pour r\195\169cup\195\169rer les invitations et de temps en temps des cadeaux.\n\nNote: Vous pouvez ramassez autant d'enveloppes que vous le voulez, mais vous ne pourrez plus les ouvrir une fois les six invitations r\195\169cup\195\169es.";
                ["GERMAN"] = "Envelopes can be found around Bree, open them to collect invitations and occassionally get prizes.\n\nNote: You can collect as many envelopes as you want, but can only open them until the six invitations have been collected.";
            };
        };

    };

    -- FARMERS FAIRE ----------------------------------------------------------------------------------------------------------------
    [FARMERSFAIRE] = {
        ["FAT_MAYOR"] = {
            ["STRING"] = {
                ["ENGLISH"] = "not rich enough / a dab / bread dry:  Butter\nSpicy / it burns / pepper:  Milk\nBland / forgot seasoning / missing: Salt\nReplenish / mouth is dry / thirsty: Water\nCleanse palate / something tart / too fine: Wine\n\nEverything else: Do nothing";
                ["GERMAN"] = "nicht reichhaltig / bißchen / Brot trocken: Butter\nScharf / es brennt / Pfeffer: Milch\nöde / würzen vergessen / etwas fehlt: Salz\nausruhen / Mund trocken / durstig: Wasser\nGaumen / etwas Herbes / Musikalisch: Wein\n\nAlles andere: Warten";
            };
        };
        ["BOUNDER_ROUNDS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "A toast: toes in your hair\nAh, a beautiful day: fresh-licked vegebles\nI burped: Ha ha ha!\nI came: all the day\nI got into: quite a squirrel\nI made a daring trip: munchroom\nThat mayor: slupper\nThe Farmers Faire: pigs judge\nThis Faire: Old Bad Maggins";
                ["GERMAN"] = "Zehen in eurem Haar\nGrauer Himmel\nHa ha ha!\nKöstlichkeiten vernichten\nVOM Ohm\nPelze\nAbendstück\nSchweine begutachten\nverrückten Veutlin";
            };
        };

        -- Staffing the Market quests in Bywater with Daisy Sandyman, left-to-right:
        ["APPLE_SHOPPING"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Search the apple crates until you can't.\nDiscard wormy apples.\nYou can sell any extra green, red, or golden apples you find, or keep them for the next time.";
                ["GERMAN"] = "Durchsuche die Kisten!\nWirf wurmige Äpfel weg [Filter]\nÜberschüssige Grüne, rote und goldene Äpfel kannst Du verkaufen\noder sie für die nächste Runde einlagern.";
            };
        };
        ["FRESH_SAVOURY_MUSHROOM_STEW"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Recipe: Table by the oven.\nBeef: South-east stall.\nSalt: Table by the oven.\nWater: Well in the center.\nCarrots: North-east stall.\nBacon: South-east stall.\nMushrooms: Tables by mushroom tent on hill.\nStew-pot: on ground by the oven.";
                ["GERMAN"] = "Rezept: Tisch beim Ofen.\nRindfleisch: Tisch am Fleischstand.\nSalz: Zurück beim Ofen.\nWasser: Brunnen im Zentrum.\nKarotten: Gemüsestand rechts\nSchinken: Fleischregal hoch.\nPilze: Tische beim Pilzzelt.\nPilzeintopf: Am Boden vor dem Ofen.";
            };
        };
        ["A_NOSEY_REQUEST"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Ernwyd Bolger: in Green Dragon behind the bar.\n\nAlric Hornblower: inside the mushroom tent.\n\nOpalessa Sandheaver: on the Methel-stage.";
                ["GERMAN"] = "Ernweid Bolger: im 'Grünen Drachen' hinter der Theke.\n\nAlrich Hornbläser: im Pilz-Zelt.\n\nOpalessa Sandheber: auf der Methel-Bühne.";
            };
        };
        ["A_SHOPPING_LIST"] = {
            ["STRING"] = {
                ["ENGLISH"] = "cabbage: small ( -> right )\napple: green\nmeat: pork ( <- left )\n\nbread: white ( -> right )\nonion: red ( -> right )\ncheese: mild ( <- left )";
                ["GERMAN"] = "kleiner Kohl ( -> rechts )\ngrüner Apfel\nSchweinefleisch ( <- links )\n\nWeißbrot ( -> rechts )\nrote Zwiebel ( -> rechts )\nmilder Käse ( <- links )";
            };
        };
        ["A_MARKET_LIST"] = {
            ["STRING"] = {
                ["ENGLISH"] = "cabbage: none\napple: green\nmeat: none\n\nbread: white ( -> right )\nonion: white ( <- left )\ncheese: sharp ( -> right )";
                ["GERMAN"] = "kein Kohl\ngrüner Apfel\nkein Fleisch\n\nWeißbrot ( -> rechts )\nweiße Zwiebel ( <- links )\nwürziger Käse ( -> rechts )";
            };
        };
        ["A_VENDOR_LIST"] = {
            ["STRING"] = {
                ["ENGLISH"] = "cabbage: large ( <- left )\napple: none\nmeat: bacon ( -> right )\n\nbread: brown ( <- left )\nonion: white ( <- left )\ncheese: sharp ( -> right )";
                ["GERMAN"] = "großer Kohl ( <- links )\nkein Apfel\nSchinken ( -> rechts )\n\nBraunes Brot ( <- links )\nweiße Zwiebel ( <- links )\nwürziger Käse ( -> rechts )";
            };
        };

    };

    [HOBNANIGANS] = {
    };

    [MIDSUMMER] = {
        ["A_CURE_FOR_ALL_ILLS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Take quest from Ioreth.\n\n2. Dispose of 10 half-emptied bottles.\n\n3. Remove 6 noisy revellers.\n\n1. Return to Ioreth.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/A Cure For All Ills.tga";
        };
        ["AIDING_THE_STABLE_HANDS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up quest from Loborís inside City Stables.\n\n2. Pick up brush and apples.\n\n3. Feed and brush horses.\n\n1. Return to Loborís.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Aiding the Stable-hands.tga";
        };
        ["ARRANGING_ARRANGEMENTS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up quest from Florist on the Citadel. Place 5 of the following floral arrangements:\n2. Two arrangements in The Merry Swan [21.0N, 56.6W] (Craftsmen's Tier)\n3. Three arrangements in the Blue Theatre [21.5N, 56.5W] (Players' Tier)\n4. Two arrangements in the Hall of Air [23.1N, 56.3W] (Sages' Tier)\nQuest auto-completes";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Arranging Arrangements.tga";
        };
        ["ARTISTIC_DIRECTION"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up quest from Borlach of Rimmon at [21.4N, 54.4W] (Soldiers' Tier).\n2. Collect flowers from Lebadar at [23.8N, 54.9W] (bottom of Soldier's/Craftsmen's Tier ramp).\n3. Collect clay from the Potter at [23.3N, 54.9W] (outside The House of Craft, Craftsmen's Tier).\n4. Collect charcoal from Ciriel at [21.0N, 55.3W] (on Craftsmen's Tier).\n1. Return to Borlach of Rimmon.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Artistic Direction.tga";
        };
        ["FLORAL_CROWNS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up quest from Florist on the Citadel.\n2. Continue quest with Florist's Daughter.\nPick 10 flowers.\n2. Continue quest with Florist's Daughter, use blanket.\n1. Return to Florist.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Floral Crowns.tga";
        };
        ["GROWING_PAINS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up quest from Lebadar.\n\n2. Pull weeds and water bushes in the garden.\n\n1. Turn in to Lebadar.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Growing Pains.tga";
        };
        ["HONOURING_HEALERS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Pick up quest from the Postmaster in House of Craft, Craftsmen's Tier.\nGo to Houses of Healing, House of Remedies (Sages' Tier).\n1. Entrance\n* One healer (green) stands still.\n* Five healers (red, blue, purple, cyan, yellow) walk along a path.\nReturn to the Postmaster.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Honouring Healers.tga";
        };
        ["IN_CELEBRATION_OF_MIDSUMMER"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Take 'In Celebration of Midsummer' from Faeleth outside City Stables.\n\n2. Take 7 quests on the Citadel.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/In Celebration of Midsummer.tga";
        };
        ["LOVE_IS_IN_THE_AIR"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Entrance to Houses of Lore (Sages' Tier).\n2. Pick up quest from Colladan upstairs.\n\n*There are 6 wayward verses floating upstairs (yellow, blue, green, magenta, cyan, red).\n*There are 2 wayward verses floating downstairs (dark red, dark blue).\n\n2. Return to Colladan.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Love Is In the Air.tga";
        };
        ["SOMETHING_FLORAL"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Pick up quest from Merilien on the Citadel.\nGo to Houses of Lore (Sages' Tier).\n1. Entrance\n2. Place 2 floral arrangements next to fireplace.\n3. Place 2 floral arrangements next to stairs.\n4. Place 2 floral arrangements upstairs.\nReturn to Merilien.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Something Floral.tga";
        };
        ["SOMETHING_MISPLACED"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Go to The Blue Theatre (southern end of the Players' Tier)\n1. Pick up quest from Duillam.\n2. Find Hollur\n3. Find Polla\n4. Find Fróki\n5. Find Daenar\n6. Find Robbo\n7. Find Gord.\n1. Return to Duillam.\n(Hint: Make sure 'Select Next NPC' is bound to a key and use it to find the Cloudyheads. Each Cloudyhead can be found in multiple locations.)";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Something Misplaced, Something Blue.tga";
        };
        ["SWEET_TREATS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up quest from Ciriel.\n\nGive treats to each of the four guards.\n\n1. Return to Ciriel.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Sweet Treats.tga";
        };
        ["TASTY_MORSELS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up quest from Othnoron on the Citadel.\n2. Bring sample to Daghir.\n3. Bring sample to Pelnen.\n4. Bring sample to Gwárben.\n5. Bring sample to Arastil.\n6. Bring sample to Brandion.\n1. Return to Othnoron.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Tasty Morsels.tga";
        };
        ["TO_THE_LAST_DROP"] = {
            ["STRING"] = {
                ["ENGLISH"] = "Pick up quest from Merilien on the Citadel.\n\nGo to The Splintered Shield on Soldiers' Tier.\n\nThere are 9 glasses of wine. 8 of them are located on fixed positions. The 9th glass is the one you are looking for.\n\nPossible 'wrong' responses: \n* A fizzling effervescence on your tongue. This wine is not supposed to have bubbles....\n* It's probably not possible to add more water to this 'wine'\n* This wine has sapped all joy from your life\n* This wine tastes like your great-aunt's mouldy basement\n* So tart it makes your lips pucker and your eyes water\n* A wine so sweet as to almost be syrupy. Good for dessert?\n* This is probably just vinegar\n* A robust, heady taste... of wet dog";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/To The Last Drop.tga";
        };
        ["TOSS_A_COIN"] = {
            ["STRING"] = {
                ["ENGLISH"] = "In the Splintered Shield (Soldiers' Tier):\n1. Pick up quest from Ulthir upstairs.\n2. Lutist upstairs, then jump down.\n3. Minstrel by fireplace.\n4. Harper on platform (reachable from floor).\n5. Flutist.\n6. Harper at bottom of stairs.\n7. Lutist on stair landing.\n1. Return to Ulthir.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Toss a Coin.tga";
        };
        ["UNHELPFUL_HOUNDS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up quest from Worried Woman at the bottom of Soldier's/Craftsmen's Tier ramp.\n\nRetrieve ring from one of the hounds\n\n1. Turn in to Worried Woman.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Unhelpful Hounds.tga";
        };
        ["WEDDING_SUPPLIES"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up quest from Merilien on the Citadel.\nAll supplies are on Craftsmen's Tier.\n2. Two mutually exclusive supplies outside House of Craft.\n3. Two supplies inside House of Craft.\n4. One supply around corner from Ciriel.\n5. Four mutually exclusive supplies outside Middle Stores.\n6. One supply outside Middle Stores.\n7. One supply outside Middle Stores.\n1. Return to Merilien.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Wedding Supplies.tga";
        };
        ["WHAT_ALES_YOU"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up quest from Merilien on the Citadel.\n2. The Splintered Shield (in south-west room) [20.6N, 55.6W] (Soldiers' Tier).\n3. The Mûmak and Keep (next to mûmak) [20.8N, 56.9W] (Soldiers' Tier)\n4. The Merry Swan [21.0N, 56.6W] (Craftsmen's Tier).\n5. The Thirsty Seer [21.8N, 56.5W] (Sages' Tier).\nReturn to Merilien.";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/What Ales You.tga";
        };

        ["LIGHTNING_IN_A_BOTTLE"] = {
            ["STRING"] = {
                ["ENGLISH"] = "1. Pick up from Merilien on the Citadel.\nTake one of the Lantern quests from Merilien:\nFor 2: Amethyst: the Grimwater of Ered Luin (near Gondamon)\nFor 3: Emerald: the Midgewater Marshes of Bree-land (near Bree-town)\nFor 4: Ruby: the Rushock Bog of The Shire (near Needlehole)\nFor 5: Sapphire: Dol Ringwes in Ered Luin (near Duillond)";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Lightning in a Bottle.tga";
        };
        ["AMETHYST_FIREFLY_LANTERNS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "* Pick up quest from Merilien on the Citadel.\n* Capture amethyst fireflies, which can be found in the Grimwater of Ered Luin [17.6S, 94.8W], during Gloaming, Evening, Midnight, Late Watches, and Foredawn.\n* Return to Merilien\n* Place laterns in the central court of the interior of The Houses of Healing [21.9N, 56.1W] (Masters' Tier)";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Amethyst Firefly Lanterns.tga";
        };
        ["EMERALD_FIREFLY_LANTERNS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "* Pick up quest from Merilien on the Citadel.\n* Capture emerald fireflies, which can be found in the Midgewater Marshes, Bree-land [30.4S, 43.7W], during Gloaming, Evening, Midnight, Late Watches, and Foredawn.\n* Return to Merilien.\n* Place lanterns on stage in the interior of The Merry Swan at [21.0N, 56.6W] (Craftsmen's Tier)";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Emerald Firefly Lanterns.tga";
        };
        ["RUBY_FIREFLY_LANTERNS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "* Pick up quest from Merilien on the Citadel.\n* Capture ruby fireflies, which can be found in the Rushock Bog, The Shire [29.0S, 74.5W], during Gloaming, Evening, Midnight, Late Watches, and Foredawn.\n* Return to Merilien.\n* Place lanterns at The Hall of Air [23.1N, 56.3W] (Sages' Tier)";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Ruby Firefly Lanterns.tga";
        };
        ["SAPPHIRE_FIREFLY_LANTERNS"] = {
            ["STRING"] = {
                ["ENGLISH"] = "* Pick up quest from Merilien on the Citadel.\n* Capture sapphire fireflies, which can be found around the lake near Dol Ringwest, Ered Luin [24.4S, 94.6W], during Gloaming, Evening, Midnight, Late Watches, and Foredawn.\n* Place lanterns at The Court of Voronwë [21.7N, 55.3W] and [21.4N, 55.4W] (Players' Tier)";
            };
            ["IMAGE"] = RESOURCEDIR .. "/QuestMaps/Midsummer/Sapphire Firefly Lanterns.tga";
        };
    };

    ----------------------------------------------------------------------------------------------------------------------------------
};
