if (global.keysCollected == 3)
{
	visible = true;
	if (place_meeting(x,y,oPlayer))
	{
		room_goto(MainMenu);
		global.playerLives = 3;
	}
}