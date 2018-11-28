///@param controller
///@param player

var player = argument1;


// Change the player's sprites based on the controller number
switch argument0 {

	case 0:
		player.sprite_index = s_player_idle_1;
		player.run_sprite	= s_player_run_1;
		player.idle_sprite = s_player_idle_1;
		player.jump_sprite = s_player_jump_1;
		player.fall_sprite = s_player_fall_1;
		player.smash_sprite = s_player_smash_1;
		break;
		
	case 1:
		player.sprite_index = s_player_idle_2;
		player.run_sprite	= s_player_run_2;
		player.idle_sprite = s_player_idle_2;
		player.jump_sprite = s_player_jump_2;
		player.fall_sprite = s_player_fall_2;
		player.smash_sprite = s_player_smash_2;
		break;
		
	case 2:
		player.sprite_index = s_player_idle_3;
		player.run_sprite	= s_player_run_3;
		player.idle_sprite = s_player_idle_3;
		player.jump_sprite = s_player_jump_3;
		player.fall_sprite = s_player_fall_3;
		player.smash_sprite = s_player_smash_3;
		break;
		
	case 3:
		player.sprite_index = s_player_idle_4;
		player.run_sprite	= s_player_run_4;
		player.idle_sprite = s_player_idle_4;
		player.jump_sprite = s_player_jump_4;
		player.fall_sprite = s_player_fall_4;
		player.smash_sprite = s_player_smash_4;
		break;
}