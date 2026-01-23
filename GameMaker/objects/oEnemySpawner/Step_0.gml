// Spawning logic
if (spawn_cooldown > 0) {
    spawn_cooldown -= 5; // Decrease cooldown timer
} else {

    // Check if the number of enemies is below the limit

    if (instance_number(oEnemy) < max_enemies) {
        // Determine spawn position

        var spawn_x = random_range(50, room_width - 50); // Random X position within the room bounds
        var spawn_y = random_range(50, room_height - 50); // Random Y position within the room bounds

        // Validate spawn position (ensure it's not inside a wall or invalid area)

        while (place_meeting(spawn_x, spawn_y, oWall)) {
            spawn_x = random_range(50, room_width - 50);
            spawn_y = random_range(50, room_height - 50);
		}
        while (place_meeting(spawn_x, spawn_y, oWall_2)) {
            spawn_x = random_range(50, room_width - 50);
            spawn_y = random_range(50, room_height - 50);

        }

        // Spawn the enemy

        var enemy = instance_create_layer(spawn_x, spawn_y, "Next_level", oEnemy);

        // Set enemy properties

        enemy.move_direction = choose(1, -1); // Random initial direction (1 = right, -1 = left)

        // Reset spawn cooldown
        spawn_cooldown = spawn_interval; // Cooldown before next spawn
    }
}