if (place_meeting(x,y,oPlayer) && global.energy < 75)
{
	global.energy += 25;
	instance_destroy()
}