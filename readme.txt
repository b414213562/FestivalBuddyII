v2.1.5 changes:
    Festivals:
        Anniversary:
            Updated barter items

v2.1.4 changes:
    General:
        Incorporated code from Thurallor's Reminders for detecting the server/local time offset.
            Note: The local time offset detection tries to determine if you are in the period when the U.S. and Europe are entering / leaving daylight saving time at different times. It may get this wrong.

    Festivals:
        Inn League / Ale Association:
            Added French and German versions of Inn League / Ale Association quick guide.
        Harvestmath:
            Added local time offset detection to the Harvestmath Maze ID window.
            Incorporated local time offset into maze ID logic.
        Yule:
            Updated barter items.
            Added a missing hyphen in English version of Yule quick guide ("snow-beast").
    
    Bug fix:
        Reset button and credits no longer cover the quick guide scrollbar.
        Fixed position detection via /loc, /pos, and /emp

v2.1.3 changes:
    Festivals:
        Incorporated numerous German translations from Mandraval.

        Midsummer:
            Updated barter items:
        Farmers Faire:
            Updated barter items.
        Yule:
            Updated barter items.
        Hobnanigans:
            Fixed an issue where games on Field 1 would not be recognized.
    
    General:
        Made barter window resizable vertically
        Multiple alerts can now be displayed, which is useful for doing Bounders Rounds + Fat Mayer at the same time.

    Bug fix:
        Fixed an issue where an old Festival Buddy save file had Summer selected and it wasn't correctly converted to Farmers Faire.

v2.1.2 changes:
    Festivals:
        Spring:
            Updated order of Marigold and Violet tokens to match helper text for A Fistful of Flowers
        Midsummer:
            Added German translations from Mandraval for Quick Guide.
        Harvestmath:
            Added German translations from Mandraval for quests and Quick Guide.
        Hobnanigans:
            Added French and German translations so that the scoreboard should automatically track the state of the game.
            Note: The field number is missing from the Field 1 quest, so tracking does not work correctly there yet.

    General:    
        Stopped generating empty AllServers/FestivalBuddy_ImageIDs.plugindata file.
        Added additional German translations from Mandraval for UI.

    Bugs:
        Fixed bug that prevented token counts from updating.
        Bumped file format for character-specific data from 2.0 to 2.1 to update in-progress quest data.
            Reduced number of entries that were being saved.
            Summer entries should have been updated to Farmers Faire when Summer was removed in 2.1.1.
        Enabled Festivity Token display for Anniversary, Farmers Faire, and Yule festivals.

v2.1.1 changes:
    Festivals:
        Added French translations for Yule Quick Guide.
        Added German translations from Mandraval for UI and Quick Guide.
        Removed /cheer emote window for The Abominable Snow Beasts quest. (Quest tracker provides this automatically.)
        Reordered festivals to match appearance in calendar year.
        Fixed order of currencies in the Alts Window.
        Updated Spring barter items.
        Consolidated old Summer festival into Farmers Faire.
    
    Language:
        Fixed French name for "Secret Treasure - Chest".

    Quick Guides:
        Added Inn League / Ale Association Quick Guide. (Based on hunter travel skills.)
        Updated Yule Quick Guide.
        Added color highlighting to Quick Guides.
        Added options to control use and color of highlighting.

    Other:
        Updated how Festival Buddy II save files store data. Files will be automatically updated when FBII loads.
        Changed window scaling logic so that if it is close to 100%, it snaps back to 100% to avoid UI blurring.

v2.0.4 changes:
    Festivals:
        Added Yule quick guide

    Bug Fixes:
        Fixed bug in quick guides that paid attention to shift key when it sometimes shouldn't.
        Emote shortcuts now work correctly with non-basic ASCII characters.

v2.0.3 changes:
    Festivals:
        Added Harvestmath quest guides for Tanglecorn and Haunted Burrow.
            Thanks to Dt for excellent maps of Tanglecorn!
            Haunted Burrow maps are based on the Haunted Burrow map by Brandie from the wiki.
        Midsummer:
            Corrected Something Misplaced, Something Blue map and quick guide entry.
    UI:
        Added option to scale main window for readability.
    Language:
        Added in numerous German translations from Mandraval.
        Updated some French translations.

v2.0.2 changes:
    Bugs:
        Mini-icon now correctly hides itself when the HUD is hidden.

v2.0.1 changes:
    Features:
        Released FestivalBuddy + Festival Buddy Extended Support + the below as Festival Buddy II.
        Added Hedge Maze Map support for Spring Festival.
        Added Midsummer Festival.
        Added Midsummer Quick Guide.
            Quick Guide based on LilRedHead's excellent LOTRO Midsummer Festival - Quick Guide at https://lifebeyondtheshire.com/lotro-midsummer-festival-quick-guide/.
            To the Last Drop reference image sourced from https://lotro-wiki.com/index.php/Quest:To_the_Last_Drop . Thanks to Egarthur for the best image I could find or make!
        Added option to not close Festival Buddy when escape key is pressed.

    Bugs:
        Fixed order of festival tokens at top of window.

