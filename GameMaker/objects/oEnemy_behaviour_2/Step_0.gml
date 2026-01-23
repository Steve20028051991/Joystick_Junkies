// movement for enemy AI
// Check if player is within alert distance
if (instance_exists(oPlayer_2)) {
	var _dis = distance_to_object(oPlayer_2);
	if (_dis <= alert_dis) {
		if (!alert) {
			show_debug_message("Enemy alerted! Player within range: " + string(_dis));
		}
		alert = true;
	} else {
		alert = false;
	}
} else {
	alert = false;
}

// Debug once per second
if (current_time mod 1000 < 16) {
	var grid_status = variable_global_exists("mp_grid") ? string(global.mp_grid) : "not initialized";
	show_debug_message("Alert: " + string(alert) + " | Distance: " + string(distance_to_object(oPlayer_2)) + " | Timer: " + string(calc_path_timer) + " | Grid: " + grid_status);
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
			show_debug_message("Calculating path from (" + string(x) + "," + string(y) + ") to player at (" + string(oPlayer_2.x) + "," + string(oPlayer_2.y) + ")");
			var found_oPlayer_2 = mp_grid_path(global.mp_grid, path, x, y, oPlayer_2.x, oPlayer_2.y, true);

			// start path if player can be reached
			if (found_oPlayer_2) {
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
	

if(place_meeting(x, y, oWall_2)){
	for(var i = 0; i < 1000; ++i) {
		if(!place_meeting(x + i, y,oWall_2)){
			x += i;
			break;
		}
				if(!place_meeting(x - i, y,oWall_2)){
			x -= i;
			break;
		}
				if(!place_meeting(x, y - i,oWall_2)){
			x -= i;
			break;
		}
				if(!place_meeting(x, y + i,oWall_2)){
			x += i;
			break;
		}
				if(!place_meeting(x + i, y - i,oWall_2)){
			x += i;
			y -= i;
			break;
		}
				if(!place_meeting(x - i, y - i,oWall_2)){
			x -= i;
			y -= i;
			break;
		}
				if(!place_meeting(x + i, y + i,oWall_2)){
			x += i;
			y += i;
			break;
		}
				if(!place_meeting(x - i, y + i,oWall_2)){
			x -= i;
			y += i;
			break;
		}
	}
}