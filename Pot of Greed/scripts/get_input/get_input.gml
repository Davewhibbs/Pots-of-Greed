/// ---------- UPDATE INPUT


// Keyboard Inputs 
if controller == 1 { //----------------------------------- PLAYER ONE
	right		= keyboard_check(vk_right);
	left		= keyboard_check(vk_left);
	up			= keyboard_check(vk_up);
	jump		= keyboard_check_pressed(vk_up);
	smash		= keyboard_check(vk_rshift);
	special		= keyboard_check(vk_rcontrol);
	crouch		= keyboard_check(vk_down);
	down		= keyboard_check(vk_down);
}

else if controller == 0 {//------------------------------- PLAYER TWO
	right		= keyboard_check(ord("D"));
	left		= keyboard_check(ord("A"));
	up			= keyboard_check(ord("W"));
	jump		= keyboard_check_pressed(ord("W"));
	smash		= keyboard_check(vk_space);
	special		= keyboard_check(vk_lshift);
	crouch		= keyboard_check(ord("S"));
	down		= keyboard_check(ord("S"));
}
	x_input = right - left;
	y_input = down - up;


// Check if controller is connected and overwrite inputs if it is
/*if gamepad_is_connected(controller){
	// SET DEADZONE
	gamepad_set_axis_deadzone(controller, .2);
	
	// Check Left stick axes for direction
	x_input = gamepad_axis_value(controller, gp_axislh);
	y_input = gamepad_axis_value(controller, gp_axislv);

	// Map buttons
	smash	= gamepad_button_check(controller, gp_face3);
	jump	= gamepad_button_check_pressed(controller, gp_face1);
	special	= gamepad_button_check_pressed(controller, gp_face4);
	
	
}*/