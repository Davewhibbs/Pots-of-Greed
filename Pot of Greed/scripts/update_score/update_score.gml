if in_game {
	switch controller {
		
		case 0:
			global.score_0 = gold;
			break;
			
		case 1:
			global.score_1 = gold;
			break;
			
		case 2:
			global.score_2 = gold;
			break;
			
		case 3:
			global.score_3 = gold;
			break;
			
		default:
			global.score_0 = gold;
			break;
	}
}