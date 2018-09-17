// Move flush with the wall
if place_meeting(x + xSpeed, y, o_terrain){
	// move one pixel at a time until flush with wall
	repeat(abs(xSpeed)){
		if(not place_meeting(x + sign(xSpeed), y, o_terrain)){
			x += sign(xSpeed);
		}
		else {
			break;
		}
	}
	xSpeed = 0;
	
	// move slower vertical
	ySpeed = ySpeed * .66;

	// WALL jUMP
	if input.up {
		state = "Wall Jump";
		dir = image_xscale;
	}
	
	image_speed = 0;
	sprite_index = s_player_cling;
}

// Already flush
if place_meeting(x + sign(image_xscale) * 2, y, o_terrain) || place_meeting(x - sign(image_xscale) * 2, y, o_terrain){
	// WALL JUMP
	if input.up {
		state = "Wall Jump";
		dir = image_xscale;
	}	
	
	image_speed = 0;
	sprite_index = s_player_cling;
}