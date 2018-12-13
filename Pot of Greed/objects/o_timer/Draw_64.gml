/// @description Draw Timer
draw_set_font(f_lantern);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// State Machine
switch state {

	// Display countdown
	case "Startup":
		if timer < timer_start {
			// Start displaying countdown
			if timer == timer_start - 1 {
				draw_set_color($a0938e);
				draw_text(o_camera.view_w, timer_height, "Ready!");
			}
			if timer == timer_start - 2 {
				draw_set_color($cfc6b8);
				draw_set_font(f_lantern_title);
				draw_text(o_camera.view_w, timer_height, "Set!");
			}
			if timer <= timer_start - 3 {
				draw_set_color(c_custom_gold);
				draw_set_font(f_lantern_large);
				draw_text(o_camera.view_w, timer_height, "SMASH!");
				
			}
			if timer <=	timer_start - 5 {
				state = "Gameplay";
			}
		}
		break;
		
	// Display Timer in top middle
	case "Gameplay":
		// Break timer up into minute and second format
		var minutes = timer div 60;
		var seconds = timer - minutes * 60;
		draw_set_color($a0938e);
		
		if seconds < 0 state = "End";
		else if seconds < 10 {
			draw_set_font(f_lantern_title);
			draw_set_color(c_custom_red);
			draw_text(o_camera.view_w, timer_height, string(minutes) + ":0" + string(seconds));
		} else {
			draw_text(o_camera.view_w, timer_height, string(minutes) + ":" + string(seconds) );
		}
		
		
		break;
		
	// Display "Game"
	case "End":
			if timer <=0 && timer >= -3 {
				draw_set_font(f_lantern_large);
				draw_set_color(c_custom_gold);
				draw_text(o_camera.view_w, timer_height, "END!");
			} else {
				draw_set_font(f_lantern_large);
				//display winner
				if global.score_0 > global.score_1 && global.score_0 > global.score_2 && global.score_0 > global.score_3{
					draw_set_color(c_custom_blue);
					draw_text(o_camera.view_w, timer_height, "PLAYER 1 WINS!");
				}
				
				else if global.score_1 > global.score_0 && global.score_1 > global.score_2 && global.score_1 > global.score_3{
					draw_set_color(c_custom_red);
					draw_text(o_camera.view_w, timer_height, "PLAYER 2 WINS!");
				}
				
				else if global.score_2 > global.score_1 && global.score_2 > global.score_0 && global.score_2 > global.score_3{
					draw_set_color(c_custom_green);
					draw_text(o_camera.view_w, timer_height, "PLAYER 3 WINS!");
				}
				
				else if global.score_3 > global.score_1 && global.score_3 > global.score_2 && global.score_3 > global.score_0{
					draw_set_color(c_custom_purple);
					draw_text(o_camera.view_w, timer_height, "PLAYER 4 WINS!");
				}
			
			}
			
			
		break;
		
	default:
	
		draw_text(o_camera.view_w, 2 * room_height/3, "ERROR!");
		break;

}