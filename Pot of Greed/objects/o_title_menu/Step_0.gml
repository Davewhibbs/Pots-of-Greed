



if gamepad_is_connected(0){ 
	menu_move = gamepad_button_check_pressed(0, gp_padd) - gamepad_button_check_pressed(0, gp_padu);
}

if menu_move = 0 {
	menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
}

//if menu_move == 0 {
//	menu_move = gamepad_axis_value();
//}

menu_index += menu_move;
if (menu_index < 0)			menu_index = buttons -1;
if (menu_index > buttons-1) menu_index = 0;

if (menu_index != last_selected) audio_play_sound(snd_button, 1, false);

last_selected = menu_index;







// Selection
if keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1){
	switch (menu_index) {

	case 0 :
		room_goto_next();
		break;
		
	case 1 :
		game_end();
		break;

}
}