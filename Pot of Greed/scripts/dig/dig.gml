

// Set time to dig based on terrain hp
var max_time = 1 * room_speed * dig_terrain.hp;
var terrain_center_width = dig_terrain.sprite_width/2;
var terrain_center_height = dig_terrain.sprite_height/2;

// Only dig during the specified time limit
if max_time > timer {
	// DIG DOWN
	if dig_input = "Down" {
		// Set terrain's dig state
		
		// Move towards the center of the terrain
		y = lerp(y, terrain_center_height, 1);
		x = lerp(x, terrain_center_width, 1);
		
		
	}
	
	// DIG RIGHT
	if dig_input = "Right" {
		// Move towards the center of the terrain
		y = lerp(y, terrain_center_height, 1);
		x = lerp(x, terrain_center_width, 1);
		
	}
	
	// DIG LEFT
	if dig_input = "Left" {
		// Move towards the center of the terrain
		y = lerp(y, terrain_center_height, 1);
		x = lerp(x, terrain_center_width, 1);

	}
}

