/// @description Insert description here
// You can write your code in this editor


if pressed == false{
	if hover == true{
		image_index = 1;
	} 

	else if hover == false{
		image_index = 0;
	}

}

else {
	image_speed = 1;
}



if animation_end(){
	room_goto_next();
}