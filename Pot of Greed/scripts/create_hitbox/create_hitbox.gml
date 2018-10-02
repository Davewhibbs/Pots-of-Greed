///@param x
///@param y
///@param creator 
///@param sprite
///@param x_knockback
///@param y_knockback
///@param damage
///@param lifespan
///@param x_scale

var x_pos		= argument0;
var y_pos		= argument1;
var creator		= argument2;
var sprite		= argument3;
var x_knockback = argument4;
var y_knockback = argument5
var lifespan	= argument6;
var damage		= argument7; 
var x_scale		= argument8;


var hitbox = instance_create_layer(x_pos, y_pos, "Meta", o_hitbox);
hitbox.sprite_index = sprite;
hitbox.creator		= creator;
hitbox.x_knockback	= x_knockback;
hitbox.y_knockback	= y_knockback;
hitbox.damage		= damage;
hitbox.alarm[0]		= lifespan;
hitbox.image_xscale = x_scale;

