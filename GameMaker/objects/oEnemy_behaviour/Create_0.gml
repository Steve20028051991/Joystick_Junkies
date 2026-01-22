alert = false;
// distance enemy will engage with player
alert_dis = 350;
// Create Path

path = path_add();
//speed of enemy

move_spd = 3;

// delay for calculating path
calc_path_delay = 30;
//set timer - start at 0 so first path calculation happens immediately
calc_path_timer = 0;

count = 0;

show_debug_message("Enemy created at (" + string(x) + "," + string(y) + ") with move_spd: " + string(move_spd));

