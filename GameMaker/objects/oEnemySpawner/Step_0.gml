//spawning logic 

if (spawn_cooldown > 0) {
	
spawn_cooldown -= 1;
}else{

	//check number of enemies on map
	if (instance_number(oEnemy) < max_enemies) {}
	
		
		var spawn_x = random_range(50, room_width - 50);
		var spawn_y = random_range(50, room_width - 50);
		
		//while (place_meeting(spawn_x, spawn_y,oWall,)){
	   while (place_meeting(spawn_x, spawn_y, oWall))
		var spawn_x = random_range(50, room_width - 50);
		var spawn_y = random_range(50, room_width - 50);
		
		 while (place_meeting(spawn_x, spawn_y, oWall_2))
		var spawn_x = random_range(50, room_width - 50);
		var spawn_y = random_range(50, room_width - 50);
		
}
		var enemy = instance_create_layer(spawn_x, spawn_y, "Instances", oEnemey);