if (!surface_exists(lightsurface))
{
  camw = winddow_get_width();
  camh = window_get_height();
  lightssurface = surface_create(camw,camh);
}

surface_set_target(lightsurface);

camera_apply(cam);

draw_clear(c_black);

gpu_set_blendmode(bm_subtract)

draw_sprite_ext(s_light, 0, oPlayer.x-120, oPlayer.y-120, 4, 4, 0, c_white, 1);

gpu_set_blendmode(bm_normal);

surface_reset_target();


// code up to here makes black square in the corner of the screen thereafter covers the screen oin black
