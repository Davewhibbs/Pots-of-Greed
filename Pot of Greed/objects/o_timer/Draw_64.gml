/// @description Draw Timer
draw_set_font(f_lantern);
draw_set_halign(fa_center);

// State Machine
switch state {

	// Display countdown
	case "Startup":
		if timer < timer_start {
			// Start displaying countdown
			if timer == timer_start - 1 draw_text(o_camera.view_w, 2 * room_height/3, "Ready!");
			if timer == timer_start - 2 draw_text(o_camera.view_w, 2 * room_height/3, "Set!");
			if timer <= timer_start - 3 draw_text(o_camera.view_w, 2 * room_height/3, "SMASH!");
			if timer <=	timer_start - 5 state = "Gameplay";
		}
		break;
		
	// Display Timer in top middle
	case "Gameplay":
		// Break timer up into minute and second format
		var minutes = timer div 60;
		var seconds = timer - minutes * 60;
		
		if seconds < 0 state = "End";
		else if seconds < 10 {
			draw_text(o_camera.view_w, 32, string(minutes) + ":0" + string(seconds));
		} else {
			draw_text(o_camera.view_w, 32, string(minutes) + ":" + string(seconds) );
		}
		
		
		break;
		
	// Display "Game"
	case "End":
			if timer <=0 && timer >= -3 {
				draw_text(o_camera.view_w, 2 * room_height/3, "END!");
			} else {
				//display winner
				if global.score_0 > global.score_1 && global.score_0 > global.score_2 && global.score_0 > global.score_3{
					draw_text(o_camera.view_w, 2 * room_height/3, "PLAYER 1 WINS!");
				}
				
				else if global.score_1 > global.score_0 && global.score_1 > global.score_2 && global.score_1 > global.score_3{
					draw_text(o_camera.view_w, 2 * room_height/3, "PLAYER 2 WINS!");
				}
				
				else if global.score_2 > global.score_1 && global.score_2 > global.score_0 && global.score_2 > global.score_3{
					draw_text(o_camera.view_w, 2 * room_height/3, "PLAYER 3 WINS!");
				}
				
				else if global.score_3 > global.score_1 && global.score_3 > global.score_2 && global.score_3 > global.score_0{
					draw_text(o_camera.view_w, 2 * room_height/3, "PLAYER 4 WINS!");
				}
			
			}
			
			
		break;
		
	default:
	
		draw_text(o_camera.view_w, 2 * room_height/3, "ERROR!");
		break;

}