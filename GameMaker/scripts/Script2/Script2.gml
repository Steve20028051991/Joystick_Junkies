function check_for_player(){
	
	var _dis = distance_to_object(oPlayer);
	move_towards_point(oPlayer.x, oPlayer.y, 1);
}