global.pause		= true;
global.view_width	= camera_get_view_width(view_camera[0]);
global.view_height	= camera_get_view_height(view_camera[0]);

global.key_revert	=


display_set_gui_size(global.view_width, global.view_height);

enum menu_page {
	main,
	settings,
	audio,
	graphics,
	controls,
	pause,
	height
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}


/*//CREATE MENU PAGES
ds_menu_main = create_menu_page(
	["START GAME",	menu_element_type.script_runner,start_game],
	["TUTORIAL",	menu_element_type.script_runner,	start_tutorial],
	["SETTINGS",	menu_element_type.page_transfer,	menu_page.settings],
	["EXIT",		menu_element_type.script_runner,	exit_game]
);

ds_settings = create_menu_page(
	["GRAPHICS",	menu_element_type.page_transfer,	menu_page.graphics],
	["AUDIO",		menu_element_type.page_transfer,	menu_page.audio],
	["CONTROLS",	menu_element_type.page_transfer,	menu_page.controls],
	["BACK",		menu_element_type.page_transfer,	menu_page.main]
);

ds_menu_audio = create_menu_page(
	["MASTER",		menu_element_type.slider,			change_volume,			1,		[0,1]],
	["SOUND",		menu_element_type.slider,			change_volume,			1,		[0,1]],
	["MUSIC",		menu_element_type.slider,			change_volume,			1,		[0,1]],
	["BACK",		menu_element_type.page_transfer,	menu_page.settings]
);

ds_menu_graphics = create_menu_page(
	["WINDOW MODE",	menu_element_type.toggle,			change_window_mode,		1,		["FULLSCREEN", "WINDOWED"],
	//["RESOLUTION",	menu_element_type.shift,			change_resolution, 0, ["384 x216", "768 x ],
	["BACK",		menu_element_type.page_transfer,	menu_page.settings]
);

ds_menu_main_pause = create_menu_page(
	["RESUME",		menu_element_type.script_runner,	resume_game],
	["SETTINGS",	menu_element_type.page_transfer,	menu_page.settings],
	["EXIT",		menu_element_type.script_runner,	exit_game]
);

ds_menu_controls = create_menu_page(
	

);