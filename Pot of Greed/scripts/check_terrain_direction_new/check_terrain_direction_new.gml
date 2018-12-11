// Check if this is a dirt or a gold block
if object_index == o_terrain_basic {
	
	// Check if there is a block above
	if place_meeting(x, y - 1, o_terrain){
		// Underground
		sprite_index = s_terrain_dirt_17
	} else {
		// Grass
		sprite_index = s_terrain_dirt_10;
	}

}

else if object_index == o_terrain_gold {
	// Check if there is a block above
	if place_meeting(x, y - 1, o_terrain){
		// Underground
		sprite_index = s_terrain_gold_17
	} else {
		// Grass
		sprite_index = s_terrain_gold_10;
	}

}





// If there is, draw with a grass sprite
