/// @description Bomb Creation

// Set timer
lifetime = room_speed * 3;	// 3 sec
alarm[0] = lifetime;

xSpeed = 0;
ySpeed = 0;

weapon_drag = .1;

creator = noone;
state = "Drop";

flash = 0;
red = 0;
green = 0;
blue = 0;