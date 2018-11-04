/// @description Insert description here
// You can write your code in this editor

// At a certain time, set the states of all players to Move
if timer == timer_start - 3 {
	for (var i = 0; i < array_length_1d(global.player_array); i++){
		global.player_array[i].state = "Move";
	}
}

if timer <= 0 {
	for (var i = 0; i < array_length_1d(global.player_array); i++){
		global.player_array[i].state = "Still";
	}
}


// Switch to endgame screen at the end of the game
if timer < -1 {
	room_goto(rm_end);
}


// Update the score
for (var i = 0; i < array_length_1d(global.player_array); i++){
	switch i {
		case 0 :
			global.score_0 = global.player_array[0].gold;
			break;
			
		case 1 :
			global.score_1 = global.player_array[1].gold;
			break;
			
		case 2 :
			global.score_2 = global.player_array[2].gold;
			break;
			
		case 3 :
			global.score_3 = global.player_array[3].gold;
			break;
	}
}




