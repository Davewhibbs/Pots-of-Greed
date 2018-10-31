// EXPLODE!!

// Create Explosion object
var explosion = instance_create_layer(x, y, "Particles", o_explosion);
explosion.creator = creator;

// PLay explosion sound
audio_play_sound(snd_explosion_1, 10, 0);

// Delete this instance
instance_destroy();