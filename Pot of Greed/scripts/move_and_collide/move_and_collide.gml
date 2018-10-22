

#region Wrap
/*
if x + xSpeed > room_width{
	x = 0;
}
else if x + xSpeed < 0 {
	x = room_width;
}

if y + ySpeed  > room_height{
	y = 0;
}
else if y + ySpeed < 0 {
	y = room_height;
}*/
#endregion

#region Move Flush to the wall
if place_meeting(x + xSpeed, y, o_terrain){
	// move one pixel at a time until flush with wall
	repeat(abs(xSpeed)){
		if(not place_meeting(x + sign(xSpeed), y, o_terrain)){
			x += sign(xSpeed);
		}
		else {
			break;
		}
	}
	xSpeed = 0;
}

if place_meeting(x, y + ySpeed, o_terrain){
	// move one pixel at a time until flush with wall
	repeat(abs(ySpeed)){
		if not place_meeting(x, y + sign(ySpeed), o_terrain){
			y += sign(ySpeed);
		} else {
			break;
		}
	}
	ySpeed = 0;
}
#endregion

#region Check if you are inside a wall
if place_meeting(x, y, o_terrain){
	// Check which direction you were moving and move the other direction until no longer within the wall
	repeat(abs(ySpeed)){
		if not place_meeting(x, y, o_terrain){
			y -= sign(ySpeed);
		} else {
			break;
		}
	}
	ySpeed = 0;
	
	repeat(abs(xSpeed)){
		if not place_meeting(x, y, o_terrain){
			x -= sign(xSpeed);
		} else {
			break;
		}
	}
	xSpeed = 0;
}
#endregion

x += xSpeed;
y += ySpeed;


