

image_speed = 1;


// Move left, right, or idle
if input.x_input > 0 {
	//sprite_index = move_sprite;
	sprite_index = s_player_run;
	image_xscale = 1;
	xSpeed = lerp(xSpeed, move_speed, acceleration);
}

else if input.x_input < 0{
	// Left move sprite
	sprite_index = s_player_run;
	image_xscale = -1;
	xSpeed = lerp(xSpeed, -move_speed, acceleration);
}

else if (input.x_input == 0){
	// Idle sprite
	sprite_index = s_player_idle;
	
	//sprite_index = idle_sprite;
	xSpeed = lerp(xSpeed, 0, acceleration);
}



// check if we're on the ground or in the air
if !place_meeting(x, y+1, o_terrain){
	//Fall
	ySpeed = approach(ySpeed, fall_speed, grav);
	
	// Falling
	if ySpeed > 1 {
		image_speed = 0;
		sprite_index = s_player_jump;
		image_index = 9;
	}

	// Rising
	else if ySpeed < 1 {
		image_speed = 0;
		sprite_index = s_player_jump;
		image_index = 3;
	}
}
else {
	ySpeed = 0;
	
	// Only jump if on the ground
	if input.jump {
		jump_script(jump_height);
	}
}


// Check if clinging
wall_cling();
