
//sprite_index = idle_sprite;


// On a certain, apply friction
if animation_run_from_frame(4) {
	xSpeed = 0;
} else {
	if input.x_input > 0 {
		xSpeed = lerp(xSpeed, move_speed, acceleration);
	}
	
	else if input.x_input < 0{
		xSpeed = lerp(xSpeed, -move_speed, acceleration);
	}
	
	else if (input.x_input == 0){
		xSpeed = lerp(xSpeed, 0, acceleration);
	}
}


// check if we're on the ground or in the air
if !place_meeting(x, y+1, o_terrain){
	//Fall
	ySpeed = approach(ySpeed, fall_speed, grav);
}
else {
	ySpeed = 0;
	
	// Only jump if on the ground
	if input.jump {
		jump_script(jump_height);
	}
}



