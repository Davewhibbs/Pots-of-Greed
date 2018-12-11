/// @description Collision with gold block

// if the creator is noone or itself or already hit
if creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1{
	exit;
}


if creator.ySpeed != 0 {
	creator.ySpeed = creator.jump_height;
	// create dust
	instance_create_layer(creator.x, creator.y, "Particles", o_jump_dust);
	set_flash(255, 255, 255, creator);
	// play jump sound
	audio_play_sound(snd_jump, 10, 0);
}

other.hp -= damage;
ds_list_add(hit_objects, other);

// Weak Camera Shake on hit
screenshake(1, 2);

set_flash(255, 255, 255, other);

// play dig sound
audio_play_sound(snd_dig, 10, 0);
audio_play_sound(snd_smack_the_ground, 10, 0);

if other.hp <= 0 {
	
	// Create a coin
	var coin = instance_create_layer(creator.x + 32 * creator.image_xscale, creator.y - 50,"Particles", o_coin_pickup);
	coin.creator = creator;
	
	var rand = irandom(1);
	if rand == 0{
		audio_play_sound(snd_smack_the_ground_2, 10, 0);
	} else {
		audio_play_sound(snd_smack_the_ground_3, 10, 0);
	}
}