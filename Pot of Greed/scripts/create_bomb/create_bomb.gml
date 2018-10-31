/// @param creator
/// @param x
/// @param y

// Create the bomb
var bomb = instance_create_layer(argument1, argument2, "Particles", o_bomb);

// Set the creator
bomb.creator = argument0;

// Set the starting speed
bomb.xSpeed = 2 * image_xscale;
bomb.ySpeed = -7;

// Reset bomb timer
alarm[1] = bomb_timer;

