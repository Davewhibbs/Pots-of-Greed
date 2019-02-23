//----------DETERMINE WHICH PLAYERS ARE PLUGGED IN


// Initialize global player array
global.player_array = [];


// Reset scores
global.score_0 = 0;
global.score_1 = 0;
//global.score_2 = 0;
//global.score_3 = 0;


// OLD STUFF
// Check how many gamepads are plugged in
/* var player_slots = 2              //FOR CONTROLLERS gamepad_get_device_count();
for (var i = 0; i < player_slots; i++){
	if gamepad_is_connected(i){
		
		// Create players and assign controllers
		switch i {
			case 0:
				global.player_array[0] = create_player(o_player_spawn_0.x, o_player_spawn_0.y, 0, true);
				break;
			
			case 1: 
				global.player_array[1] = create_player(o_player_spawn_1.x, o_player_spawn_1.y, 1, true);
				break;
				
			case 2: 
				global.player_array[2] = create_player(o_player_spawn_2.x, o_player_spawn_2.y, 2, true);
				break;
				
			case 3: 
				global.player_array[3] = create_player(o_player_spawn_3.x, o_player_spawn_3.y, 3, true);
				break;
			
			default: break;
		}
	}
} */



// 2 PLAYER KEYBOARD SETUP
if array_length_1d(global.player_array) == 0 {
	global.player_array[0] = create_player(o_player_spawn_0.x, o_player_spawn_0.y, 0, true);
	global.player_array[1] = create_player(o_player_spawn_1.x, o_player_spawn_1.y, 1, true);
}


