// Draw self
draw_self();
	
if (flash > 0) {
	flash_execute();
}

// Draw score
draw_set_font(f_lantern_small);
draw_set_color($28ccdf);
draw_set_valign(fa_top);
draw_text(x, y-40, gold);

// Draw player number
switch controller {
	case 0:
		draw_set_color(c_custom_blue);
		draw_text(x, y - 64, "P1");
		break;
		
	case 1: 
		draw_set_color(c_custom_red);
		draw_text(x, y - 64, "P2");
		break;
	case 2:
		draw_set_color(c_custom_green);
		draw_text(x, y - 64, "P3");
		break;
	case 3:
		draw_set_color(c_custom_purple);
		draw_text(x, y - 64, "P4");
		break;

}