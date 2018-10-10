/// @description State Machine

switch state {
	case "Move":
		#region Move State
			// Move normally
			player_movement();
			
			// State Changes
			if input.strike and input.y_input > 0 {
				state = "Down Strike";
			}
			else if input.strike and input.y_input < 0 and ySpeed == 0 {
				state = "Up Strike";
			}
			else if input.strike {
				state = "Strike";
			}
			else if input.y_input > 0 {
				state = "Crouch";
			}
			
			
		#endregion
		break;
		
	case "Crouch" :
		#region Crouch State
			// Set State Sprite
			set_state_sprite(s_player_crouch, 1, 0);
		
			crouch_movement();
			
			/// STATE SWITCHES
			// If attack button is pressed, switch to Down Attack
			if input.strike {
				state = "Down Strike";
			}
			
			// If the player every stops inputting, switch back to Move
			else if !input.y_input > 0{
				state = "Move";
			}
			
			
			break;
		#endregion
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
			
			// Move
			attack_movement();
			
			// at a certain frame, damage a block or player if they're in the way
			if animation_hit_frame(0){
				create_hitbox(x, y, id, s_player_strike_damage, 5, 4, damage, 4, image_xscale);
			}
			
			// Transition back to Move
			if animation_end(){
				state = "Move";
			}
		#endregion
		break;
		
	case "Down Strike":
		#region Down Strike State
		// SET STATE SPRITE
		set_state_sprite(s_player_strike_down, 1, 0);
		
		// ACCELERATE TO A STOP
		attack_movement();
		
		// CREATE HITBOX
		if animation_hit_frame(2){
			create_hitbox(x, y, id, s_player_strike_down_damage, 0, -8,  damage, 4, image_xscale);
		}
		
		
		
		// STATE SWITCHES
		// Transition back to Move
		if animation_end(){
			if input.y_input > 0 {
				state = "Crouch";
			}
			else{
				state = "Move";
			}
			
		}
		
		#endregion
		break;
	
	case "Up Strike":
		#region Strike State
			set_state_sprite(s_player_strike_up, 1, 0);
			
			// Move
			up_attack_movement();
			
			// at a certain frame, damage a block or player if they're in the way
			if animation_hit_frame(0){
				create_hitbox(x, y, id, s_player_up_strike_damage, 0, 0, damage, 4, image_xscale);
			}
			
			// Transition back to Move
			if animation_end(){
				state = "Move";
			}
		#endregion
		break;
	
	case "Special":
		#region Special State
		
		#endregion
		break;
	
	case "Knockback":
		#region Knockback State
		set_state_sprite(s_player_knockback, 1, 0);
		
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
show_debug_message(controller);