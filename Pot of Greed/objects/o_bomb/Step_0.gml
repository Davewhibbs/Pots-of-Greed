/// @description Bomb State machine


switch state {
	
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
x += xSpeed;
y += ySpeed;