draw_surface(application_surface, 0, 0);

//draw_set_alpha(0.8);

// TODO: Quick hack to prevent the main menu be overdrawn
var _hole_punch = true
if room == MainMenu || room == SettingsMenu {
	_hole_punch = false	
}

if (surface_exists(lightsurface) && _hole_punch)
{

draw_surface(lightsurface, 0 ,0)

draw_set_alpha(0.8);
}