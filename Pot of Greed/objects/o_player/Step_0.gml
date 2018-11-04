/// @description State Machine

switch state {
	case "Move":
		#region Move State
			// Move normally
			player_movement();
			
			// State Changes
			if input.smash {
				state = "Smash";
			}
			else if input.special {
				if alarm[1] < 0 {
					state = "Special";
				}
			}
		#endregion
		break;
	
	case "Smash":
		#region smash State
			set_state_sprite(s_player_smash, 1, 0);
			
			// Move
			attack_movement();
			
			// at a certain frame, damage a block or player if they're in the way
			if animation_hit_frame(4){
				var hitbox = create_hitbox(x, y, id, s_player_smash_damage, 5, 4, damage, 3, image_xscale);
			}
			
			// Bounce if you hit something while in the air
			if !place_meeting(x,y+1,o_terrain) {
				
			}
			
			
			// Transition back to Move
			if animation_end(){
				state = "Move";
			}
		#endregion
		break;
		
	
	case "Special":
		#region Special State
			
			
			// Drop a bomb
			create_bomb(self, x + 16 * image_xscale, y - 32);
			
			// Return to Move
			state = "Move";
			
		#endregion
		break;
	
	case "Knockback":
		#region Knockback State
		set_state_sprite(s_player_idle, 1, 0);
		
		
		
		xSpeed = knockback_speed;
		
		// decrease knockback speed
		knockback_speed = approach(knockback_speed, 0, .3);
		
		if knockback_speed == 0 {
			knockback_speed = 0;
			state = "Move";
		}
		
		#endregion
		break;
		
	default:
		show_debug_message("State " + state + " does not exist");
		break;
}


// Move the object after all calculations
move_and_collide();

// debug State
//show_debug_message(controller);