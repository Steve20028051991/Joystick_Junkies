if minenergy >= energy
{
	energy = 0;
}

x = oPlayer_2.x;
y = oPlayer_2.y;

if (mouse_button && global.flashlightOn == false)
{
	global.flashlightOn = true;
	visible = true;
}
else if (mouse_check_button_released)
{
	global.flashlightOn = false;
	visible = false;
}

if (global.flashlightOn == true)
{
	image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
	global.energy -= 0.3;
	if (global.energy <= 0)
	{
		global.flashlightOn = false;
		visible = false;
	}
}
