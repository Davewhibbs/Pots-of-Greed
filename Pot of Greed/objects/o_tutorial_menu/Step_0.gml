


// GEET CONTROLLER INPUT
if gamepad_is_connected(0){ 
	button_move = gamepad_button_check_pressed(0, gp_padd) - gamepad_button_check_pressed(0, gp_padu);
	menu_move = button_move;
}

// GET KEYBOARD INPUT
if menu_move == 0 {
	menu_move = keyboard_check_pressed(vk_left) - keyboard_check_pressed(vk_right);
}


// UPDATE MENU_INDEX
menu_index += menu_move;
if (menu_index < 0)			menu_index = buttons -1;
if (menu_index > buttons-1) menu_index = 0;


if (menu_index != last_selected) audio_play_sound(snd_button, 1, false);

last_selected = menu_index;







// BUTTON SELECTION
if menu_pressed == false {
	
	// Check for a selection
	menu_press = keyboard_check(vk_enter);
	if menu_press == false { menu_press = gamepad_button_check(0, gp_face1); }
	if menu_press == false { menu_press = gamepad_button_check(0, gp_start); }
	
	
	// Set button attributes
	var i = 0;
	repeat (buttons){
		if i == menu_index {
			button[i].hover = true;
		} else {
			button[i].hover = false;
		}
		i++;
	}
	
	// Only run this once
	if menu_press == true {
		button[menu_index].pressed = menu_press;
		button[menu_index].image_index = 2;
		audio_play_sound(snd_cash_register, 10, 0);
		menu_pressed = true;
	}
}



