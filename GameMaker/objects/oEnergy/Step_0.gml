if energy <= min_energy
{
	energy = 0;
}



if (timer < 0) then 
	{
		timer = 20;
	}


if mouse_check_button(mb_left)
{
    timer -= 1;
	if timer == 0 then
	{
	energy -= 4;
	}
}

if ! mouse_check_button(mb_left)
{
    energy -= 0;
}

