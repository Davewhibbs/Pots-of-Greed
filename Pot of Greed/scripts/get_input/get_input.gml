/// ---------- UPDATE INPUT


// Keyboard Inputs
right		= keyboard_check(vk_right);
left		= keyboard_check(vk_left);
up			= keyboard_check(vk_up);
jump		= keyboard_check_pressed(vk_up);
strike		= keyboard_check(vk_space);
special		= keyboard_check(vk_shift);
crouch		= keyboard_check(vk_down);
down		= keyboard_check(vk_down);

x_input = right - left;
y_input = down - up;



// Check if controller is connected and overwrite inputs if it is
if gamepad_is_connected(controller){
	// SET DEADZONE
	gamepad_set_axis_deadzone(controller, .2);
	
	// Check Left stick axes for direction
	x_input = gamepad_axis_value(controller, gp_axislh);
	y_input = gamepad_axis_value(controller, gp_axislv);

	// Map buttons
	strike	= gamepad_button_check(controller, gp_face3);
	jump	= gamepad_button_check_pressed(controller, gp_face1);
	special	= gamepad_button_check_pressed(controller, gp_face4);
	
	
}