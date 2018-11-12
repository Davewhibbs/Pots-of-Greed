/// @description Insert description here
// You can write your code in this editor

// Chnge the sprite based on direction
check_terrain_direction();


if place_meeting(x, y-1, o_player){
	if o_player.plunge == true{
		
		// destroy self
		hp -= 1;
		o_player.ySpeed = o_player.jump_height/2;
		o_player.plunge = false;
	}
}



if hp == 3 {
	image_index = 0;
}
else if hp == 2 {
	image_index = 1;
}
else if hp == 1 {
	image_index = 2;
}
else if hp <= 0 {
	set_state_sprite(s_terrain_destroy, 1, 0);
	
	if sound == 0 {
		audio_play_sound(snd_explosion_3, 10, 0);
		sound = 1;
	}
	
	// strong Camera Shake on death
	screenshake(3, 2);
	
	if animation_end(){
		
		instance_destroy();
	}
}