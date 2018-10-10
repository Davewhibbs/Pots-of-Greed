/// @description Insert description here
// You can write your code in this editor
if hp == 3 {
	image_index = 0;
}
else if hp == -1 {
	image_index = 1;
}
else if hp == -5 {
	image_index = 2;
}
else if hp <= -9 {
	set_state_sprite(s_terrain_destroy, 1, 0);
	
	// strong Camera Shake on death
	screenshake(3, 2);
	
	if animation_end(){
		instance_destroy();
	}
}