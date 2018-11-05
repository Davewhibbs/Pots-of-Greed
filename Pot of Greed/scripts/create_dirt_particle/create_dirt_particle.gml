///@param creator
///@param amount

var creator		= argument0;
var amount		= argument1;

for (var i = 0; i < amount; i++) {
	var dirt	 = instance_create_layer(creator.x + 16 * creator.image_xscale, creator.y, "Particles", o_dirt_particle);
	dirt.creator = creator;
}