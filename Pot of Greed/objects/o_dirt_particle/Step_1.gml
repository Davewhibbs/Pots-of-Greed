/// @description Randomly assign a sprite and speeds

var chance_1 = 25;
var chance_2 = 50;
var chance_3 = 75;
var chance_4 = 100;

var rand	= irandom_range(0, 100);

if rand <= chance_1 {
	sprite_index = s_dirt_particle_1;
}
else if rand > chance_1 && rand <= chance_2 {
	sprite_index = s_dirt_particle_2;
}
else if rand > chance_2 && rand <= chance_3 {
	sprite_index = s_dirt_particle_3;
}
else if rand > chance_3 && rand <= chance_4 {
	sprite_index = s_dirt_particle_4;
}


// Randomly assign speeds
xSpeed		= -creator.image_xscale * irandom_range(x_min, x_max);
ySpeed		= irandom_range(y_min, y_max);
rot_speed	= irandom_range(rot_min, rot_max);

