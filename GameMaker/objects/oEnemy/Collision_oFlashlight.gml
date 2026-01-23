if (global.flashlightOn == true)
{
	count++;
	if (count >= 5)
	{
		instance_destroy(self)
	}
}