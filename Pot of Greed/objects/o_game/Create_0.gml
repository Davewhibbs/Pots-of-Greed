//----------DETERMINE WHICH PLAYERS ARE PLUGGED IN
var gamepad_slots = gamepad_get_device_count();
for (var i = 0; i < gamepad_slots; i++){
	if gamepad_is_connected(i){
		
		// Create players and assign controllers
		switch i {
			case 0:
				create_player(o_player_spawn_0.x, o_player_spawn_0.y, 0);
				break;
			
			case 1: 
				create_player(o_player_spawn_1.x, o_player_spawn_1.y, 1);
				break;
			
			default: break;
		}
	}
}


// --------- Set up Countdown
timer = 60;
alarm_timer = room_speed;
alarm[0] = alarm_timer;