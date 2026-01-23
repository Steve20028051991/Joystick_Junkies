if (keyboard_check_pressed(vk_up))
{
	if (menuOption != 1)
	{
		menuOption--;
		image_index--;
	}
}
else if (keyboard_check_pressed(vk_down))
{
	if (menuOption != 3)
	{
		menuOption++;
		image_index++;
	}
}

slideRight = keyboard_check(vk_right);
slideLeft = keyboard_check(vk_left);

switch (menuOption)
{
	case 1: //Music
		if (slideRight && global.musicVolume != 100)
		{
			global.musicVolume++;
			
			show_debug_message(global.musicVolume);
		}
		else if (slideLeft && global.musicVolume != 0)
		{
			global.musicVolume--;
			show_debug_message(global.musicVolume);
		}
		
		break;
	case 2: //SFX
		if (slideRight && global.SFXVolume != 100)
		{
			global.SFXVolume++;
		}
		else if (slideLeft && global.SFXVolume != 0)
		{
			global.SFXVolume--;
		}
		
		break;
	case 3:
		if (keyboard_check_pressed(vk_enter))
		{
			room_goto(MainMenu);
		}
		break;
	
}