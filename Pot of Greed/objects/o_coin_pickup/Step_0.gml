/// @description Move with the player


// If to the right
if x > creator.x {
	xSpeed = lerp(xSpeed, -5, .03);
}
else{
	xSpeed = lerp(xSpeed, 5, .03);
}

// If to the left

// If above plyer, fall down
if y < creator.y - 32{
	ySpeed = lerp(ySpeed, 15, .03);
}

// If below player, fall up
else {
	ySpeed = lerp(ySpeed, -10, .03);
}


// Destroy when touching creator
if place_meeting(x, y, creator){
	creator.gold += 1;
	set_flash(244, 200, 0, creator);
	instance_destroy();
}

y += ySpeed;
x += xSpeed;