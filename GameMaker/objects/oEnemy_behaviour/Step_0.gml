// movement for enemy AI
//check_for_player();

// Debug once per second
if (current_time mod 1000 < 16) {
	var grid_status = variable_global_exists("mp_grid") ? string(global.mp_grid) : "not initialized";
	show_debug_message("Alert: " + string(alert) + " | Distance: " + string(distance_to_object(oPlayer)) + " | Timer: " + string(calc_path_timer) + " | Grid: " + grid_status);
}

// Only path if player is within alert distance and grid exists
if (alert) {
	if (!variable_global_exists("mp_grid") || global.mp_grid == noone) {
		show_debug_message("ERROR: Grid not initialized or is noone!");
	} else {
		// Countdown the timer
		calc_path_timer--;

		//conditions for checking path
		if (calc_path_timer <= 0) {
			//reset timer
			calc_path_timer = calc_path_delay;

			// Make Path to the player
			show_debug_message("Calculating path from (" + string(x) + "," + string(y) + ") to player at (" + string(oPlayer.x) + "," + string(oPlayer.y) + ")");
			var found_oPlayer = mp_grid_path(global.mp_grid, path, x, y, oPlayer.x, oPlayer.y, true);

			// start path if player can be reached
			if (found_oPlayer) {
				path_end();
				path_start(path, move_spd, path_action_stop, false);
				show_debug_message("Path started! Speed: " + string(move_spd));
			} else {
				show_debug_message("No path found to player!");
			}
		}
	}
} else {
	// Stop following path if player is out of range
	if (path_index != -1) {
		path_end();
	}
}
	

if(place_meeting(x, y, oWall)){
	for(var i = 0; i < 1000; ++i) {
		if(!place_meeting(x + i, y,oWall)){
			x += i;
			break;
		}
				if(!place_meeting(x - i, y,oWall)){
			x -= i;
			break;
		}
				if(!place_meeting(x, y - i,oWall)){
			x -= i;
			break;
		}
				if(!place_meeting(x, y + i,oWall)){
			x += i;
			break;
		}
				if(!place_meeting(x + i, y - i,oWall)){
			x += i;
			y -= i;
			break;
		}
				if(!place_meeting(x - i, y - i,oWall)){
			x -= i;
			y -= i;
			break;
		}
				if(!place_meeting(x + i, y + i,oWall)){
			x += i;
			y += i;
			break;
		}
				if(!place_meeting(x - i, y + i,oWall)){
			x -= i;
			y += i;
			break;
		}
	}
}