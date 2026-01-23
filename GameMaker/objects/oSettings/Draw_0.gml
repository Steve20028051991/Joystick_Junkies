switch (menuOption)
{
	case 1:
		draw_text_transformed_color(1600,840,$">> {global.musicVolume} <<",3,3,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
		draw_text_transformed_color(1600,990,$">> {global.SFXVolume} <<",3,3,0,c_white,c_white,c_white,c_white,1);
		break;
	case 2:
		draw_text_transformed_color(1600,840,$">> {global.musicVolume} <<",3,3,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(1600,990,$">> {global.SFXVolume} <<",3,3,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
		break;
	case 3:
		draw_text_transformed_color(1600,840,$">> {global.musicVolume} <<",3,3,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(1600,990,$">> {global.SFXVolume} <<",3,3,0,c_white,c_white,c_white,c_white,1);
		break;
}
draw_self()