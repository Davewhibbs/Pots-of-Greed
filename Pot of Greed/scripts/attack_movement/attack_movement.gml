
//sprite_index = idle_sprite;


// On a certain, apply friction
if animation_hit_frame_range(3, 7) {
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
	
	
	// If at this point, transition into a falling attack
	if ySpeed > 0 {
		if animation_hit_frame(5) {
			image_index = 5;
			image_speed = 0;
			plunge = true;
		}
	} else if ySpeed < 0 {
		image_speed = 1;
		plunge = false;
	}
	
	
}
else {
	image_speed = 1;
	plunge = false;
}



