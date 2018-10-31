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

particle_time = 5;
alarm[1] = 0;

bounce = 3;
bounce_height_1 = -5;
bounce_height_2 = -2;
bounce_height_3 = -1;