/// Transform this block into a random terrain block


var gold_chance = 50;

var rand = irandom_range(0, 100);

if rand <= gold_chance {
	instance_create_layer(x, y, "Terrain", o_terrain_gold);
	instance_destroy();
}
else if rand > gold_chance {
	
	// Turn into a grass block if there is no terrain above
	instance_create_layer(x, y, "Terrain", o_terrain_basic);
	
	instance_destroy();
}