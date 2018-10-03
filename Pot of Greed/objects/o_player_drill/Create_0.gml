event_inherited();
gold = 0;
damage = 1;

// Physics
acceleration = .5;
crouch_friction = .001;
air_friction = .01;
ground_friction = .3;
move_speed = 4;
fall_speed = 10;
jump_height = -7;
wall_jump_speed = 7;
wall_jump_height = -10;
xSpeed = 0;
ySpeed = 0;

dir = image_xscale;

state = "Move";

// Dependencies
input = instance_create_layer(0, 0, "Meta", o_input);

// Diggin Variables
timer = 0;
dig_input = "None";
dig_terrain = noone;