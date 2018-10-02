
//sprite_index = idle_sprite;





// check if we're on the ground or in the air
if !place_meeting(x, y+1, o_terrain){
	//Fall
	ySpeed = approach(ySpeed, fall_speed, grav);
	
	// Slowly apply friction
	xSpeed = lerp(xSpeed, 0, air_friction);
}
else {
	ySpeed = 0;
	
	// Quickly apply friction
	xSpeed = lerp(xSpeed, 0, ground_friction);
	
	// Only jump if on the ground
	if input.up {
		jump(jump_height);
	}
}

