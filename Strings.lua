
-- Map Orientation:
NORTH = 1;
EAST = 2;
SOUTH = 3;
WEST = 4;
RANDOM = 5;

-- Festivals:
SPRING = 1;
SUMMER = 2;
HARVESTMATH = 3;
YULE = 4;
ANNIVERSARY = 5;
FARMERSFAIRE = 6;
HOBNANIGANS = 7;
MIDSUMMER = 8;

-- Anniversary: Fireworks in Bree
NO_FIREWORKS = 0;
RED_YES = 1;
RED_NO = 2;
GREEN_YES = 4;
GREEN_NO = 8;
BLUE_YES = 16;
BLUE_NO = 32;
YELLOW_YES = 64;
YELLOW_NO = 128;

COLOR_YESNO = false;

-- Farmers Faire: Fat Mayor food options
NOTHING = 0;
BUTTER = 1;
MILK = 2;
SALT = 3;
WATER = 4;
WINE = 5;

-- Spring Tokens:
SPRING_FESTIVAL = 1;
SPRING_MITHRIL = 2;
SPRING_RACE = 3;
SPRING_VIOLET = 4;
SPRING_MARIGOLD = 5;
SPRING_PRIMROSE = 6;

-- Summer Tokens:
SUMMER_RACE = 1;
SUMMER_FESTIVAL = 2;
SUMMER_HADDOCK = 3;
SUMMER_AMBERJACK = 4;
SUMMER_LUILLIM = 5;
SUMMER_DRUM = 6;
SUMMER_CELEBHAL = 7;
SUMMER_GOLDRED = 8;
SUMMER_FLOUNDER = 9;
SUMMER_SMALLFISH = 10;
SUMMER_MITHRIL = 11;

-- Harvestmath Tokens:
HARVESTMATH_RACE = 1;
HARVESTMATH_FESTIVAL = 2;
HARVESTMATH_MITHRIL = 3;
HARVESTMATH_SMALLAPPLE = 4;
HARVESTMATH_MEDIUMAPPLE = 5;
HARVESTMATH_LARGEAPPLE = 6;
HARVESTMATH_CRACKEDGEODE = 7;
HARVESTMATH_PRISTINEGEODE = 8;
HARVESTMATH_FAULTLESSGEODE = 9;
HARVESTMATH_UNIMPRESSIVESCROLL = 10;
HARVESTMATH_WELLWRITTENSCROLL = 11;
HARVESTMATH_ELEGANTSCROLL = 12;
HARVESTMATH_SMALLPUMPKIN = 13;
HARVESTMATH_MEDIUMPUMPKIN = 14;
HARVESTMATH_LARGEPUMPKIN = 15;

-- Yule Tokens:
YULE_FESTIVAL = 1;
YULE_GOLDFESTIVAL = 2;
YULE_TICKET = 3;
YULE_RACE = 4;
YULE_MITHRIL = 5;

-- Anniversary Tokens:
ANNIVERSARY_RACE = 1;
ANNIVERSARY_FESTIVAL = 2;
ANNIVERSARY_STEEL = 3;
ANNIVERSARY_MITHRIL = 4;

-- Farmers Faire
FARMERSFAIRE_RACE = 1;
FARMERSFAIRE_FESTIVAL = 2;
FARMERSFAIRE_MITHRIL = 3;

-- Hobnanigans
HOBNANIGANS_TOKEN = 1;
HOBNANIGANS_WHITE_CHICKEN_TOKEN = 2;
HOBNANIGANS_RED_CHICKEN_TOKEN = 3;
HOBNANIGANS_DORKING_CHICKEN_TOKEN = 4;
HOBNANIGANS_SCRAPPER_CHICKEN_TOKEN = 5;
HOBNANIGANS_BLACKFOOT_CHICKEN_TOKEN = 6;
HOBNANIGANS_ORANGE_WYANDOTTE_TOKEN = 7;
HOBNANIGANS_MITHRIL = 8;

-- Midsummer Tokens:
MIDSUMMER_TOKEN = 1;
MIDSUMMER_MC = 2;



-- E.G -- wBListParent:SetText(GetString(_LANG.ERRORS.LOAD));
_LANG = {

    -- ["STRINGNAME"] = { ["ENGLISH"] = ""; ["FRENCH"] = ""; ["GERMAN"] = ""; };

    ["ERRORS"] = {
        ["LOAD"] = {
            ["SETTINGS"] = {
                ["ENGLISH"] = "Error loading character save file FestivalBuddy_Settings";
                ["GERMAN"] = "Fehler beim Laden der Charakterdatei FestivalBuddy_Settings";
            };
            ["SETTINGS_SERVER"] = {
                ["ENGLISH"] = "Error loading server save file FestivalBuddy_SeverSettings";
                ["GERMAN"] = "Fehler beim Laden der Serverdatei FestivalBuddy_SeverSettings";
            };
            ["SETTINGS_ACCOUNT"] = {
                ["ENGLISH"] = "Error loading account save file FestivalBuddy_AccountSettings";
                ["GERMAN"] = "Fehler beim Laden der Kontodatei FestivalBuddy_AccountSettings";
            };
        };
    };

    ["FESTIVALS"] = {
        [SPRING]       = {["ENGLISH"] = "Spring";           ["FRENCH"] = "Printemps";           ["GERMAN"] = "Frühling";    };
        [SUMMER]       = {["ENGLISH"] = "Summer";           ["FRENCH"] = "\195\137t\195\169";   ["GERMAN"] = "Summer";      };
        [HARVESTMATH]  = {["ENGLISH"] = "Harvestmath";      ["FRENCH"] = "Moissines";           ["GERMAN"] = "Ernte";       };
        [YULE]         = {["ENGLISH"] = "Yule";             ["FRENCH"] = "Yule";                ["GERMAN"] = "Julfest";     };
        [ANNIVERSARY]  = {["ENGLISH"] = "Anniversary";      ["FRENCH"] = "Anniversaire";        ["GERMAN"] = "Jubiläums";   };
        [FARMERSFAIRE] = {["ENGLISH"] = "Farmers Faire";    ["FRENCH"] = "Foire des fermiers";  ["GERMAN"] = "Bauernfest";  };
        [HOBNANIGANS]  = {["ENGLISH"] = "Hobnanigans";      ["FRENCH"] = "Hobnanigans";         ["GERMAN"] = "Hobnanigans"; };
        [MIDSUMMER]    = {["ENGLISH"] = "Midsummer";        ["FRENCH"] = "Solstice d'été";      ["GERMAN"] = "Mittsommer";  };
    };

    ["OTHER"] = {
        ["BARTER"]      = {["ENGLISH"] = "Barter";          ["FRENCH"] = "Troqueur";            ["GERMAN"] = "Tausch";          };
        ["BARTERITEMS"] = {["ENGLISH"] = "Barter Items";    ["FRENCH"] = "Articles de troc";    ["GERMAN"] = "Tauschobjekte";   };
        ["SORT"]        = {["ENGLISH"] = "Sort";            ["FRENCH"] = "Trier";               ["GERMAN"] = "Sortieren";       };
        ["QUICK_GUIDE"] = {["ENGLISH"] = "Quick Guide";     ["FRENCH"] = "Guide Rapide";        ["GERMAN"] = "Kurzanleitung";   };
        ["ALTS"]        = {["ENGLISH"] = "Alts";            ["FRENCH"] = "Alts";                ["GERMAN"] = "Twinks";          };
        ["MAP"]         = {["ENGLISH"] = "Map";             ["FRENCH"] = "Map";                 ["GERMAN"] = "Karte";           };
        ["RESETS"]      = {["ENGLISH"] = "Resets";          ["FRENCH"] = "Remettre \195\160 0"; ["GERMAN"] = "Rücksetzungen";   };

        ["NOALTS"] = {
            ["ENGLISH"] = "No alt data to display. To access this you will need to load this plugin from each of your alts.";
            ["FRENCH"] = "Pas de donn\195\169es autres \195\160 afficher. Vous devez charger le plugin pour chacun de vos personnages pour cela.";
            ["GERMAN"] = "Keine Daten von Twinks gefunden. Lade das Plugin für jeden Twink, um das zu ändern.";
        };

        ["EMOTETARGET"] = {
            ["ENGLISH"] = ": Select this target before emoting.";
            ["FRENCH"] = ": Selectionez cette cible avant d'envoyer une \195\169mote.";
            ["GERMAN"] = ": Wähle das Ziel an, bevor du Emotes verwendest.";
        };

        ["YULESELAUDIENCE"] = {
            ["ENGLISH"] = "Select <rgb=#00FFFF>'The Audience'</rgb> before emoting";
            ["FRENCH"] = "Selectionnez <rgb=#00FFFF>'Le Public'</rgb> avant d'envoyer une \195\169mote";
            ["GERMAN"] = "Wähle <rgb=#00FFFF>'Das Publikum'</rgb> an, bevor Du Emotes benutzt";
        };

        ["TIMETOPERFORM"] = {
            ["ENGLISH"] = "It's your turn to perform";
            ["FRENCH"] = "C'est \195\160 vous !";
            ["GERMAN"] = "Du bist dran";
        };

        ["COMMAND"] = {
            ["ENGLISH"] = "Use command <rgb=#00FFFF>/festival</rgb> to re-open the main window";
            ["FRENCH"] = "Utilisez la commande <rgb=#00FFFF>/festival</rgb> pour r\195\169-ouvrir la fen\195\170tre";
            ["GERMAN"] = "Benutze <rgb=#00FFFF>/festival</rgb> um das Hauptfenster wieder zu öffnen";
        };


        -- These must match the names given in-game
        ["AUDIENCE"]              = {["ENGLISH"] = "The Audience";          ["FRENCH"] = "Le Public";                   ["GERMAN"] = "Das Publikum";        }; -- Yule Frostbluff Theatre
        ["NPC_FIREWORKANNOUNCER"] = {["ENGLISH"] = "Fireworks Announcer";   ["FRENCH"] = "Animateur du feu d'artifice"; ["GERMAN"] = "Feuerwerksansager";   }; -- Anniversary Fireworks in Bree

        ["FIREWORKS_ANNOUNCEMENTS"] = {
            ["ENGLISH"] = {
                ["Fireworks Announcer says, ''How about a bright blue one? Launch it now!''\n"] = BLUE_YES;
                ["Fireworks Announcer says, ''How about a bright green one? Launch it now!''\n"] = GREEN_YES;
                ["Fireworks Announcer says, ''How about a bright red one? Launch it now!''\n"] = RED_YES;
                ["Fireworks Announcer says, ''How about a bright yellow one? Launch it now!''\n"] = YELLOW_YES;

                ["Fireworks Announcer says, ''How about something besides blue? Launch it now!''\n"] = BLUE_NO;
                ["Fireworks Announcer says, ''How about something besides green? Launch it now!''\n"] = GREEN_NO;
                ["Fireworks Announcer says, ''How about something besides red? Launch it now!''\n"] = RED_NO;
                ["Fireworks Announcer says, ''How about something besides yellow? Launch it now!''\n"] = YELLOW_NO;

                ["Fireworks Announcer says, ''Let's dazzle the crowd with a firework that is blue!''\n"] = BLUE_YES;
                ["Fireworks Announcer says, ''Let's dazzle the crowd with a firework that is green!''\n"] = GREEN_YES;
                ["Fireworks Announcer says, ''Let's dazzle the crowd with a firework that is red!''\n"] = RED_YES;
                ["Fireworks Announcer says, ''Let's dazzle the crowd with a firework that is yellow!''\n"] = YELLOW_YES;

                ["Fireworks Announcer says, ''Let's dazzle the crowd with a firework that isn't blue!''\n"] = BLUE_NO;
                ["Fireworks Announcer says, ''Let's dazzle the crowd with a firework that isn't green!''\n"] = GREEN_NO;
                ["Fireworks Announcer says, ''Let's dazzle the crowd with a firework that isn't red!''\n"] = RED_NO;
                ["Fireworks Announcer says, ''Let's dazzle the crowd with a firework that isn't yellow!''\n"] = YELLOW_NO;

                ["Fireworks Announcer says, ''Quickly, launch a blue firework high into the sky!''\n"] = BLUE_YES;
                ["Fireworks Announcer says, ''Quickly, launch a green firework high into the sky!''\n"] = GREEN_YES;
                ["Fireworks Announcer says, ''Quickly, launch a red firework high into the sky!''\n"] = RED_YES;
                ["Fireworks Announcer says, ''Quickly, launch a yellow firework high into the sky!''\n"] = YELLOW_YES;

                ["Fireworks Announcer says, ''Quickly, launch a firework that's not blue high into the sky!''\n"] = BLUE_NO;
                ["Fireworks Announcer says, ''Quickly, launch a firework that's not green high into the sky!''\n"] = GREEN_NO;
                ["Fireworks Announcer says, ''Quickly, launch a firework that's not red high into the sky!''\n"] = RED_NO;
                ["Fireworks Announcer says, ''Quickly, launch a firework that's not yellow high into the sky!''\n"] = YELLOW_NO;

                ["Fireworks Announcer says, ''Send up a blue firework, this is the perfect time for one!''\n"] = BLUE_YES;
                ["Fireworks Announcer says, ''Send up a green firework, this is the perfect time for one!''\n"] = GREEN_YES;
                ["Fireworks Announcer says, ''Send up a red firework, this is the perfect time for one!''\n"] = RED_YES;
                ["Fireworks Announcer says, ''Send up a yellow firework, this is the perfect time for one!''\n"] = YELLOW_YES;

                ["Fireworks Announcer says, ''Send up anything except a blue firework; this will be unexpected!''\n"] = BLUE_NO;
                ["Fireworks Announcer says, ''Send up anything except a green firework; this will be unexpected!''\n"] = GREEN_NO;
                ["Fireworks Announcer says, ''Send up anything except a red firework; this will be unexpected!''\n"] = RED_NO;
                ["Fireworks Announcer says, ''Send up anything except a yellow firework; this will be unexpected!''\n"] = YELLOW_NO;

                ["Fireworks Announcer says, ''This is not the time for resting, launch your blue fireworks!''\n"] = BLUE_YES;
                ["Fireworks Announcer says, ''This is not the time for resting, launch your green fireworks!''\n"] = GREEN_YES;
                ["Fireworks Announcer says, ''This is not the time for resting, launch your red fireworks!''\n"] = RED_YES;
                ["Fireworks Announcer says, ''This is not the time for resting, launch your yellow fireworks!''\n"] = YELLOW_YES;

                ["Fireworks Announcer says, ''This is not the time for blue fireworks, but any other colour will do!''\n"] = BLUE_NO;
                ["Fireworks Announcer says, ''This is not the time for green fireworks, but any other colour will do!''\n"] = GREEN_NO;
                ["Fireworks Announcer says, ''This is not the time for red fireworks, but any other colour will do!''\n"] = RED_NO;
                ["Fireworks Announcer says, ''This is not the time for yellow fireworks, but any other colour will do!''\n"] = YELLOW_NO;
            };
            ["GERMAN"] = {
                ["Feuerwerksansager sagt: ''Das ist nicht der Zeitpunkt für blaues Feuerwerk, aber jede andere Farbe ist passend!''\n"] = BLUE_NO;
                ["Feuerwerksansager sagt: ''Das ist nicht der Zeitpunkt für gelbes Feuerwerk, aber jede andere Farbe ist passend!''\n"] = YELLOW_NO;
                ["Feuerwerksansager sagt: ''Das ist nicht der Zeitpunkt für grünes Feuerwerk, aber jede andere Farbe ist passend!''\n"] = GREEN_NO;
                ["Feuerwerksansager sagt: ''Das ist nicht der Zeitpunkt für rotes Feuerwerk, aber jede andere Farbe ist passend!''\n"] = RED_NO;
                
                ["Feuerwerksansager sagt: ''Jetzt ist nicht die Zeit für Müßiggang, zündet ein blaues Feuerwerk!''\n"] = BLUE_YES;
                ["Feuerwerksansager sagt: ''Jetzt ist nicht die Zeit für Müßiggang, zündet ein gelbes Feuerwerk!''\n"] = YELLOW_YES;
                ["Feuerwerksansager sagt: ''Jetzt ist nicht die Zeit für Müßiggang, zündet ein grünes Feuerwerk!''\n"] = GREEN_YES;
                ["Feuerwerksansager sagt: ''Jetzt ist nicht die Zeit für Müßiggang, zündet ein rotes Feuerwerk!''\n"] = RED_YES;
                
                ["Feuerwerksansager sagt: ''Lasst uns das Publikum mit einem Feuerwerk verblüffen, das nicht blau ist!''\n"] = BLUE_NO;
                ["Feuerwerksansager sagt: ''Lasst uns das Publikum mit einem Feuerwerk verblüffen, das nicht gelb ist!''\n"] = YELLOW_NO;
                ["Feuerwerksansager sagt: ''Lasst uns das Publikum mit einem Feuerwerk verblüffen, das nicht grün ist!''\n"] = GREEN_NO;
                ["Feuerwerksansager sagt: ''Lasst uns das Publikum mit einem Feuerwerk verblüffen, das nicht rot ist!''\n"] = RED_NO;
                
                ["Feuerwerksansager sagt: ''Lasst uns das Publikum mit einem blauen Feuerwerk verblüffen!''\n"] = BLUE_YES;
                ["Feuerwerksansager sagt: ''Lasst uns das Publikum mit einem gelben Feuerwerk verblüffen!''\n"] = YELLOW_YES;
                ["Feuerwerksansager sagt: ''Lasst uns das Publikum mit einem grünen Feuerwerk verblüffen!''\n"] = GREEN_YES;
                ["Feuerwerksansager sagt: ''Lasst uns das Publikum mit einem roten Feuerwerk verblüffen!''\n"] = RED_YES;
                
                ["Feuerwerksansager sagt: ''Schnell, zündet ein Feuerwerk, das nicht blau ist!''\n"] = BLUE_NO;
                ["Feuerwerksansager sagt: ''Schnell, zündet ein Feuerwerk, das nicht gelb ist!''\n"] = YELLOW_NO;
                ["Feuerwerksansager sagt: ''Schnell, zündet ein Feuerwerk, das nicht grün ist!''\n"] = GREEN_NO;
                ["Feuerwerksansager sagt: ''Schnell, zündet ein Feuerwerk, das nicht rot ist!''\n"] = RED_NO; -- not seen in practice

                ["Feuerwerksansager sagt: ''Schnell, zündet ein blaues Feuerwerk!''\n"] = BLUE_YES;
                ["Feuerwerksansager sagt: ''Schnell, zündet ein gelbes Feuerwerk!''\n"] = YELLOW_YES;
                ["Feuerwerksansager sagt: ''Schnell, zündet ein grünes Feuerwerk!''\n"] = GREEN_YES;
                ["Feuerwerksansager sagt: ''Schnell, zündet ein rotes Feuerwerk!''\n"] = RED_YES;
                
                ["Feuerwerksansager sagt: ''Wie wäre es mit einem blauen? Zündet es jetzt!''\n"] = BLUE_YES;
                ["Feuerwerksansager sagt: ''Wie wäre es mit einem gelben? Zündet es jetzt!''\n"] = YELLOW_YES;
                ["Feuerwerksansager sagt: ''Wie wäre es mit einem grünen? Zündet es jetzt!''\n"] = GREEN_YES;
                ["Feuerwerksansager sagt: ''Wie wäre es mit einem roten? Zündet es jetzt!''\n"] = RED_YES;
                
                ["Feuerwerksansager sagt: ''Wie wäre es mit etwas anderem als Blau? Zündet es jetzt!''\n"] = BLUE_NO;
                ["Feuerwerksansager sagt: ''Wie wäre es mit etwas anderem als Gelb? Zündet es jetzt!''\n"] = YELLOW_NO;
                ["Feuerwerksansager sagt: ''Wie wäre es mit etwas anderem als Grün? Zündet es jetzt!''\n"] = GREEN_NO;
                ["Feuerwerksansager sagt: ''Wie wäre es mit etwas anderem als Rot? Zündet es jetzt!''\n"] = RED_NO;
                
                ["Feuerwerksansager sagt: ''Zündet ein blaues Feuerwerk. Jetzt ist der richtige Zeitpunkt dafür!''\n"] = BLUE_YES;
                ["Feuerwerksansager sagt: ''Zündet ein gelbes Feuerwerk. Jetzt ist der richtige Zeitpunkt dafür!''\n"] = YELLOW_YES;
                ["Feuerwerksansager sagt: ''Zündet ein grünes Feuerwerk. Jetzt ist der richtige Zeitpunkt dafür!''\n"] = GREEN_YES;
                ["Feuerwerksansager sagt: ''Zündet ein rotes Feuerwerk. Jetzt ist der richtige Zeitpunkt dafür!''\n"] = RED_YES;
                
                ["Feuerwerksansager sagt: ''Zündet irgendetwas außer einem blauen Feuerwerk - das wird eine Überraschung werden!''\n"] = BLUE_NO;
                ["Feuerwerksansager sagt: ''Zündet irgendetwas außer einem gelben Feuerwerk - das wird eine Überraschung werden!''\n"] = YELLOW_NO;
                ["Feuerwerksansager sagt: ''Zündet irgendetwas außer einem grünen Feuerwerk - das wird eine Überraschung werden!''\n"] = GREEN_NO;
                ["Feuerwerksansager sagt: ''Zündet irgendetwas außer einem roten Feuerwerk - das wird eine Überraschung werden!''\n"] = RED_NO;
            };
            ["FRENCH"] = {
                ["Animateur du feu d'artifice dit : ''Ce n'est pas le moment d'envoyer du bleu, tirez n'importe quoi d'autre !''\n"] = BLUE_NO;
                ["Animateur du feu d'artifice dit : ''Ce n'est pas le moment d'envoyer du jaune, tirez n'importe quoi d'autre !''\n"] = YELLOW_NO;
                ["Animateur du feu d'artifice dit : ''Ce n'est pas le moment d'envoyer du rouge, tirez n'importe quoi d'autre !''\n"] = RED_NO;
                ["Animateur du feu d'artifice dit : ''Ce n'est pas le moment d'envoyer du vert, tirez n'importe quoi d'autre !''\n"] = GREEN_NO;
                
                ["Animateur du feu d'artifice dit : ''Ce n'est pas le moment de se reposer, lancez votre feu d'artifice bleu !''\n"] = BLUE_YES;
                ["Animateur du feu d'artifice dit : ''Ce n'est pas le moment de se reposer, lancez votre feu d'artifice jaune !''\n"] = YELLOW_YES;
                ["Animateur du feu d'artifice dit : ''Ce n'est pas le moment de se reposer, lancez votre feu d'artifice rouge !''\n"] = RED_YES;
                ["Animateur du feu d'artifice dit : ''Ce n'est pas le moment de se reposer, lancez votre feu d'artifice vert !''\n"] = GREEN_YES;
                
                ["Animateur du feu d'artifice dit : ''Envoyez ce que vous voulez sauf du bleu, ça va créer la surprise !''\n"] = BLUE_NO;
                ["Animateur du feu d'artifice dit : ''Envoyez ce que vous voulez sauf du jaune, ça va créer la surprise !''\n"] = YELLOW_NO;
                ["Animateur du feu d'artifice dit : ''Envoyez ce que vous voulez sauf du rouge, ça va créer la surprise !''\n"] = RED_NO;
                ["Animateur du feu d'artifice dit : ''Envoyez ce que vous voulez sauf du vert, ça va créer la surprise !''\n"] = GREEN_NO;
                
                ["Animateur du feu d'artifice dit : ''Envoyez un feu d'artifice rouge, c'est l'occasion parfaite !''\n"] = RED_YES;
                ["Animateur du feu d'artifice dit : ''Envoyez un feu jaune, le moment est parfait !''\n"] = YELLOW_YES;
                ["Animateur du feu d'artifice dit : ''Envoyez un feux d'artifice vert, c'est le moment parfait pour ça !''\n"] = GREEN_YES;
                ["Animateur du feu d'artifice dit : ''Envoyez vite un feu d'artifice vert haut dans le ciel !''\n"] = GREEN_YES; -- might be in the wrong quartet

                ["Animateur du feu d'artifice dit : ''Epatons la foule avec un feu de couleur verte !''\n"] = GREEN_YES;
                ["Animateur du feu d'artifice dit : ''Je crois que c'est le bon moment pour du rouge !''\n"] = RED_YES;
                ["Animateur du feu d'artifice dit : ''Passons à un feu bien vert ! Tirez-le tout de suite !''\n"] = GREEN_YES;
                ["Animateur du feu d'artifice dit : ''Que diriez-vous d'un beau bleu ? Tirez-en un tout de suite !''\n"] = BLUE_YES;
                
                ["Animateur du feu d'artifice dit : ''Tirez quelque chose qui n'est pas bleu pour impressionner la foule !''\n"] = BLUE_NO;
                ["Animateur du feu d'artifice dit : ''Tirez quelque chose qui n'est pas jaune pour impressionner la foule !''\n"] = YELLOW_NO;
                ["Animateur du feu d'artifice dit : ''Tirez quelque chose qui n'est pas rouge pour impressionner la foule !''\n"] = RED_NO;
                ["Animateur du feu d'artifice dit : ''Tirez quelque chose qui n'est pas vert pour impressionner la foule !''\n"] = GREEN_NO;
                
                ["Animateur du feu d'artifice dit : ''C'est le moment de subjuguer les spectateurs avec du bleu !''\n"] = BLUE_YES;
                ["Animateur du feu d'artifice dit : ''Tirez un feu d'artifice bleu, c'est le moment parfait !''\n"] = BLUE_YES;
                ["Animateur du feu d'artifice dit : ''Tirez un feu d'artifice rouge pour impressionner la foule !''\n"] = RED_YES;
                ["Animateur du feu d'artifice dit : ''Tirez un feu jaune pour épater la foule !''\n"] = YELLOW_YES;
                
                ["Animateur du feu d'artifice dit : ''Tirons autre chose que du bleu ! Allez !''\n"] = BLUE_NO;
                ["Animateur du feu d'artifice dit : ''Tirons autre chose que du jaune ! Allez-y !''\n"] = YELLOW_NO;
                ["Animateur du feu d'artifice dit : ''Tirons autre chose que du rouge ! Allez !''\n"] = RED_NO;
                ["Animateur du feu d'artifice dit : ''Tirons autre chose que du vert ! Allez !''\n"] = GREEN_NO;
                
                ["Animateur du feu d'artifice dit : ''Vite, envoyez un feu d'artifice bleu haut dans le ciel !''\n"] = BLUE_YES;
                ["Animateur du feu d'artifice dit : ''Vite, envoyez un feu d'artifice jaune haut dans le ciel !''\n"] = YELLOW_YES;
                ["Animateur du feu d'artifice dit : ''Vite, tirez un feu d'artifice rouge haut dans le ciel !''\n"] = RED_YES;
                ["Animateur du feu d'artifice dit : ''Vite, une belle jaune ! Tirez-la tout de suite !''\n"] = YELLOW_YES;
                
                ["Animateur du feu d'artifice dit : ''Vite, envoyez un feu d'artifice qui n'est pas bleu haut dans le ciel !''\n"] = BLUE_NO;
                ["Animateur du feu d'artifice dit : ''Vite, envoyez un feu d'artifice qui n'est pas jaune haut dans le ciel !''\n"] = YELLOW_NO;
                ["Animateur du feu d'artifice dit : ''Vite, envoyez un feu d'artifice qui n'est pas vert haut dans le ciel !''\n"] = GREEN_NO;
                ["Animateur du feu d'artifice dit : ''Vite, envoyez un feu d'artifice qui n'est pas rouge haut dans le ciel !''\n"] = RED_NO;  -- not seen in practice
            };
        };

        ["HOBNANIGANS_ACCOUNCEMENTS"] = {
            ["HOBNANIGANS_QUEST_BEGIN_TEXT"] = {
                ["ENGLISH"] = "New Quest: A Game of Hobnanigans %-%- (.*) %- Field ([1-4])";
                ["GERMAN"] = "Neue Aufgabe: Eine Runde Hobnanigans – (.*) – Feld ([1-4])";
                ["FRENCH"] = "Nouvelle quête : Une partie de chasse-poulet – (.*) - Terrain ([1-4])";
            };
            ["HOBNANIGANS_QUEST_END_TEXT"] = {
                ["ENGLISH"] = "Failed: A Game of Hobnanigans %-%- (.*) %- Field ([1-4])";
            };
            ["HOBNANIGANS_ACTIVE_PLAY_BEGIN"] = {
                ["ENGLISH"] = "Field ([1-4]) Referee says, ''The Game Hen has landed on the field%. Begin play!''";
            };
            ["HOBNANIGANS_POINT_SCORED"] = {
                ["ENGLISH"] = "Field ([1-4]) Referee says, ''(.*) score!+''";
            };
            ["HOBNANIGANS_GAME_END"] = {
                ["ENGLISH"] = "Field ([1-4]) Referee says, ''(.*) Win!+''";
            };
            ["HOBNANIGANS_TIME_REMAINING_6"] = {
                ["ENGLISH"] = "Field ([1-4]) Referee says, ''Six minutes left in the game!+''";
            };
            ["HOBNANIGANS_TIME_REMAINING_2"] = {
                ["ENGLISH"] = "Field ([1-4]) Referee says, ''Two minutes left in the game!+''";
            };
        };

        ["HOBNANIGANS_TEAMS"] = {
            -- Convert team name to lookup key
            ["Flying Feathers"] = "FLYING_FEATHERS";
            ["Fliegende Federn"] = "FLYING_FEATHERS";
            ["Plumes Volantes"] = "FLYING_FEATHERS";

            -- Convert team name to lookup key
            ["Steel Beaks"] = "STEEL_BEAKS";
            ["Stahlschnäbel"] = "STEEL_BEAKS";
            ["Becs d'Acier"] = "STEEL_BEAKS";

            -- Convert lookup key to team name:
            ["FLYING_FEATHERS"] = {
                ["ENGLISH"] = "Flying Feathers";
                ["GERMAN"] = "Fliegende Federn";
                ["FRENCH"] = "Plumes Volantes";
            };
            -- Convert lookup key to team name:
            ["STEEL_BEAKS"] = {
                ["ENGLISH"] = "Steel Beaks";
                ["GERMAN"] = "Stahlschnäbel";
                ["FRENCH"] = "Becs d'Acier";
            };
        };

        ["HOBNANIGANS_TEXT"] = {
            ["FIELD"] = {
                ["ENGLISH"] = "Field";
            };
            ["NONE"] = {
                ["ENGLISH"] = "None";
            };
            ["NEED_QUEST"] = {
                ["ENGLISH"] = "Need Quest";
            };
            ["WAITING_FOR_START"] = {
                ["ENGLISH"] = "Waiting...";
            };
            ["GAME_OVER"] = {
                ["ENGLISH"] = "Game Over!";
            };
        };

        ["FARMERS_FAIRE_WILL_WHITFOOT_ANNOUNCEMENTS"] = {
            ["ENGLISH"] = {
                ["Ack! Ss... spuh... spicy! Save me!"] = MILK;
                ["Adding to this dish would spoil its taste."] = NOTHING;
                ["All this eating is hard work -- exercise, if you ask me. I need to replenish."] = WATER;
                ["Bland, bland, bland."] = SALT;
                ["Crisp flavour, hearty, and a clean aftertaste!"] = NOTHING;
                ["Dear me. It burns, it burns!!"] = MILK;
                ["Did Opal forget to season this?"] = SALT;
                ["First sweet, then salty, then savoury -- the flavours complement each other well!"] = NOTHING;
                ["Hmm. Not quite rich enough, if you ask me."] = BUTTER;
                ["I must cleanse my palate."] = WINE;
                ["It just needs a dab of something...."] = BUTTER;
                ["It's missing a little something..."] = SALT;
                ["Lovely, lovely."] = NOTHING;
                ["Mmm! Whoever made this is worthy of great admiration."] = NOTHING;
                ["Nice and salty, but now my mouth is dry."] = WATER;
                ["Ouch!! Too much pepper!"] = MILK;
                ["So... thirsty...."] = WATER;
                ["Something tart will do nicely right now."] = WINE;
                ["That was a nice set of flavours."] = NOTHING;
                ["That was a passable meal, I suppose."] = NOTHING;
                ["This bread is too dry!"] = BUTTER;
                ["This was too fine a dish to be eaten without an accompaniment."] = WINE;
            };
            ["GERMAN"] = {
                ["Argh! Sch-Scha-Scharf! Rettet mich!"] = MILK;
                ["An diesem schmackhaften Gericht sollte man nichts mehr ändern."] = NOTHING;
                ["All dieses Essen ist schwere Arbeit, wenn Ihr mich fragt. Ich muss mich ausruhen."] = WATER;
                ["Öde, öde, öde."] = SALT;
                ["Knusprig, herzhaft und ein einwandfreier Nachgeschmack!"] = NOTHING;
                ["Oh je. Es brennt, es brennt!!!"] = MILK;
                ["Hat Opal das Würzen vergessen?"] = SALT;
                ["Erst süß, dann salzig, dann pikant – die Geschmäcker ergänzen einander wirklich gut!"] = NOTHING;
                ["Hmm. Nicht reichhaltig genug, wenn Ihr mich fragt."] = BUTTER;
                ["Ich muss meinen Gaumen neutralisieren."] = WINE;
                ["Es bräuchte nur ein kleines bisschen ..."] = BUTTER;
                ["Irgendetwas fehlt ..."] = SALT;
                ["Wunderbar, wunderbar."] = NOTHING;
                ["Mmm! Wer auch immer dies gemacht hat, verdient große Bewunderung."] = NOTHING; -- need to watch a bit more to get the german translation
                ["Schön salzig, aber jetzt ist mein Mund ganz trocken."] = WATER;
                ["Uh!!! Zu viel Pfeffer!"] = MILK;
                ["So ... durstig ..."] = WATER;
                ["Etwas Herbes würde jetzt gut passen."] = WINE;
                ["Das war eine nette Geschmacksmischung."] = NOTHING;
                ["Das war ein annehmbares Gericht, würde ich sagen."] = NOTHING;
                ["Dieses Brot ist zu trocken!"] = BUTTER;
                ["Diese Mahlzeit war viel zu gut, um sie ohne musikalische Begleitung zu genießen."] = WINE;
            };
        };

        ["FARMERS_FAIRE_BOUNDER_ROUNDS_PARTY_GOERS"] = {
            ["ENGLISH"] = {
                ["'A toast to the fine farmers who made this Faire so delicious! May the toes in your hair grow thick and curly.'\n"] = "toes in your hair";
                ["'Ah, a beautiful day to celebrate the harvest. Blue skies and green grass as far as the eye can see, and the smell of fresh-licked vegebles!'\n"] = "fresh-licked vegebles";
                ["'I burped. Ha ha ha!'\n"] = "Ha ha ha!";
                ["'I came all the day from Frogmorton to waste the vittles at the Farmers Faire!'\n"] = "waste the vittles";
                ["'I got into quite a squirrel with Ted Sandyman when he told me the Gaffer's taters weren't as big as his own!'\n"] = "quite a squirrel";
                ["'I made a daring trip to Farmer Maggot's field to taste a munchroom or two...but his dogs chased me away.'\n"] = "taste a munchroom";
                ["'That mayor never stops eating! A disgusting display...but that reminds me, I am rather hungry! Where is slupper?'\n"] = "Where is slupper?";
                ["'The Farmers Faire is my favourite festival of all! I like when the pigs judge the local farmers.'\n"] = "pigs judge";
                ["'This Faire doesn't hold a candle to Old Bad Maggins's one hundred and eleventh birthday party!'\n"] = "Old Bad Maggins";
            };
            ["GERMAN"] = {
                ["'Einen Toast auf die werten Bauern, die dieses Fest so schmackhaft gemacht haben! Mögen die Zehen in eurem Haar dick und kraus wachsen!'\n"] = "Zehen in eurem Haar";
                ["'Ah, ein herrlicher Tag, um das Erntefest zu feiern. Grauer Himmel und grünes Gras so weit das Auge greift - und der Duft frisch geernteten Gemüses!'\n"] = "Grauer Himmel";
                ["'Ich habe gerülpst. Ha ha ha!'\n"] = "Ha ha ha!";
                ["'Ich bin den ganzen Tag lang von Froschmoorstetten her gekommen, nur um die Köstlichkeiten des Bauernfests zu vernichten!'\n"] = "Köstlichkeiten vernichten";
                ["'Ich habe mich mit Timm Sandigmann ganz schön gestritten, als er mir erzählen wollte, dass die Kartoffeln vom Ohm nicht so groß wie seine eigenen wären!'\n"] = "VOM Ohm";
                ["'Ich wagte mich auf das Feld von Bauer Maggot, um ein paar Pelze zu kosten ... aber seine Hunde haben mich fortgejagt!'\n"] = "Pelze";
                ["'Dieser Bürgermeister bekommt den Bauch nicht voll! Ein ekelhafter Anblick ... aber das erinnert mich daran, dass ich großen Hunger habe! Wann gibt es Abendstück?'\n"] = "Abendstück";
                ["'Das Bauernfest ist mein Lieblingsfest! Ich mag es, wenn die Schweine die hiesigen Bauern begutachten.'\n"] = "Schweine begutachten";
                ["'Dieses Fest kann der Feier zum 111. Geburtstag des alten verrückten Veutlin nicht das Wasser reichen!'\n"] = "verrückten Veutlin";
            };
        };

        ["FARMERS_FAIRE_WILL_WHITFOOT_ITEMS"] = {
            ["ENGLISH"] = {
                [NOTHING] = "Use nothing!";
                [BUTTER] = "Use butter!";
                [MILK] = "Use milk!";
                [SALT] = "Use salt!";
                [WATER] = "Use water!";
                [WINE] = "Use wine!";
            };
            ["GERMAN"] = {
                [NOTHING] = "Gar nichts!";
                [BUTTER] = "Nimm Butter!";
                [MILK] = "Nimm Milch!";
                [SALT] = "Nimm Salz!";
                [WATER] = "Nimm Wasser!";
                [WINE] = "Nimm Wein!";
            };
        };

        ["FARMERS_FAIRE_WILL_WHITFOOT_SUCCESS_FAIL"] = {
            ["SUCCESS"] = {
                ["ENGLISH"] = "^You have relieved the mayor %([%d]/6%)";
                ["FRENCH"] = "^Vous avez soulagé le maire %([%d]/6%)";
                ["GERMAN"] = "^Ihr habt den Bürgermeister erleichtert %([%d]/6%)";
            };
            ["FAILURE"] = {
                ["ENGLISH"] = "^You did not bring the mayor what he asked for %([%d]/3%)";
                ["GERMAN"] = "^Ihr habt dem Bürgermeister nicht gebracht, worum er Euch gebeten hat %([%d]/3%)";
            };
        };

        ["FARMERS_FAIRE_WILL_WHITFOOT_PARSE"] = {
            ["ENGLISH"] = "^<Select:IID:0x[%dA-F]+>Will Whitfoot<\\Select> says, ''(.*)''";
            ["GERMAN"] = "^<Select:IID:0x[%dA-F]+>Willi Weißfuß<\\Select> sagt: ''(.*)''";
            ["FRENCH"] = "^<Select:IID:0x[%dA-F]+>Will Piedblanc<\\Select> dit: ''(.*)''"; -- Needs verification
        };

        ["WINDOWS"] = {
            ["HARVESTMATH_MAZE_ID_WIN_TITLE"] = {
                ["ENGLISH"] = "Tanglecorn ID";
                ["GERMAN"] = "Weizenlabyrinth ID";
            };

            ["HARVESTMATH_MAZE_ID_WIN_INSTRUCTIONS"] = {
                ["ENGLISH"] = "The Tanglecorn maze changes layout every day at 10 am server time. There are five different layouts. Please identify the current layout by entering the maze and selecting what you see at the first intersection.";
                ["GERMAN"] = "Das Weizenlabyrinth ändert sein Aussehen jeden Tag um 10 Uhr Serverzeit (~16 Uhr). Es gibt fünf verschiedene Labyrinthe. Bitte betrete den Irrgarten und wähle aus, was Du an der ersten Kreuzung siehst!";
            };

            ["QUICK_GUIDE"] = {
                ["QUICK_GUIDE_TITLE"] = {
                    ["ENGLISH"] = "Quick Guide";
                    ["GERMAN"] = "Kurzanleitung";
                    ["FRENCH"] = "Guide Rapide";
                };
                ["QUICK_GUIDE_RESET"] = {
                    ["ENGLISH"] = "Reset this quick guide";
                    ["GERMAN"] = "Liste zurücksetzen";
                    ["FRENCH"] = "Réinitialiser ce guide rapide";
                };
            }


        };

    };


    ["DANCES"] = {
        ["DANCE1"] = { ["ENGLISH"] = "Look at me and dance step one";           ["FRENCH"] = "Regardez-moi et ex\195\169cutez le premier pas !";                    ["GERMAN"] = "Schaut mich an und tanzt Schritt eins!";  };
        ["DANCE2"] = { ["ENGLISH"] = "Now follow me in doing the second dance"; ["FRENCH"] = "Suivez-moi \195\160 pr\195\169sent pour la deuxi\195\168me danse.";   ["GERMAN"] = "Folgt mir jetzt beim zweiten Tanz.";      };
        ["DANCE3"] = { ["ENGLISH"] = "Dance three is the step here";            ["FRENCH"] = "Voici le pas de la troisi\195\168me danse.";                          ["GERMAN"] = "Tanz drei besteht aus diesem Schritt.";   };

        ["DANCE1_ALIAS"] = { ["ENGLISH"] = "/dance1"; ["FRENCH"] = "/danse1"; ["GERMAN"] = "/tanzen1"; };
        ["DANCE2_ALIAS"] = { ["ENGLISH"] = "/dance2"; ["FRENCH"] = "/danse2"; ["GERMAN"] = "/tanzen2"; };
        ["DANCE3_ALIAS"] = { ["ENGLISH"] = "/dance3"; ["FRENCH"] = "/danse3"; ["GERMAN"] = "/tanzen3"; };

        ["DANCE_INSTRUCTOR_HOBBIT"] = { ["ENGLISH"] = "Oger Brockhouse";    ["GERMAN"] = "Oger Dachsbau";   ["FRENCH"] = "Oger Trougrisard";    };
        ["DANCE_INSTRUCTOR_ELF"]    = { ["ENGLISH"] = "Nedhrien";           ["GERMAN"] = "Nedhrien";        ["FRENCH"] = "Nedhrien";            };
        ["DANCE_INSTRUCTOR_DWARF"]  = { ["ENGLISH"] = "Galmi";              ["GERMAN"] = "Galmi";           ["FRENCH"] = "Galmi";               };
        ["DANCE_INSTRUCTOR_MAN"]    = { ["ENGLISH"] = "Ada Musgrove";       ["GERMAN"] = "Ada Mushain";     ["FRENCH"] = "Ada Boqueteau";       };
    };


    ["DEBUFFS"] = {    -- Must match the names given in-game
        [SPRING] = {};
        [SUMMER] = {};

        [HARVESTMATH] = {
            [1] = { key = "SCROLLSEARCHING";    name =     {["ENGLISH"] = "Scroll Searching";               ["FRENCH"] = "Pêche aux parchemins";        ["GERMAN"] = "Schriftrollenziehen";         }; };
            [2] = { key = "GEODEHUNTING";       name =     {["ENGLISH"] = "Geode Hunting";                  ["FRENCH"] = "A la pêche aux géodes";       ["GERMAN"] = "Geodensuche";                 }; };
            [3] = { key = "PUMPKINPICKING";     name =     {["ENGLISH"] = "Pumpkin Picking";                ["FRENCH"] = "La chasse aux citrouilles";   ["GERMAN"] = "Kürbiswettstreit";            }; };
            [4] = { key = "APPLEBOBBING";       name =     {["ENGLISH"] = "Apple Bobbing";                  ["FRENCH"] = "Pêche aux pommes";            ["GERMAN"] = "Apfeltauchen";                }; };
            [5] = { key = "SECRETREASURECHEST"; name =     {["ENGLISH"] = "Secret Treasure - Chest";        ["FRENCH"] = "Chasse au trésor : Coffre";   ["GERMAN"] = "Geheimer Schatz - Truhe";     }; };
            [6] = { key = "THSTRONGBOX";        name =     {["ENGLISH"] = "Treasure Hunting - Strongbox";   ["FRENCH"] = "Chasse au trésor : Cassette"; ["GERMAN"] = "Schatzsuche - robuste Kiste"; }; };
            [7] = { key = "THLOCKBOX";          name =     {["ENGLISH"] = "Treasure Hunting - Lockbox";     ["FRENCH"] = "Chasse au trésor : Cassette"; ["GERMAN"] = "Schatzsuche - Schatulle";     }; };
            [8] = { key = "THCHEST";            name =     {["ENGLISH"] = "Treasure Hunting - Chest";       ["FRENCH"] = "Chasse au trésor : Coffre";   ["GERMAN"] = "Schatzsuche - Truhe";         }; };
        };

        [YULE] = {
            [1] = { key = "VILLAIN";            name =     {["ENGLISH"] = "Villain";            ["FRENCH"] = "M\195\169chant";                      ["GERMAN"] = "Bösewicht";             }; };
            [2] = { key = "PROTAGONIST";        name =     {["ENGLISH"] = "Protagonist";        ["FRENCH"] = "Protagoniste";                        ["GERMAN"] = "Hauptdarsteller";         }; };
            [3] = { key = "EXTRA";              name =     {["ENGLISH"] = "Extra";              ["FRENCH"] = "Figurant";                            ["GERMAN"] = "Statist";               }; };
            [4] = { key = "THEATRE";            name =     {["ENGLISH"] = "Frostbluff Theatre"; ["FRENCH"] = "Th\195\169\195\162tre de Rivegel";    ["GERMAN"] = "Frostfels-Theater";  }; };
        };

        [ANNIVERSARY] = {};
        [FARMERSFAIRE] = {};
        [HOBNANIGANS] = {};
        [MIDSUMMER] = {};

    };


    ["QUESTS"] = {    -- Must match the quest names given in-game
        -- General
        ["ELFDANCEQUEST"]    = {["ENGLISH"] = "Dances with Elves";      ["FRENCH"] = "Danse avec les Elfes";    ["GERMAN"] = "Elben-Tänze";         };
        ["DWARFDANCEQUEST"]  = {["ENGLISH"] = "Dances with Dwarves";    ["FRENCH"] = "Danse avec les Nains";    ["GERMAN"] = "Tanz der Zwerge";     };
        ["HOBBITDANCEQUEST"] = {["ENGLISH"] = "Dances with Hobbits";    ["FRENCH"] = "Danse avec les Hobbits";  ["GERMAN"] = "Tanz der Hobbits";    };
        ["MENDANCEQUEST"]    = {["ENGLISH"] = "Dances with Men";        ["FRENCH"] = "Danse avec les Hommes";   ["GERMAN"] = "Tanz der Menschen";   };

        ["START"] = {     -- Must match the text given in-game
            ["ENGLISH"] = "The dance will begin now! Come, shall we dance"; -- Say channel
            ["FRENCH"]  = "La danse va commencer. Suivez les pas demand\195\169s !";
            ["GERMAN"]  = "Der Tanz wird jetzt beginnen! Kommt, sollen wir tanzen?";
        };

        ["END"] = { -- Must match the text given in-game
            ["ENGLISH"] = "Great job! Wonderful! You have all been part of the festival-dance! We will dance again in 20 minutes"; -- Say channel
            ["FRENCH"]  = "Tr\195\168s bien ! Formidable ! Vous avez tous particip\195\169 \195\160 la danse du festival ! Nous recommencerons dans 20 minutes.";
            ["GERMAN"]  = "Sehr gut gemacht! Wunderbar! Ihr wart alle beim Festtanz mit dabei! In zwanzig Minuten findet der nächste Tanz statt.";
        };

        -- Must match the text given in-game
        ["NEWQUEST"]       = {["ENGLISH"] = "New Quest:";   ["FRENCH"] = "Nouvelle quête :";    ["GERMAN"] = "Neue Aufgabe:";   };
        ["COMPLETEDQUEST"] = {["ENGLISH"] = "Completed:";   ["FRENCH"] = "Terminé :";           ["GERMAN"] = "Abgeschlossen:";  };
        ["FAILEDQUEST"]    = {["ENGLISH"] = "Failed:";      ["FRENCH"] = "Failed\195\169";      ["GERMAN"] = "Gescheitert:";    };

        -- Season specific -- Must match the text given in-game
        [SPRING] = {
            ["SHREWLEISURELY"]       = {["ENGLISH"] = "Stomp-a-Shrew for the Leisurely Gardener";   ["FRENCH"] = "Ecrase-musaraignes pour jardinier amateur";           ["GERMAN"] = "Zerstampft-'ne-Spitzmaus für den geruhsamen Gärtner"; };
            ["SHREWPRACTICED"]       = {["ENGLISH"] = "Stomp-a-Shrew for the Practised Gardener";   ["FRENCH"] = "Ecrase-musaraignes pour jardinier confirm\195\169";   ["GERMAN"] = "Zerstampft-'ne-Spitzmaus für den erfahrenen Gärtner"; };
            ["SHREWELITE"]           = {["ENGLISH"] = "The Stomp-a-Shrew Challenge";                ["FRENCH"] = "Le d\195\169fi de l'\195\169crase-musaraigne";        ["GERMAN"] = "Die \"Zerstampft-'ne-Spitzmaus\"-Herausforderung";    };
            ["SHREWENORMOUS"]        = {["ENGLISH"] = "Stomp-a-Shrew -- An Enormous Shrew";         ["FRENCH"] = "Ecrase-musaraignes -- Une musaraigne gigantesque";    ["GERMAN"] = "Zerstampft-'ne-Spitzmaus - Eine riesige Spitzmaus";   };
            ["FISTFULFLOWERS"]       = {["ENGLISH"] = "A Fistful of Flowers";                       ["FRENCH"] = "Une brassée de fleurs";                               ["GERMAN"] = "Eine Handvoll Blumen";                                };
            ["DISORIENTATION"]       = {["ENGLISH"] = "Disorientation";                             ["FRENCH"] = "Désorientation";                                      ["GERMAN"] = "Orientierungs- losigkeit";                            };
            ["THE_CHICKEN_DASH"]     = {["ENGLISH"] = "The Chicken Dash";                           ["FRENCH"] = "La course au poulet";                                 ["GERMAN"] = "Der Hühnerlauf";                                      };
            ["THE_GREEN_CHALLENGE"]  = {["ENGLISH"] = "The Green Challenge";                        ["FRENCH"] = "Le défi vert";                                        ["GERMAN"] = "Die grüne Herausforderung";                           };
            ["THE_CLOVEN_TRACK"]     = {["ENGLISH"] = "The Cloven Track";                           ["FRENCH"] = "Le circuit verdoyant";                                ["GERMAN"] = "Der geteilte Weg";                                    };
            ["A_SPEEDY_ERRAND"]      = {["ENGLISH"] = "A Speedy Errand";                            ["FRENCH"] = "A toute vitesse";                                     ["GERMAN"] = "Ein eiliger Auftrag";                                 };
            ["A_FOOLS_ERRAND"]       = {["ENGLISH"] = "A Fool's Errand";                            ["FRENCH"] = "Mission impossible";                                  ["GERMAN"] = "Auftrag für einen Idioten";                           };
            ["MISPLACED_COMPANIONS"] = {["ENGLISH"] = "Misplaced Companions";                       ["FRENCH"] = "Les compagnons égarés";                               ["GERMAN"] = "Am falschen Ort";                                     };
            ["A_LAUGH_AT_THE_LOST"]  = {["ENGLISH"] = "A Laugh at the Lost";                        ["FRENCH"] = "Une farce aux perdus";                                ["GERMAN"] = "Ein Witz auf Kosten der Verirrten";                   };
            ["TERRIBLE_TWEENS"]      = {["ENGLISH"] = "Terrible Tweens";                            ["FRENCH"] = "Terribles jeunes";                                    ["GERMAN"] = "Fürchterliche Zwanziger";                             };
        };

        [SUMMER] = { -- Todo: Pick up translations here:
            ["TOOMUCHFESTIVAL"]  = {["ENGLISH"] = "Too Much Festival";          ["FRENCH"] = "Trop de festivités";                  ["GERMAN"] = "Zu viel Feierei";                 };
            ["GOINGHUNGRY"]      = {["ENGLISH"] = "Going Hungry";               ["FRENCH"] = "La faim qui vous tenaille";           ["GERMAN"] = "Hunger schieben";                 };
            ["BELONGINGS"]       = {["ENGLISH"] = "Belongings Gone Fishing";    ["FRENCH"] = "A la pêche aux effets personnels";    ["GERMAN"] = "Ins Wasser gefallen";             };
            ["STOCKINGPOND"]     = {["ENGLISH"] = "Stocking the Pond";          ["FRENCH"] = "Un étang à remplir";                  ["GERMAN"] = "Bestücken des Teichs";            };
            ["FORGOTTENERRANDS"] = {["ENGLISH"] = "Forgotten Errands";          ["FRENCH"] = "Les objets égarés";                   ["GERMAN"] = "Vergessene Besorgungen";          };
            ["WAGER"]            = {["ENGLISH"] = "Losing More Than a Wager";   ["FRENCH"] = "Plus qu'un simple pari";              ["GERMAN"] = "Nicht nur den Einsatz verloren";  };
            ["MISSINGTHINGS"]    = {["ENGLISH"] = "Missing Things";             ["FRENCH"] = "Les objets perdus";                   ["GERMAN"] = "Verlorene Dinge";                 };
        };

        [HARVESTMATH] = {
            -- New Quest: Troves and Trickery -- Thorin's Hall
            -- Completed:\n Troves and Trickery -- Thorin's Hall
            ["TROVESDUILLOND"] = {["ENGLISH"] = "Troves and Trickery -- Duillond";      ["FRENCH"] = "Tours et surprises - Duillond";           ["GERMAN"] = "Schätze und Scherze - Duíllont";      };
            ["TROVESTHORINS"]  = {["ENGLISH"] = "Troves and Trickery -- Thorin's Hall"; ["FRENCH"] = "Tours et surprises - Palais de Thorin";   ["GERMAN"] = "Schätze und Scherze - Thorins Halle"; };
            ["TROVESSHIRE"]    = {["ENGLISH"] = "Troves and Trickery -- the Shire";     ["FRENCH"] = "Tours et surprises - la Comté";           ["GERMAN"] = "Schätze und Scherze - Das Auenland";  };
            ["TROVESBREE"]     = {["ENGLISH"] = "Troves and Trickery -- Bree";          ["FRENCH"] = "Tours et surprises - Bree";               ["GERMAN"] = "Schätze und Scherze - Bree";          };

            -- Wistemad:
            ["A_WINDY_WALK_THROUGH_WISTMEAD"] = {["ENGLISH"] = "A Windy Walk Through Wistmead"; ["FRENCH"] = "Une promenade venteuse à Wistmead";   ["GERMAN"] = "Ein windumwehter Spaziergang durch Wistmet";  }; -- 1879381497
            ["CHALLENGING_WHEAT"]             = {["ENGLISH"] = "Challenging Wheat";             ["FRENCH"] = "Du blé qui donne du fil à retordre";  ["GERMAN"] = "Weizengewirr";                                }; -- 1879380267 or 1879380272?
            ["CHEAT_OF_THE_WHEAT"]            = {["ENGLISH"] = "Cheat of the Wheat";            ["FRENCH"] = "Des blés changeants";                 ["GERMAN"] = "Der Weizentrick";                             }; -- 1879380270 or 1879380271?
            ["GATHERING_GOURDS"]              = {["ENGLISH"] = "Gathering Gourds";              ["FRENCH"] = "La cueillette de calebasses";         ["GERMAN"] = "Flaschenkürbisse sammeln ...";                }; -- 1879380265
            ["PREVENTING_A_MURDER"]           = {["ENGLISH"] = "Preventing a Murder";           ["FRENCH"] = "Empêcher un carnage";                 ["GERMAN"] = "Ausgekrächzt";                                }; -- 1879380266

            -- Haunted Burrow:
            ["A_CELLAR_DOOR_APPEARS"] = {["ENGLISH"] = "A Cellar Door Appears"; ["FRENCH"] = "La porte d'une cave apparaît";    ["GERMAN"] = "Eine Kellertür erscheint";    }; -- 1879189183
            ["BILBOS_LETTER"]         = {["ENGLISH"] = "Bilbo's Letter";        ["FRENCH"] = "La lettre de Bilbon";             ["GERMAN"] = "Bilbos Brief";                }; -- 1879189191
            ["THE_HAUNTED_BURROW"]    = {["ENGLISH"] = "The Haunted Burrow";    ["FRENCH"] = "Le Trou de hobbit hanté";         ["GERMAN"] = "Die heimgesuchte Erdhöhle";   }; -- 1879189266

            ["RATTLING_IN_THE_HAUNTED_BURROW"]    = {["ENGLISH"] = "Rattling in the Haunted Burrow";    ["FRENCH"] = "Du bruit dans le Trou de hobbit hanté";       ["GERMAN"] = "Klappernde Knochen in der \"Heimgesuchten Erdhöhle\"";    }; -- 1879190510
            ["ROARING_MAW_IN_THE_HAUNTED_BURROW"] = {["ENGLISH"] = "Roaring Maw in the Haunted Burrow"; ["FRENCH"] = "Rugissement dans le Trou de hobbit hanté";    ["GERMAN"] = "Brüllender Rachen in der \"Heimgesuchten Erdhöhle\"";     }; -- 1879190509
            ["WAILING_IN_THE_HAUNTED_BURROW"]     = {["ENGLISH"] = "Wailing in the Haunted Burrow";     ["FRENCH"] = "Gémissement dans le Trou de hobbit hanté";    ["GERMAN"] = "Gejammer in der \"Heimgesuchten Erdhöhle\"";              }; -- 1879190440

            ["A_RIDDLE_IN_A_BOTTLE"]                = {["ENGLISH"] = "A Riddle in a Bottle";                ["FRENCH"] = "Une énigme dans une bouteille";               ["GERMAN"] = "Ein Rätsel in einer Flasche";                         }; -- 1879190557
            ["A_STROLL_THROUGH_THE_HAUNTED_BURROW"] = {["ENGLISH"] = "A Stroll Through the Haunted Burrow"; ["FRENCH"] = "Une promenade dans le trou de hobbit hanté";  ["GERMAN"] = "Ein Spaziergang durch die \"Heimgesuchte Erdhöhle\""; }; -- 1879189345
            ["A_RACE_THROUGH_THE_HAUNTED_BURROW"]   = {["ENGLISH"] = "A Race Through the Haunted Burrow";   ["FRENCH"] = "Une course dans le Trou de hobbit hanté";     ["GERMAN"] = "Ein Rennen durch die \"Heimgesuchte Erdhöhle\"";      }; -- 1879189346

            ["THE_GREAT_HOBBIT_RESCUE"] = {["ENGLISH"] = "The Great Hobbit Rescue"; ["FRENCH"] = "Le grand sauvetage des hobbits";  ["GERMAN"] = "Die große Hobbitrettung"; }; -- 1879189326
            ["VALUABLES_GONE_ASTRAY"]   = {["ENGLISH"] = "Valuables Gone Astray";   ["FRENCH"] = "Objets de valeur égarés";         ["GERMAN"] = "Verlorene Wertsachen";    }; -- 1879189325

            ["THE_ALE_ASSOCIATION_A_GAME_OF_HOBBIT_HARRYING"] = {["ENGLISH"] = "The Ale Association -- A Game of Hobbit-harrying";  ["FRENCH"] = "La Confrérie de la cervoise - Une partie de harcèlement de Hobbit";   ["GERMAN"] = "Die Bier-Genossenschaft - Hobbits ärgern";    }; -- 1879190353
            ["THE_INN_LEAGUE_EXCAVATION"]                     = {["ENGLISH"] = "The Inn League Excavation";                         ["FRENCH"] = "La fouille de la Ligue des Tavernes";                                 ["GERMAN"] = "Die Baugrube der Gasthausliga";               }; -- 1879190305
        };

        [YULE] = {
            ["THE_ABOMINABLE_SNOW_BEASTS"]      = {["ENGLISH"] = "The Abominable Snow-beasts";          ["FRENCH"] = "Les abominables b\195\170tes des neiges";             ["GERMAN"] = "Die abscheulichen Schneekreaturen";   };
            ["VILLAIN"]                         = {["ENGLISH"] = "Villain - Frostbluff Theatre";        ["FRENCH"] = "M\195\169chant - Th\195\169\195\162tre de Rivegel";   ["GERMAN"] = "Bösewicht - Frostfels-Theater";       };
            ["EXTRA"]                           = {["ENGLISH"] = "Extra - Frostbluff Theatre";          ["FRENCH"] = "Figurant - Th\195\169\195\162tre de Rivegel";         ["GERMAN"] = "Statist - Frostfels-Theater";         };
            ["PROTAGONIST"]                     = {["ENGLISH"] = "Protagonist - Frostbluff Theatre";    ["FRENCH"] = "Protagoniste - Th\195\169\195\162tre de Rivegel";     ["GERMAN"] = "Hauptdarsteller - Frostfels-Theater"; };
            ["THEATRE"]                         = {["ENGLISH"] = "The Frostbluff Theatre";              ["FRENCH"] = "Le Th\195\169\195\162tre de Rivegel";                 ["GERMAN"] = "Das Frostfels-Theater";               };
            ["STUFFING_THE_STUFFED"]            = {["ENGLISH"] = "Stuffing the Stuffed";                ["FRENCH"] = "Gaver les participants";                              ["GERMAN"] = "Volle Leute vollkommen vollstopfen";  };
            ["EMPTY_KEG_EMERGENCY"]             = {["ENGLISH"] = "Empty Keg Emergency";                 ["FRENCH"] = "Des tonneaux presque vides";                          ["GERMAN"] = "Notfall: Trockenes Fass";             };
            ["THE_BIGGEST_STOMACH_OF_THEM_ALL"] = {["ENGLISH"] = "The Biggest Stomach of Them All";     ["FRENCH"] = "Le plus gros estomac du monde";                       ["GERMAN"] = "Der allergrößte Magen";               };
            -- "A_BROKEN_SNOWMAN"
            -- "A_CHARITABLE_SPIRIT"
            -- "COLD_AS_ICE"
            -- "FILLING_THE_FIELD"
            -- "IN_THE_SPIRIT_OF_YULE"
            -- "MAKING_MISCHIEF"
            -- "MOVING_THEM_OFF"
            -- "TIDYING_UP"
            -- "UNWILLING_FIREWOOD"
            -- "YULE_FESTIVAL_DAILY"            
        };

        [ANNIVERSARY] = {
            ["MIGHTIESTBLOW_BASIC"]  = {["ENGLISH"] = "The Mightiest Blow (Basic)";         ["FRENCH"] = "Le coup fatal (Basique)";                 ["GERMAN"] = "Der Mächtigste Schlag (Anfänger)";        };
            ["MIGHTIESTBLOW_INT"]    = {["ENGLISH"] = "The Mightiest Blow (Intermediate)";  ["FRENCH"] = "Le coup fatal (Interm\195\169diaire)";    ["GERMAN"] = "Der Mächtigste Schlag (Fortgeschritten)"; };
            ["MIGHTIESTBLOW_EXPERT"] = {["ENGLISH"] = "The Mightiest Blow (Expert)";        ["FRENCH"] = "Le coup fatal (Expert)";                  ["GERMAN"] = "Der Mächtigste Schlag (Experte)";         };
            ["BREEFIREWORKS"]        = {["ENGLISH"] = "Fireworks in Bree";                  ["FRENCH"] = "Feux d'artifice \195\160 Bree";           ["GERMAN"] = "Feuerwerk in Bree";                       };
            ["LOSTINVITES"]          = {["ENGLISH"] = "Lost Invitations";                   ["FRENCH"] = "Invitations perdues";                     ["GERMAN"] = "Verlorene Einladungen";                   };
        };

        [FARMERSFAIRE] = {
            ["FAT_MAYOR"]      = { ["ENGLISH"] = "Fat Mayor";       ["FRENCH"] = "Gros maire";                  ["GERMAN"] = "Ein dicker Bürgermeister";    };
            ["BOUNDER_ROUNDS"] = { ["ENGLISH"] = "Bounder Rounds";  ["FRENCH"] = "Les rondes du frontalier";    ["GERMAN"] = "Grenzerstreife";              };

            -- Staffing the Market quests in Bywater with Daisy Sandyman, left-to-right:
            ["APPLE_SHOPPING"]              = { ["ENGLISH"] = "Apple-shopping";                 ["FRENCH"] = "Achat de pommes";                         ["GERMAN"] = "Apfelkauf";                           };
            ["FRESH_SAVOURY_MUSHROOM_STEW"] = { ["ENGLISH"] = "Fresh Savoury Mushroom Stew";    ["FRENCH"] = "Ragoût de champignons frais savoureux";   ["GERMAN"] = "Frischer schmackhafter Pilzeintopf";  };
            ["A_NOSEY_REQUEST"]             = { ["ENGLISH"] = "A Nosey Request";                ["FRENCH"] = "Requête d'une fouineuse";                 ["GERMAN"] = "Eine naseweise Bitte";                };
            ["A_SHOPPING_LIST"]             = { ["ENGLISH"] = "A Shopping List";                ["FRENCH"] = "Une liste de courses";                    ["GERMAN"] = "Eine Einkaufsliste";                  };
            ["A_MARKET_LIST"]               = { ["ENGLISH"] = "A Market List";                  ["FRENCH"] = "Une liste de marchés";                    ["GERMAN"] = "Eine Marktliste";                     };
            ["A_VENDOR_LIST"]               = { ["ENGLISH"] = "A Vendor List";                  ["FRENCH"] = "Une liste de marchands";                  ["GERMAN"] = "Eine Händlerliste";                   };
        };

        [HOBNANIGANS] = {
        };

        [MIDSUMMER] = {
            ["A_CURE_FOR_ALL_ILLS"]         = { ["ENGLISH"] = "A Cure For All Ills";                    ["FRENCH"] = "Un remède pour tous les maux";        ["GERMAN"] = "Ein Mittel gegen jedes Leid";             };
            ["AIDING_THE_STABLE_HANDS"]     = { ["ENGLISH"] = "Aiding the Stable-hands";                ["FRENCH"] = "L'aide aux palefreniers";             ["GERMAN"] = "Hilfe für die Stallhelfer";               };
            ["ARRANGING_ARRANGEMENTS"]      = { ["ENGLISH"] = "Arranging Arrangements";                 ["FRENCH"] = "Dispositions d'arrangements";         ["GERMAN"] = "Schmuck für die Stadt";                   };
            ["ARTISTIC_DIRECTION"]          = { ["ENGLISH"] = "Artistic Direction";                     ["FRENCH"] = "Direction artistique";                ["GERMAN"] = "Richtungsweisende Kunst";                 };
            ["FLORAL_CROWNS"]               = { ["ENGLISH"] = "Floral Crowns";                          ["FRENCH"] = "Couronnes florales";                  ["GERMAN"] = "Blumenkronen";                            };
            ["GROWING_PAINS"]               = { ["ENGLISH"] = "Growing Pains";                          ["FRENCH"] = "Jardinier en herbe";                  ["GERMAN"] = "Wachstumsschmerzen";                      };
            ["HONOURING_HEALERS"]           = { ["ENGLISH"] = "Honouring Healers";                      ["FRENCH"] = "L'hommage aux soignants";             ["GERMAN"] = "Ein Dank an die Heiler";                  };
            ["IN_CELEBRATION_OF_MIDSUMMER"] = { ["ENGLISH"] = "In Celebration of Midsummer";            ["FRENCH"] = "En célébration du Solstice d'été";    ["GERMAN"] = "Zur Feier von Mittsommer";                };
            ["LOVE_IS_IN_THE_AIR"]          = { ["ENGLISH"] = "Love Is In the Air";                     ["FRENCH"] = "Vraie romance";                       ["GERMAN"] = "Liebe liegt in der Luft";                 };
            ["SOMETHING_FLORAL"]            = { ["ENGLISH"] = "Something Floral";                       ["FRENCH"] = "Comme une fleur";                     ["GERMAN"] = "Etwas blumig";                            };
            ["SWEET_TREATS"]                = { ["ENGLISH"] = "Sweet Treats";                           ["FRENCH"] = "La fête pour tout le monde";          ["GERMAN"] = "Süße Grüße";                              };
            ["TO_THE_LAST_DROP"]            = { ["ENGLISH"] = "To the Last Drop";                       ["FRENCH"] = "Jusqu'à la dernière goutte";          ["GERMAN"] = "Bis zum letzten Tropfen";                 };
            ["TOSS_A_COIN"]                 = { ["ENGLISH"] = "Toss a Coin";                            ["FRENCH"] = "Une petite pièce";                    ["GERMAN"] = "Münzwurf";                                };
            ["UNHELPFUL_HOUNDS"]            = { ["ENGLISH"] = "Unhelpful Hounds";                       ["FRENCH"] = "Chiens peu dociles";                  ["GERMAN"] = "Unnütze Hunde";                           };
            ["WEDDING_SUPPLIES"]            = { ["ENGLISH"] = "Wedding Supplies";                       ["FRENCH"] = "Fournitures de mariage";              ["GERMAN"] = "Hochzeitsmaterialien";                    };
            ["WHAT_ALES_YOU"]               = { ["ENGLISH"] = "What Ales You";                          ["FRENCH"] = "Pas de la petite bière";              ["GERMAN"] = "Die Bier-Jahreszeiten";                   };
            ["TASTY_MORSELS"]               = { ["ENGLISH"] = "Tasty Morsels";                          ["FRENCH"] = "Amuse-bouche savoureux";              ["GERMAN"] = "Köstliche Häppchen";                      };
            ["SOMETHING_MISPLACED"]         = { ["ENGLISH"] = "Something Misplaced, Something Blue";    ["FRENCH"] = "Panique au Théâtre Bleu";             ["GERMAN"] = "Etwas Verlegtes, etwas Blaues";           };

            ["LIGHTNING_IN_A_BOTTLE"]       = { ["ENGLISH"] = "Lightning in a Bottle";                  ["FRENCH"] = "Photophores";                         ["GERMAN"] = "Leuchtende Gläser";                       };
            ["AMETHYST_FIREFLY_LANTERNS"]   = { ["ENGLISH"] = "Amethyst Firefly Lanterns";              ["FRENCH"] = "Lanternes à libellule améthyste";     ["GERMAN"] = "Amethystfarbene Glühwürmchenlaternen";    };
            ["EMERALD_FIREFLY_LANTERNS"]    = { ["ENGLISH"] = "Emerald Firefly Lanterns";               ["FRENCH"] = "Lanternes à libellule émeraude";      ["GERMAN"] = "Smaragdgrüne Glühwürmchenlaternen";       };
            ["RUBY_FIREFLY_LANTERNS"]       = { ["ENGLISH"] = "Ruby Firefly Lanterns";                  ["FRENCH"] = "Lanternes à libellule rubis";         ["GERMAN"] = "Rubinrote Glühwürmchenlaternen";          };
            ["SAPPHIRE_FIREFLY_LANTERNS"]   = { ["ENGLISH"] = "Sapphire Firefly Lanterns";              ["FRENCH"] = "Lanternes à libellule saphir";        ["GERMAN"] = "Saphirblaue Glühwürmchenlaternen";        };
        };

    };

    ["BUTTONS"] = {
        ["BACKGROUND"] = {["ENGLISH"] = "Background";                           ["GERMAN"] = "Hintergrund"; };
        ["AUTO_OPEN"]  = {["ENGLISH"] = "Auto open";                            ["GERMAN"] = "Autoöffnen";  };
        ["DANCE"]      = {["ENGLISH"] = "Dance";        ["FRENCH"] = "Danse";   ["GERMAN"] = "Tänze";       };
    };

    ["TOKENS"] = { -- BARTER TOKENS USED AT THE FESTIVALS.

        [SPRING] = {
            [SPRING_FESTIVAL] = 1879151743; -- FESTIVAL
            [SPRING_MITHRIL] = 1879255991; -- MITHRIL
            [SPRING_RACE] = 1879173003; -- RACE
            [SPRING_VIOLET] = 1879103239; -- VIOLET
            [SPRING_MARIGOLD] = 1879103242; -- MARIGOLD
            [SPRING_PRIMROSE] = 1879103241; -- PRIMROSE
        };

        [SUMMER] = {
            [SUMMER_RACE] = 1879115708; -- RACE
            [SUMMER_FESTIVAL] = 1879115679; -- FESTIVAL
            [SUMMER_HADDOCK] = 1879115925; -- HADDOCK
            [SUMMER_AMBERJACK] = 1879115674; -- AMBERJACK
            [SUMMER_LUILLIM] = 1879115675; -- LUILLIM
            [SUMMER_DRUM] = 1879115676; -- DRUM
            [SUMMER_CELEBHAL] = 1879115678; -- CELEBHAL
            [SUMMER_GOLDRED] = 1879115929; -- GOLDRED
            [SUMMER_FLOUNDER] = 1879115924; -- FLOUNDER
            [SUMMER_SMALLFISH] = 1879115927; -- SMALLFISH
            [SUMMER_MITHRIL] = 1879255991; -- MITHRIL
        };

        [HARVESTMATH] = {
            [HARVESTMATH_RACE] = 1879101765; -- RACE
            [HARVESTMATH_FESTIVAL] = 1879098272; -- FESTIVAL
            [HARVESTMATH_MITHRIL] = 1879255991; -- MITHRIL

            [HARVESTMATH_SMALLAPPLE] = 1879098268; -- SMALLAPPLE
            [HARVESTMATH_MEDIUMAPPLE] = 1879098267; -- MEDIUMAPPLE
            [HARVESTMATH_LARGEAPPLE] = 1879098266; -- LARGEAPPLE

            [HARVESTMATH_CRACKEDGEODE] = 1879098262; -- CRACKEDGEODE
            [HARVESTMATH_PRISTINEGEODE] = 1879098261; -- PRISTINEGEODE
            [HARVESTMATH_FAULTLESSGEODE] = 1879098260; -- FAULTLESSGEODE

            [HARVESTMATH_UNIMPRESSIVESCROLL] = 1879098265; -- UNIMPRESSIVESCROLL
            [HARVESTMATH_WELLWRITTENSCROLL] = 1879098264; -- WELLWRITTENSCROLL
            [HARVESTMATH_ELEGANTSCROLL] = 1879098263; -- ELEGANTSCROLL

            [HARVESTMATH_SMALLPUMPKIN] = 1879098271; -- SMALLPUMPKIN
            [HARVESTMATH_MEDIUMPUMPKIN] = 1879098270; -- MEDIUMPUMPKIN
            [HARVESTMATH_LARGEPUMPKIN] = 1879098269; -- LARGEPUMPKIN
        };

        [YULE] = {
            [YULE_FESTIVAL] = 1879256449; -- FESTIVAL
            [YULE_GOLDFESTIVAL] = 1879257572; -- GOLDFESTIVAL
            [YULE_TICKET] = 1879238505; -- TICKET
            [YULE_RACE] = 1879149799; -- RACE
            [YULE_MITHRIL] = 1879255991; -- MITHRIL
        };

        [ANNIVERSARY] = {
            [ANNIVERSARY_RACE] = 1879201266; -- RACE
            [ANNIVERSARY_FESTIVAL] = 1879200721; -- FESTIVAL

            [ANNIVERSARY_STEEL] = 1879303343; -- STEEL
            [ANNIVERSARY_MITHRIL] = 1879255991; -- MITHRIL
        };

        [FARMERSFAIRE] = {
            [FARMERSFAIRE_RACE] = 1879227344; -- RACE
            [FARMERSFAIRE_FESTIVAL] = 1879223715; -- FESTIVAL
            [FARMERSFAIRE_MITHRIL] = 1879255991; -- MITHRIL
        };

        [HOBNANIGANS] = {
            [HOBNANIGANS_TOKEN] = 1879305455; -- HOBNANIGANS_TOKEN            -- Inventory
            [HOBNANIGANS_WHITE_CHICKEN_TOKEN] = 1879305460; -- WHITE_CHICKEN_TOKEN        -- Inventory
            [HOBNANIGANS_RED_CHICKEN_TOKEN] = 1879305459; -- RED_CHICKEN_TOKEN            -- Inventory
            [HOBNANIGANS_DORKING_CHICKEN_TOKEN] = 1879305456; -- DORKING_CHICKEN_TOKEN        -- Inventory
            [HOBNANIGANS_SCRAPPER_CHICKEN_TOKEN] = 1879305454; -- SCRAPPER_CHICKEN_TOKEN    -- Inventory
            [HOBNANIGANS_BLACKFOOT_CHICKEN_TOKEN] = 1879305457; -- BLACKFOOT_CHICKEN_TOKEN    -- Inventory
            [HOBNANIGANS_ORANGE_WYANDOTTE_TOKEN] = 1879305458; -- ORANGE_WYANDOTTE_TOKEN    -- Inventory
            [HOBNANIGANS_MITHRIL] = 1879255991; -- MITHRIL
        };

        [MIDSUMMER] = {
            [MIDSUMMER_TOKEN] = 1879406105; -- MIDSUMMER_TOKEN -- Wallet
            [MIDSUMMER_MC] = 1879255991; -- MITHRIL
        };
    };

    ["OPTIONS"] = {
        --["OPTIONS_BUTTON_TOOLTIP"] = {["ENGLISH"] = "Open the Festival Buddy options."; ["GERMAN"] = "Öffnet Festival Buddy Optionen"; };
        ["MAP_OPTIONS"]     = {["ENGLISH"] = "Map Options: ";       ["FRENCH"] = "Map Options: ";       ["GERMAN"] = "Kartenoptionen: ";            };
        ["MAP_AUTO_OPEN"]   = {["ENGLISH"] = "Auto-open Map";       ["FRENCH"] = "Auto-open Map";       ["GERMAN"] = "Karte automatisch öffnen";    };
        ["MAP_ORIENTATION"] = {["ENGLISH"] = "Map Up Direction: ";  ["FRENCH"] = "Map Up Direction: ";  ["GERMAN"] = "Karten Orientierung: ";       };

        ["MAP_ORIENTATION_DIRECTIONS"] = {
            ["ENGLISH"] = {
                [NORTH] = "North";
                [EAST] = "East";
                [SOUTH] = "South";
                [WEST] = "West";
                [RANDOM] = "Random";
            };
            ["FRENCH"] = {
                [NORTH] = "Nord";
                [EAST] = "Est";
                [SOUTH] = "Sud";
                [WEST] = "Ouest";
                [RANDOM] = "Aléatoire";
            };
            ["GERMAN"] = {
                [NORTH] = "Nord";
                [EAST] = "Ost";
                [SOUTH] = "Süd";
                [WEST] = "West";
                [RANDOM] = "Zufall";
            };
        };

        ["ESCAPE_KEY_CLOSES_WINDOWS"] = { ["ENGLISH"] = "Escape key closes Festival Buddy windows"; ["GERMAN"] = "ESC-Taste schließt Festival Buddy"; };

        ["QUICK_GUIDE"]                   = { ["ENGLISH"] = "Quick Guide:";                                         ["GERMAN"] = "Schnell-Liste:";                                      };
        ["QUICK_GUIDE_REMOVE_COMPLETED"]  = { ["ENGLISH"] = "Remove completed items from list";                     ["GERMAN"] = "Fertige Punkte aus der Liste entfernen";              };
        ["QUICK_GUIDE_CLEAR_DELAY"]       = { ["ENGLISH"] = "Delay in seconds before completed items are removed:"; ["GERMAN"] = "Verzögerung in Sekunden bis Punkte entfernt werden";  };
        ["QUICK_GUIDE_QUESTS_TO_INCLUED"] = { ["ENGLISH"] = "Quests to include in quick guide:";                    ["GERMAN"] = "Aufgaben, die in die Schnell-Liste sollen";           };

        ["HARVESTMATH_MAZE_ID_LABEL"] = {
            ["ENGLISH"] = "Change current Harvestmath maze:";
            ["GERMAN"] = "Ändere das aktuelle Herbst-Labyrinth:";
        };

        ["HARVESTMATH_MAZE_ID_BUTTON"] = {
            ["ENGLISH"] = "Change";
            ["GERMAN"] = "Ändern";
        };

        ["MAIN_WINDOW_SCALING"] = {
            ["ENGLISH"] = "Main Window Scaling: %.1fx";
            ["GERMAN"] = "Haupt-Fenster Vergrößerung: %.1fx";
        };
    };
};

function GetString(table, language)
    if (type(table) == "table") then
        if (language == nil or
            language == "") then
            language = CLIENTLANG;
        end
        if (table[language] ~= nil) then
            return table[language];
        end
        if (table["ENGLISH"]) then
            return table["ENGLISH"];
        end
        return "";
    elseif (type(table) == "nil") then
        -- Nothing to check
        return "";
    else
        -- Not a table
        return table;
    end
end