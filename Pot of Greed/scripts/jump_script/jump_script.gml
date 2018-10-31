///@param height
image_index = 0;
ySpeed = argument0;
sprite_index = s_player_jump;


// play jump sound
audio_play_sound(snd_jump, 10, 0);

// create dust
instance_create_layer(x, y, "Particles", o_jump_dust);