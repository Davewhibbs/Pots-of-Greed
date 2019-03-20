event_inherited();
gold = 0;
damage = 1;

// Physics
acceleration = .3;
crouch_friction = .001;
air_friction = .01;
ground_friction = .3;
move_speed = 0;
fall_speed = 8;
jump_height = -9;
wall_jump_speed = 1;
wall_jump_height = -10;
xSpeed = 0;
ySpeed = 0;

dir = image_xscale;

state = "Still";

// Dependencies
controller = 0;
input = instance_create_layer(0, 0, "Meta", o_input);
input.controller = controller;

// Bomb Stuff
bomb_timer = room_speed * 1;
alarm[1] = bomb_timer;

// Jump assist
jump_assisted = false;
jump_assist_timer = 1;
alarm[0] = 0;

// Shader Variables
flash	= 0;
red		= 0;
green	= 0;
blue	= 0;

// PLunging attack
plunge = false;

// In-game variable
in_game = false;

// Player sprite variables
run_sprite	= s_player_run_1;
idle_sprite = s_player_idle_1;
jump_sprite = s_player_jump_1;
fall_sprite = s_player_fall_1;
smash_sprite = s_player_smash_1;