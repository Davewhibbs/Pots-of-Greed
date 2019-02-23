/// @description Insert description here
// You can write your code in this editor


// THE BUTTON YOU NEED TO PRESS FOR THIS
pressed = keyboard_check_pressed(vk_rshift);

// PRESSED
if pressed == true {
	image_index = 0;
	audio_play_sound(snd_stapler, 10, 0);
	if animation_hit_frame(4){
		image_speed = 0;
	} else {
		image_speed = 1;
	}
}


// RELEASED
else{
	if animation_hit_frame(5){
		image_speed = 1;
	}
	if animation_end(){
		image_index = 0;
		image_speed = 0;
	}
}