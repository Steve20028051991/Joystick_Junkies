if (keyboard_check_pressed(vk_enter))
{
	if (menuOption == 1)
	{
		//Play
		room_goto(Level_1);
	}
	else if (menuOption == 2)
	{
		//Settings
		room_goto(SettingsMenu);
	}
	else if (menuOption == 3)
	{
		//Exit
		game_end()
	}

}

if (keyboard_check_pressed(vk_up))
{
	if (menuOption != 1)
	{
		menuOption--;
	}
}
else if (keyboard_check_pressed(vk_down))
{
	if (menuOption != 3)
	{
		menuOption++;
	}
}

switch (menuOption)
{
	case 1:
		image_index = 0;
		break;
	case 2:
		image_index = 1;
		break;
	case 3:
		image_index = 2;
		break;
}