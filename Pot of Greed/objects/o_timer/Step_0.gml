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
if timer < -6 {
	room_goto_previous();
	
	//room_goto(rm_end);
}







