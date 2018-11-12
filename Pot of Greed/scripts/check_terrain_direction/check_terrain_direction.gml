var xPos;
var yPos;




#region Check if there is terrain around this one

// Check above, if true set yPos to top
if !place_meeting(x, y - 1, o_terrain) {
	
	yPos = "Top";
	
// Check below
} else if !place_meeting(x, y - 33, o_terrain){

	yPos = "Middle";
	
} else {

	yPos = "Bottom";
	
}



// Check to the right
if !place_meeting(x + 33, y, o_terrain) {
	
	xPos = "Right";
	
	
// Check to the left
} else if !place_meeting(x - 1, y, o_terrain){

	xPos = "Left";
	
} else {

	xPos = "Middle";
	
}
#endregion



#region Set Sprite!

switch self.object_index {

	#region Dirt
	case o_terrain_basic :
			
			switch yPos {
				case "Top":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_dirt_left_top;
							break;
						case "Middle":
							sprite_index = s_terrain_dirt_middle_top;
							break;
						case "Right":
							sprite_index = s_terrain_dirt_right_top;
							break;
					}
					break;
				case "Middle":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_dirt_left_middle;
							break;
						case "Middle":
							sprite_index = s_terrain_dirt_middle_middle;
							break;
						case "Right":
							sprite_index = s_terrain_dirt_right_middle;
							break;
					}
					break;
				case "Bottom":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_dirt_left_bottom;
							break;
						case "Middle":
							sprite_index = s_terrain_dirt_middle_bottom;
							break;
						case "Right":
							sprite_index = s_terrain_dirt_right_bottom;
							break;
					}
					break;
			}
			
		case o_terrain :
			
			switch yPos {
				case "Top":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_dirt_left_top;
							break;
						case "Middle":
							sprite_index = s_terrain_dirt_middle_top;
							break;
						case "Right":
							sprite_index = s_terrain_dirt_right_top;
							break;
					}
					break;
				case "Middle":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_dirt_left_middle;
							break;
						case "Middle":
							sprite_index = s_terrain_dirt_middle_middle;
							break;
						case "Right":
							sprite_index = s_terrain_dirt_right_middle;
							break;
					}
					break;
				case "Bottom":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_dirt_left_bottom;
							break;
						case "Middle":
							sprite_index = s_terrain_dirt_middle_bottom;
							break;
						case "Right":
							sprite_index = s_terrain_dirt_right_bottom;
							break;
					}
					break;
			}
		break;
		
		default :
			
			switch yPos {
				case "Top":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_dirt_left_top;
							break;
						case "Middle":
							sprite_index = s_terrain_dirt_middle_top;
							break;
						case "Right":
							sprite_index = s_terrain_dirt_right_top;
							break;
					}
					break;
				case "Middle":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_dirt_left_middle;
							break;
						case "Middle":
							sprite_index = s_terrain_dirt_middle_middle;
							break;
						case "Right":
							sprite_index = s_terrain_dirt_right_middle;
							break;
					}
					break;
				case "Bottom":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_dirt_left_bottom;
							break;
						case "Middle":
							sprite_index = s_terrain_dirt_middle_bottom;
							break;
						case "Right":
							sprite_index = s_terrain_dirt_right_bottom;
							break;
					}
					break;
			}
	#endregion

	#region Gold
	case o_terrain_gold :
		switch yPos {
				case "Top":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_gold_left_top;
							break;
						case "Middle":
							sprite_index = s_terrain_gold_middle_top;
							break;
						case "Right":
							sprite_index = s_terrain_gold_right_top;
							break;
					}
					break;
				case "Middle":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_gold_left_middle;
							break;
						case "Middle":
							sprite_index = s_terrain_gold_middle_middle;
							break;
						case "Right":
							sprite_index = s_terrain_gold_right_middle;
							break;
					}
					break;
				case "Bottom":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_gold_left_bottom;
							break;
						case "Middle":
							sprite_index = s_terrain_gold_middle_bottom;
							break;
						case "Right":
							sprite_index = s_terrain_gold_right_bottom;
							break;
					}
					break;
			}
	
		break;
	#endregion


	#region Metal
	case o_terrain_invincible :
		switch yPos {
				case "Top":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_metal_left_top;
							break;
						case "Middle":
							sprite_index = s_terrain_metal_middle_top;
							break;
						case "Right":
							sprite_index = s_terrain_metal_right_top;
							break;
					}
					break;
				case "Middle":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_metal_left_middle;
							break;
						case "Middle":
							sprite_index = s_terrain_metal_middle_middle;
							break;
						case "Right":
							sprite_index = s_terrain_metal_right_middle;
							break;
					}
					break;
				case "Bottom":
					switch xPos {
						case "Left":
							sprite_index = s_terrain_metal_left_bottom;
							break;
						case "Middle":
							sprite_index = s_terrain_metal_middle_bottom;
							break;
						case "Right":
							sprite_index = s_terrain_metal_right_bottom;
							break;
					}
					break;
			}
	
		break;
	#endregion
}
#endregion