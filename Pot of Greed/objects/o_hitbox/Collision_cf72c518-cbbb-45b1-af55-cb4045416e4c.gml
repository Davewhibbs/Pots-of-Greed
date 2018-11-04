/// @description Collision with ANY terrain!!!	

// if the creator is noone or itself or already hit
if creator == noone || creator == other ||  !is_undefined(ds_list_find_value(hit_objects, other)) {
	exit;
}

//creator.xSpeed = x_knockback/3 * -creator.image_xscale;


if creator.ySpeed != 0 {
	creator.ySpeed = creator.jump_height;
}

other.hp -= damage;
ds_list_add(hit_objects, other);

set_flash(255, 255, 255, other);

// PLay dig sound
audio_play_sound(snd_dig, 10, 0);

// Weak Camera Shake on hit
screenshake(1, 2);

//show_debug_message(hit_objects);