x = oPlayer.x;
y = oPlayer.y;


if (mouse_y > oPlayer.y)
{
	image_index = 1;
}
if (mouse_y < oPlayer.y)
{
	image_index = 9;
}
if (mouse_x > oPlayer.x)
{
	image_index = 5;
}
if (mouse_x < oPlayer.x)
{
	image_index = 13;
}