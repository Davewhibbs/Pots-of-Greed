
menu_move = 0;
menu_x = x;
menu_y = y;

// Buttons
button[0] = instance_create_layer(120, 444, "Title", o_button_next);
button[1] = instance_create_layer(360, 444, "Title", o_button_back);
buttons = array_length_1d(button);

cursor_moved = false;
menu_index = 0;
last_selected = 0;

// Dependencies
input = instance_create_layer(0, 0, "Instances", o_input);


menu_release = false;
menu_press = false;
menu_pressed = false;