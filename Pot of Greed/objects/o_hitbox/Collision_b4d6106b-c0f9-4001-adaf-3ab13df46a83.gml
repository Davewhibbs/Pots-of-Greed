/// @description Insert description here
// You can write your code in this editor

// if the creator is noone or itself or already hit
if creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1{
	exit;
}

if creator.ySpeed != 0 {
	creator.ySpeed = creator.jump_height;
}

other.hp -= damage;
other.state = "Knockback";
other.knockback_speed = x_knockback * creator.image_xscale;
other.xSpeed = other.knockback_speed;
other.y -= 4;
other.ySpeed = y_knockback;

// Set the other's flash
set_flash(193, 48, 0, other);


// Make them drop one coin
if other.gold > 0 {
	other.gold -= 1;
	
	// Create a coin
	var coin = instance_create_layer(creator.x + 32 * creator.image_xscale, creator.y - 50,"Particles", o_coin_pickup);
	coin.creator = creator;
}


screenshake(7,2);
ds_list_add(hit_objects, other);
//show_debug_message(other.hp);
