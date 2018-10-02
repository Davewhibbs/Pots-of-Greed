// Accelerate to a stop
xSpeed = lerp(xSpeed, 0, .001);
// check if we're on the ground or in the air
if !place_meeting(x, y+1, o_terrain){
	//Fall
	ySpeed = approach(ySpeed, fall_speed, grav);
	
	// Slowly apply friction
	xSpeed = lerp(xSpeed, 0, .01);
}
else {
	
	//ySpeed = 0;
	
	// Quickly apply friction
	xSpeed = lerp(xSpeed, 0, .1);
	
	// Only jump if on the ground
	if input.up_pressed {
		jump(jump_height);
	}
}