/// Transform this block into a random terrain block

var basic_chance = 75;
var gold_chance = 25;

var rand = irandom_range(0, 100);

if rand <= gold_chance {
	instance_create_layer(x, y, "Terrain", o_terrain_gold);
	instance_destroy();
}
else if rand > gold_chance {
	instance_create_layer(x, y, "Terrain", o_terrain_basic);
	instance_destroy();
}