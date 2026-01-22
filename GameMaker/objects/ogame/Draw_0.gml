// Debug: Draw pathfinding grid when holding Alt
if keyboard_check(vk_alt) {
	draw_set_color(c_white);
	if (global.mp_grid != noone) {
		draw_set_alpha(0.5);
		mp_grid_draw(global.mp_grid);
		draw_set_alpha(1);
		draw_text(10, 10, "Grid active - Green=walkable, Red=blocked");
	} else {
		draw_text(10, 10, "Grid not initialized! Value: " + string(global.mp_grid));
		draw_text(10, 30, "oGame exists: " + string(instance_exists(oGame)));
	}
}