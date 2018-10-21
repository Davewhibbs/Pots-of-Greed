/// @param x
/// @param y
/// @param controller

var player = instance_create_layer(argument0, argument1, "Players", o_player);
player.controller = argument2;
player.input.controller = argument2;

return player;