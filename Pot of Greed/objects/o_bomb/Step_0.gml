/// @description Bomb State machine


switch state {
	
	#region Drop State
		case "Drop":
	
			// Accelerate to a stop
			xSpeed = lerp(xSpeed, 0, .001);
			// check if we're on the ground or in the air
			if !place_meeting(x, y+1, o_terrain){
				//Fall
				ySpeed = approach(ySpeed, 8, grav);
				
				// Slowly apply friction
				xSpeed = lerp(xSpeed, 0, .01);
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