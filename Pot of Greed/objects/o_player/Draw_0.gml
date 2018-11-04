// Draw self
draw_self();
	
if (flash > 0) {
	flash_execute();
}

// Draw score
draw_set_font(f_lantern_small);
draw_text_color(x, y-40, gold, c_yellow, c_yellow, c_yellow, c_yellow, .8);
