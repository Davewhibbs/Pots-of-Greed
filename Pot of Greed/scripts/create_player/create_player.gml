/// @param x
/// @param y
/// @param controller

var controller = argument2;

var player = instance_create_layer(argument0, argument1, "Players", o_player);
player.controller = controller;
player.input.controller = controller;

set_player_color(controller, player);

return player;