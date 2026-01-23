if (global.flashlightOn == true)
{
	count++;
	if (count >= 100)
	{
		instance_destroy(self)
	}
}