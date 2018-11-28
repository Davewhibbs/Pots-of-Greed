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
	instance_create_layer(x,y,"Terrain", o_terrain_dead);
	
	if sound == 0 {
		audio_play_sound(snd_explosion_3, 10, 0);
		sound = 1;
	}
	instance_destroy();
}