if (global.flashlightOn == true)
{
	count++;
	if (count >= 3)
	{
		instance_destroy(self)
	}
}