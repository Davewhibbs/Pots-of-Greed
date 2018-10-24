/// @description Collision with ANY terrain!!!	

// if the creator is noone or itself or already hit
if creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1{
	exit;
}

creator.xSpeed = x_knockback/3 * -creator.image_xscale;


other.hp -= damage;
ds_list_add(hit_objects, other);

set_flash(255, 255, 255, other);

// Weak Camera Shake on hit
screenshake(1, 2);

