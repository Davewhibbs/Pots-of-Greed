/// @description Create coin spawners for each player, and each player

for (var i = 0; i < array_length_1d(global.player_array); i++){
	// Move the players and create spawners
	switch i {
		case 0:
			global.player_array[0].x = o_player_spawn_0.x;
			global.player_array[0].y = o_player_spawn_0.y;
			create_coin_spawner(global.player_array[0]);
			break;
		
		case 1: 
			global.player_array[1].x = o_player_spawn_1.x;
			global.player_array[1].y = o_player_spawn_1.y;
			create_coin_spawner(global.player_array[1]);
			break;
			
		case 2: 
			global.player_array[2].x = o_player_spawn_2.x;
			global.player_array[2].y = o_player_spawn_2.y;
			create_coin_spawner(global.player_array[2]);
			break;
			
		case 3: 
			global.player_array[3].x = o_player_spawn_3.x;
			global.player_array[3].y = o_player_spawn_3.y;
			create_coin_spawner(global.player_array[3]);
			break;
		
		default: 
			global.player_array[0].x = o_player_spawn_0.x;
			global.player_array[0].y = o_player_spawn_0.y;
			create_coin_spawner(global.player_array[0]);
		
		break;
	}
}