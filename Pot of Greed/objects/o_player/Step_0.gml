/// @description State Machine

switch state {
	case "Move":
		#region Move State
			// Move normally
			player_movement();
			
			// State Changes
			if input.strike {
				state = "Strike";	
			}
			
		#endregion
		break;
	
	case "Wall Jump":
		#region Wall Jump State
			// Wall Jump Movement
			wall_jump(dir);
			state = "Move";
		#endregion
		break;
	
	
	case "Strike":
		#region Strike State
			set_state_sprite(s_player_strike, 1, 0);
			
			// at a certain frame, damage a block or player if they're in the way
			
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