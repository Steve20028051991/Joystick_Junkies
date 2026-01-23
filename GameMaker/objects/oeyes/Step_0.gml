switch (global.keysCollected)
{
	case 0:
		image_speed = 0;
		image_index = 2;
		break;
	case 2:
		image_speed = 0;
		image_index = 1;
		break;
	case 3:
		image_speed = 1;		
		break;
	default:
		image_speed = 0;
		image_index = 2;
		break;


}