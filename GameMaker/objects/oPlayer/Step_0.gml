rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right);
leftKey = keyboard_check(ord("A")) || keyboard_check(vk_left);
upKey = keyboard_check(ord("W")) || keyboard_check(vk_up);
downKey = keyboard_check(ord("S")) || keyboard_check(vk_down);

hSpeed = (rightKey	- leftKey) * moveSpeed;
vSpeed = (downKey - upKey) * moveSpeed;


if (hSpeed != 0 || vSpeed != 0)
{
	move_and_collide(hSpeed * moveSpeed, vSpeed * moveSpeed, oWall);
	image_speed = 2;
}
else
{
	image_speed = 0;
}

if (global.playerLives == 0)
{
	show_debug_message("GAME END")
	game_restart();
}

image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;

if(place_meeting(x, y, oWall)){
	for(var i = 0; i < 1000; ++i) {
		if(!place_meeting(x + i, y,oWall)){
			x += i;
			break;
		}
				if(!place_meeting(x - i, y,oWall)){
			x -= i;
			break;
		}
				if(!place_meeting(x, y - i,oWall)){
			x -= i;
			break;
		}
				if(!place_meeting(x, y + i,oWall)){
			x += i;
			break;
		}
				if(!place_meeting(x + i, y - i,oWall)){
			x += i;
			y -= i;
			break;
		}
				if(!place_meeting(x - i, y - i,oWall)){
			x -= i;
			y -= i;
			break;
		}
				if(!place_meeting(x + i, y + i,oWall)){
			x += i;
			y += i;
			break;
		}
				if(!place_meeting(x - i, y + i,oWall)){
			x -= i;
			y += i;
			break;
		}
	}
}