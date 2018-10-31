/// @description Insert description here
// You can write your code in this editor


// Move randomly
rand_y = irandom_range(0,1);
rand_x_1 = irandom_range(0,1);
rand_x_2 = irandom_range(0,1);

if rand_y == 1 {
	y -= 1;
}

if rand_x_1 == 1 {
	if rand_x_2 == 1 {
		x += 1;
	} else {
		x -= 1;
	}
}