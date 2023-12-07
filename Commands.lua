

function RegisterCommands()

    ---------------------------------------------------------------------------------------------

    -- COMMAND TO DISPLAY / HIDE THE MAIN WINDOW.
    cmdMainWin = Turbine.ShellCommand();

    function cmdMainWin:Execute( command, arguments )
        SetMainWinVisible(not wMainWinParent:IsVisible());
    end

    function cmdMainWin:GetHelp()
        return "Festival Buddy: Shows/hides the main window.";
    end

    function cmdMainWin:GetShortHelp()
        return "Festival Buddy: Shows/hides the main window.";
    end

    Turbine.Shell.AddCommand( "festival", cmdMainWin);

    ---------------------------------------------------------------------------------------------


end





