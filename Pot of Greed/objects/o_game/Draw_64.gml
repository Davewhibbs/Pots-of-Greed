/// @description Draw Timer
draw_set_font(f_lantern);

if timer >= 10 {
	draw_text(o_camera.view_w_half - 10, 32, timer);
}
else if timer < 10 {
	draw_text(o_camera.view_w_half + 1, 32, timer);
}


if timer <= 0 {
	for (var i = 0; i < array_length_1d(global.player_array); i++){
	
	// Check which player is in the lead
	if i == 0{
		leader = i + 1;
	}
	else if global.player_array[i].gold > global.player_array[i-1]{
		leader = i + 1;
	}
	
}
	
	// Display Game Over
	draw_text(o_camera.view_w_half, o_camera.view_h_half, "Game Over");

	switch leader {
		case 1:
			// Display winner
			draw_text(o_camera.view_w_half, o_camera.view_h_half + 40, "Player 1 Wins!");
			break;
		
		case 2:
			draw_text(o_camera.view_w_half, o_camera.view_h_half + 40, "Player 2 Wins!");
			break;
		
		default:
			draw_text(o_camera.view_w_half, o_camera.view_h_half + 40, "TIE!");
			break;
	}
	
}
