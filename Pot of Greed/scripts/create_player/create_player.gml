/// @param x
/// @param y
/// @param controller
/// @param in_game
/// @param score

var controller = argument2;
var in_game = argument3;

var player = instance_create_layer(argument0, argument1, "Players", o_player);
player.controller = controller;
player.input.controller = controller;
player.in_game = in_game;


if in_game {
	switch controller {
		
		case 0:
			gold = global.score_0;
			break;
			
		case 1:
			gold = global.score_1;
			break;
			
		case 2:
			gold = global.score_2;
			break;
			
		case 3:
			gold = global.score_3;
			break;
			
		default:
			gold = global.score_0;
			break;
	}
}

set_player_color(controller, player);

return player;