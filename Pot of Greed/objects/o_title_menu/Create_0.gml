x = room_width / 2;
y = room_height / 2;


menu_x = x;
menu_y = y;
title_x = x;
title_y = y - 128;
button_h = 70;

// Buttons
button[0] = "Smash!";
button[1] = "Credits";
button[2] = "Quit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

// Dependencies
input = instance_create_layer(0, 0, "Instances", o_input);