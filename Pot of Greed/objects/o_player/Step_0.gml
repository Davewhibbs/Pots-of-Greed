/// @description State Machine

switch state {
	case "Move":
		#region Move State
			image_speed = 1;
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
			set_state_sprite(smash_sprite, 1, 0);
			
			// Move
			attack_movement();
			
			// at a certain frame, damage a block or player if they're in the way
			//if animation_hit_frame(1){
			//	create_hitbox(x, y, id, s_player_smash_damage_first, 5, 4, damage, 1, image_xscale);
			//}
			
			if animation_hit_frame(2){
				create_hitbox(x, y, id, s_player_smash_damage, 5, 8, damage, 1, image_xscale);
			}
			
			// Plunging attack!
			if plunge == true {
				create_hitbox(x, y, id, s_player_smash_damage, 5, 8, damage, 1, image_xscale);
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
		set_state_sprite(idle_sprite, 1, 0);
		
		
		
		xSpeed = knockback_speed;
		ySpeed = -knockback_speed;
		
		// decrease knockback speed
		knockback_speed = approach(knockback_speed, 0, .3);
		
		if knockback_speed == 0 {
			knockback_speed = 0;
			state = "Move";
		}
		
		#endregion
		break;
		
	case "Still":
		xSpeed = 0;
		ySpeed = 0;
		image_speed = 0;
		break;
		
	default:
		show_debug_message("State " + state + " does not exist");
		break;
}


// Move the object after all calculations
move_and_collide();

// Update the score - only while in game
update_score();



// debug State
//show_debug_message(controller);