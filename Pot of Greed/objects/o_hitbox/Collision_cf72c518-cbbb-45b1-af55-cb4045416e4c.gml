/// @description Collision with ANY terrain!!!	

// if the creator is noone or itself or already hit
if creator == noone || creator == other ||  !is_undefined(ds_list_find_value(hit_objects, other)) {
	exit;
}

//creator.xSpeed = x_knockback/3 * -creator.image_xscale;


if creator.ySpeed != 0 {
	creator.ySpeed = creator.jump_height;
	// create dust
	instance_create_layer(creator.x, creator.y, "Particles", o_jump_dust);
	// play jump sound
	audio_play_sound(snd_jump, 10, 0);
	set_flash(255, 255, 255, creator);
}

other.hp -= damage;
ds_list_add(hit_objects, other);

set_flash(255, 255, 255, other);

// PLay dig sound
audio_play_sound(snd_dig, 10, 0);
audio_play_sound(snd_smack_the_ground, 10, 0);

// Create dirt particles
//create_dirt_particle(creator, 3);

// Weak Camera Shake on hit
screenshake(1, 2);

//show_debug_message(hit_objects);