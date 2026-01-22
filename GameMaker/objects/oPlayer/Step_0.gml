rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right);
leftKey = keyboard_check(ord("A")) || keyboard_check(vk_left);
upKey = keyboard_check(ord("W")) || keyboard_check(vk_up);
downKey = keyboard_check(ord("S")) || keyboard_check(vk_down);

hSpeed = (rightKey	- leftKey) * moveSpeed;
vSpeed = (downKey - upKey) * moveSpeed;

move_and_collide(hSpeed * moveSpeed, vSpeed * moveSpeed, oWall);
