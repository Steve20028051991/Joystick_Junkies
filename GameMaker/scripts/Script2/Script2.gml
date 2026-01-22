function check_for_player(){
	// Check if player exists and is within alert distance
	if (!instance_exists(oPlayer)) {
		alert = false;
		return false;
	}

	var _dis = distance_to_object(oPlayer);

	if (_dis <= alert_dis) {
		if (!alert) {
			show_debug_message("Enemy alerted! Player within range: " + string(_dis));
		}
		alert = true;
	} else {
		alert = false;
	}

	return alert;
}