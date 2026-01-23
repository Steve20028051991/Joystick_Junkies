if (!audio_is_playing(TitleMusic))
{
	audio_play_sound(TitleMusic,1,true)
	show_debug_message("Music Playing")
}