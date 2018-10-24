/// @description Move with the player

x = creator.x;

ySpeed = lerp(ySpeed, 20, .1);

// Destroy when touching creator
if place_meeting(x, y, creator){
	creator.gold += 1;
	instance_destroy();
}

y += ySpeed;