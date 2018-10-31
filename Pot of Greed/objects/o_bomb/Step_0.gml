/// @description Bomb State machine


switch state {
	
	#region Drop State
		case "Drop":
	
			// Create trail particles
			if alarm[1] < 0 {
				instance_create_layer(x - 4, y - 16, "Particles", o_bomb_trail_particle);
				alarm[1] = particle_time;
			}
			
			// check if we're on the ground or in the air
			if !place_meeting(x, y+1, o_terrain){
				//Fall
				ySpeed = approach(ySpeed, 8, grav);
			} else {
				// Bounce
				if bounce > 0 {
					if bounce == 3 {
						ySpeed = bounce_height_1;	
					} else if bounce == 2 {
						ySpeed = bounce_height_2;	
					} else if bounce == 1 {
						ySpeed = bounce_height_3;	
					}
				
					// reduce bounce
					bounce--;
				}
				
				
				
				// Slowly apply friction
				xSpeed = lerp(xSpeed, 0, .1);	
			}
		
		break;
	#endregion
	
	#region Held State
		case "Held":
			
			// Set speed to lerp to the creator's speed
			xSpeed = lerp(xSpeed, creator.xSpeed, weapon_drag);
			ySpeed = lerp(ySpeed, creator.ySpeed, weapon_drag);
		
			break;
	#endregion
	
	#region Thrown State
		case "Thrown":
			
		
			break;
	#endregion
}


// Update Movement
move_and_collide();