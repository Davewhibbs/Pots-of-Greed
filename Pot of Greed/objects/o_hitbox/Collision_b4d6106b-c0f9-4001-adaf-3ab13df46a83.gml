/// @description Insert description here
// You can write your code in this editor

// if the creator is noone or itself or already hit
if creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1{
	exit;
}

creator.xSpeed = x_knockback/2 * -creator.image_xscale;
creator.ySpeed = y_knockback;
other.hp -= damage;
other.state = "Knockback";
other.knockback_speed = x_knockback * creator.image_xscale;
other.xSpeed = other.knockback_speed;
screenshake(7,2);
ds_list_add(hit_objects, other);
show_debug_message(other.hp);
