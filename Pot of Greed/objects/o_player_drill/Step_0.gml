/// @description State Machine

switch state {
	case "Move":
		#region Move State
			// Move normally
			player_movement();
			
			// State Changes
			if place_meeting(x, y+1, o_terrain) and input.down{
				dig_terrain = place_meeting(x, y+1, o_terrain)
				state = "Dig Down";
			}
			else if place_meeting(x+1, y, o_terrain) and input.right {
				state = "Dig Right";
			}
			else if place_meeting(x-1, y, o_terrain){
				state = "Dig Left";
			}
			else if input.up {
				state = "Rise";
			}
			
		#endregion
		break;
		
	case "Dig Down":
		#region Dig Down State
			
			// Set Sprite
			set_state_sprite(s_player_strike_down, 1, 0);
			
			dig();
			
			// Set the terrain object to Digging state
			
			// Cancel if button is released
			
		#endregion
		break;
		
	case "Dig Right":
		#region Dig Right State
		
		#endregion
		break;
		
	case "Dig Left":
		#region Dig Left State
		
		#endregion
		break;
		
	case "Rise":
		#region Rise State
		
		#endregion
		break;
	
	case "Special":
		#region Special State
		
		#endregion
		break;
	
	case "Hitstun":
		#region Hitstun State
		
		#endregion
		break;
		
	default:
		
		break;
}


// Move the object after all calculations
move_and_collide();

// debug State
//show_debug_message(state);