rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right);
leftKey = keyboard_check(ord("A")) || keyboard_check(vk_left);
upKey = keyboard_check(ord("W")) || keyboard_check(vk_up);
downKey = keyboard_check(ord("S")) || keyboard_check(vk_down);

show_debug_message($"Up: {upKey}")

hSpeed = (rightKey	- leftKey) * moveSpeed;
vSpeed = (downKey - upKey) * moveSpeed;

show_debug_message($"VSpeed: {vSpeed}")

if (hSpeed != 0 || vSpeed != 0)
{
	move_and_collide(hSpeed * moveSpeed, vSpeed * moveSpeed, oWall);
	image_speed = 2;
}

else
{
	image_speed = 0;
}






image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;