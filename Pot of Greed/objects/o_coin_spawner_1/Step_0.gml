/// @description Insert description here
// You can write your code in this editor

// Drop coins
while coins > 0 {
	if alarm[0] < 0 {
		// Create a coin
		instance_create_layer(x, y, "Particles", o_coin);
		coins--;
		
		// reset alarm
		alarm[0] = timer;
	}
}

