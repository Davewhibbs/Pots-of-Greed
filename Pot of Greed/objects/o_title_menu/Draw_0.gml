// Draw Title

draw_set_color(c_custom_gold);
draw_set_halign(fa_center);
draw_set_font(f_lantern_title);
draw_text(title_x, title_y, "POTS of GREED");




var i = 0;
repeat (buttons) {
	
	draw_set_font(f_lantern);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	
	if (menu_index == i){
		draw_set_color(c_custom_red);
		draw_sprite(s_player_idle_1, 0, menu_x - 128, menu_y + button_h * i + 42);	
	}
	
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
	
	
}