/// @description Collision with gold block

// if the creator is noone or itself or already hit
if creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1{
	exit;
}

//creator.xSpeed = x_knockback/3 * -creator.image_xscale;


other.hp -= damage;
ds_list_add(hit_objects, other);

// Weak Camera Shake on hit
screenshake(1, 2);

set_flash(255, 255, 255, other);

// play dig sound
audio_play_sound(snd_dig, 10, 0);

if other.hp <= -9 {
	
	// Create a coin
	var coin = instance_create_layer(creator.x, creator.y - 50,"Particles", o_coin_pickup);
	coin.creator = creator;
}