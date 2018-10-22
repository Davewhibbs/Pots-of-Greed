/// @description Setup Camera

camera = camera_create();
cam = view_camera[0];


view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;



shake_length = 60;
shake_magnitude = 0;
shake_remain = 0;
buff = 0;			// Make sure this is as big as the biggest screenshake

