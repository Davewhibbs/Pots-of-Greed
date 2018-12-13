/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_custom_gold);
draw_set_halign(fa_center);
draw_set_font(f_lantern);



draw_sprite(s_a, 0, room_width/4, room_height/4 - 64);
draw_text(room_width/4, room_height/4, "JUMP!");


draw_sprite(s_x, 0, room_width*3/4, room_height/4 - 64);
draw_text(room_width*3/4, room_height/4, "SMASH!");


draw_set_font(f_lantern_small);
draw_sprite_stretched(s_terrain_gold_10, 0, room_width/3 - 32, room_height*2/3 - 80, 64, 64);
draw_sprite_stretched(s_coin, 0, room_width*2/3 - 64, room_height*2/3 - 110, 128, 128);
draw_text(room_width/2, room_height*2/3, "Break Gold blocks to collect Coins!");



draw_sprite(s_a_small, 0, room_width/2 - 75, room_height * 7/8 + 8);
draw_text(room_width/2, room_height*7/8, "PLAY GAME!");