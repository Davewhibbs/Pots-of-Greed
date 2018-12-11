var left	= false;
var right	= false;
var bottom	= false;
var top		= false;



#region Check if there is terrain around this one

/// Check all four directions
// Check above
if place_meeting(x, y - 1, o_terrain) {
	top = true;
}
// Check below
if place_meeting(x, y + 1, o_terrain) {
	bottom = true;
}
// Check Right
if place_meeting(x + 1, y, o_terrain) {
	right = true;
}
// Check Left
if place_meeting(x - 1, y, o_terrain) {
	left = true;
}

#endregion



#region Set Sprite!

switch self.object_index {

	#region Dirt
	case o_terrain_basic :
			
			// Terrain sprite selection, 16 possible sprites based on position relative to other terrain blocks
	
			if				!top	&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_1;
			} else if		!top	&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_2;
			} else if		!top	&&	bottom		&& left		&&	!right	{		sprite_index = s_terrain_dirt_3;
			} else if		top		&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_4;
			} else if		top		&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_5;							
			} else if		top		&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_6;
			} else if		top		&&	!bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_7;			
			} else if		top		&&	!bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_8;		
			} else if		top		&&	!bottom		&& left		&&	!right	{		sprite_index = s_terrain_dirt_9;												
			} else if		top		&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_10;
			} else if		!top	&&	bottom		&& !left	&&	!right	{		sprite_index = s_terrain_dirt_11;					
			} else if		top		&&	bottom		&& !left	&&	!right	{		sprite_index = s_terrain_dirt_12;							
			} else if		top		&&	!bottom		&& !left	&&	!right	{		sprite_index = s_terrain_dirt_13;
			} else if		!top	&&	!bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_14;
			} else if		!top	&&	!bottom		&&	left	&&	right	{		sprite_index = s_terrain_dirt_15;															
			} else if		!top	&&	!bottom		&&	left	&&	!right	{		sprite_index = s_terrain_dirt_16; }
				
				
			break;
				
				
			
			
			
	case o_terrain :
		
			// Terrain sprite selection, 16 possible sprites based on position relative to other terrain blocks
	
			if				!top	&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_1;
			} else if		!top	&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_2;
			} else if		!top	&&	bottom		&& left		&&	!right	{		sprite_index = s_terrain_dirt_3;
			} else if		top		&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_4;
			} else if		top		&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_5;							
			} else if		top		&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_6;
			} else if		top		&&	!bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_7;			
			} else if		top		&&	!bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_8;		
			} else if		top		&&	!bottom		&& left		&&	!right	{		sprite_index = s_terrain_dirt_9;												
			} else if		top		&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_10;
			} else if		!top	&&	bottom		&& !left	&&	!right	{		sprite_index = s_terrain_dirt_11;					
			} else if		top		&&	bottom		&& !left	&&	!right	{		sprite_index = s_terrain_dirt_12;							
			} else if		top		&&	!bottom		&& !left	&&	!right	{		sprite_index = s_terrain_dirt_13;
			} else if		!top	&&	!bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_14;
			} else if		!top	&&	!bottom		&&	left	&&	right	{		sprite_index = s_terrain_dirt_15;															
			} else if		!top	&&	!bottom		&&	left	&&	!right	{		sprite_index = s_terrain_dirt_16; }
				
				
			break;
			
		
		default :
		
			// Terrain sprite selection, 16 possible sprites based on position relative to other terrain blocks
	
			if				!top	&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_1;
			} else if		!top	&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_2;
			} else if		!top	&&	bottom		&& left		&&	!right	{		sprite_index = s_terrain_dirt_3;
			} else if		top		&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_4;
			} else if		top		&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_5;							
			} else if		top		&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_6;
			} else if		top		&&	!bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_7;			
			} else if		top		&&	!bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_8;		
			} else if		top		&&	!bottom		&& left		&&	!right	{		sprite_index = s_terrain_dirt_9;												
			} else if		top		&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_dirt_10;
			} else if		!top	&&	bottom		&& !left	&&	!right	{		sprite_index = s_terrain_dirt_11;					
			} else if		top		&&	bottom		&& !left	&&	!right	{		sprite_index = s_terrain_dirt_12;							
			} else if		top		&&	!bottom		&& !left	&&	!right	{		sprite_index = s_terrain_dirt_13;
			} else if		!top	&&	!bottom		&& !left	&&	right	{		sprite_index = s_terrain_dirt_14;
			} else if		!top	&&	!bottom		&&	left	&&	right	{		sprite_index = s_terrain_dirt_15;															
			} else if		!top	&&	!bottom		&&	left	&&	!right	{		sprite_index = s_terrain_dirt_16; }
				
				
			break;
			
			
			
	#endregion

	#region Gold
	case o_terrain_gold :
		
		// Terrain sprite selection, 16 possible sprites based on position relative to other terrain blocks
	
			if				!top	&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_gold_1;
			} else if		!top	&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_gold_2;
			} else if		!top	&&	bottom		&& left		&&	!right	{		sprite_index = s_terrain_gold_3;
			} else if		top		&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_gold_4;
			} else if		top		&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_gold_5;							
			} else if		top		&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_gold_6;
			} else if		top		&&	!bottom		&& !left	&&	right	{		sprite_index = s_terrain_gold_7;			
			} else if		top		&&	!bottom		&& left		&&	right	{		sprite_index = s_terrain_gold_8;		
			} else if		top		&&	!bottom		&& left		&&	!right	{		sprite_index = s_terrain_gold_9;												
			} else if		top		&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_gold_10;
			} else if		!top	&&	bottom		&& !left	&&	!right	{		sprite_index = s_terrain_gold_11;					
			} else if		top		&&	bottom		&& !left	&&	!right	{		sprite_index = s_terrain_gold_12;							
			} else if		top		&&	!bottom		&& !left	&&	!right	{		sprite_index = s_terrain_gold_13;
			} else if		!top	&&	!bottom		&& !left	&&	right	{		sprite_index = s_terrain_gold_14;
			} else if		!top	&&	!bottom		&&	left	&&	right	{		sprite_index = s_terrain_gold_15;															
			} else if		!top	&&	!bottom		&&	left	&&	!right	{		sprite_index = s_terrain_gold_16; }
				
				
			break;
		
		
	#endregion


	#region Metal
	case o_terrain_invincible :
		// Terrain sprite selection, 16 possible sprites based on position relative to other terrain blocks
	
			if				!top	&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_metal_1;
			} else if		!top	&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_metal_2;
			} else if		!top	&&	bottom		&& left		&&	!right	{		sprite_index = s_terrain_metal_3;
			} else if		top		&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_metal_4;
			} else if		top		&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_metal_5;							
			} else if		top		&&	bottom		&& !left	&&	right	{		sprite_index = s_terrain_metal_6;
			} else if		top		&&	!bottom		&& !left	&&	right	{		sprite_index = s_terrain_metal_7;			
			} else if		top		&&	!bottom		&& left		&&	right	{		sprite_index = s_terrain_metal_8;		
			} else if		top		&&	!bottom		&& left		&&	!right	{		sprite_index = s_terrain_metal_9;												
			} else if		top		&&	bottom		&& left		&&	right	{		sprite_index = s_terrain_metal_10;
			} else if		!top	&&	bottom		&& !left	&&	!right	{		sprite_index = s_terrain_metal_11;					
			} else if		top		&&	bottom		&& !left	&&	!right	{		sprite_index = s_terrain_metal_12;							
			} else if		top		&&	!bottom		&& !left	&&	!right	{		sprite_index = s_terrain_metal_13;
			} else if		!top	&&	!bottom		&& !left	&&	right	{		sprite_index = s_terrain_metal_14;
			} else if		!top	&&	!bottom		&&	left	&&	right	{		sprite_index = s_terrain_metal_15;															
			} else if		!top	&&	!bottom		&&	left	&&	!right	{		sprite_index = s_terrain_metal_16; }
	
		break;
	#endregion
}
#endregion