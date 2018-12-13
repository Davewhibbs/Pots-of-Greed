x = room_width / 2;
y = room_height / 2;

menu_move = 0;
menu_x = x;
menu_y = y;
title_x = x;
title_y = y - 128;
button_h = 70;

// Buttons
button[0] = "Smash!";
button[1] = "Quit";
buttons = array_length_1d(button);

cursor_moved = false;
menu_index = 0;
last_selected = 0;
pad_up = false;
pad_down = false;
controller = 0;

// Dependencies
input = instance_create_layer(0, 0, "Instances", o_input);

if !audio_is_playing(snd_game_music){
	audio_play_sound(snd_game_music, 1, true);
}


