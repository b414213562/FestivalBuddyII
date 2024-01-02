import "Turbine.UI";

ReloadFestivalBuddy = Turbine.UI.Control();
ReloadFestivalBuddy:SetWantsUpdates( true );

ReloadFestivalBuddy.Update = function( sender, args )
    ReloadFestivalBuddy:SetWantsUpdates( false );
    Turbine.PluginManager.UnloadScriptState( 'FestivalBuddy' );
    Turbine.PluginManager.LoadPlugin( 'Festival Buddy II' );
end