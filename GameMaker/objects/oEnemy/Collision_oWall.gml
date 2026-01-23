// Stop current path movement
path_end();

// Force immediate path recalculation
calc_path_timer = 0;

show_debug_message("Enemy hit wall - recalculating path");
instance_destroy();
