if (global.keysCollected == 3)
{
	visible = true;
	if (place_meeting(x,y,oPlayer))
	{
		room_goto(Level_2);
		global.playerLives = 3;
	}
}