if (!surface_exists(lightsurface))
{
  camw = window_get_width();
  camh = window_get_height();
  lightsurface = surface_create(camw,camh);
}

surface_set_target(lightsurface);

camera_apply(cam);

draw_clear(c_black);

gpu_set_blendmode(bm_subtract)

if (instance_exists(oPlayer))
{
  draw_sprite_ext(s_light, 0, oPlayer.x-120, oPlayer.y-120, 4, 4, 0, c_white, 1);
}

if (instance_exists(oPlayer_2))
{
  draw_sprite_ext(s_light, 0, oPlayer_2.x-120, oPlayer_2.y-120, 4, 4, 0, c_white, 1);
}

gpu_set_blendmode(bm_normal);

surface_reset_target();


// code up to here makes black square in the corner of the screen thereafter covers the screen oin black
