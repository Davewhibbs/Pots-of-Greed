/// @description Create coin spawners for each player, and each player

for (var i = 0; i < array_length_1d(global.player_array); i++){
	// Create players and assign controllers
	switch i {
		case 0:
			create_player(o_player_spawn_0.x, o_player_spawn_0.y, 0);
			create_coin_spawner(global.player_array[0]);
			break;
		
		case 1: 
			create_player(o_player_spawn_1.x, o_player_spawn_1.y, 1);
			create_coin_spawner(global.player_array[1]);
			break;
			
		case 2: 
			create_player(o_player_spawn_2.x, o_player_spawn_2.y, 2);
			create_coin_spawner(global.player_array[2]);
			break;
			
		case 3: 
			create_player(o_player_spawn_3.x, o_player_spawn_3.y, 3);
			create_coin_spawner(global.player_array[3]);
			break;
		
		default: break;
	}
}