/// @description Moving between options

//inputs for menu
U_Key = keyboard_check_pressed(vk_up);
D_Key = keyboard_check_pressed(vk_down);
E_Key = keyboard_check_pressed(ord("E"));


//menu movement
pos += D_Key - U_Key;
if pos >= op_length { pos = 0; }
if pos < 0 { pos = op_length - 1};

//using the options
if E_Key {
	
	var _var = menu_level;
	
	switch (menu_level) {
	//Pause Menu
	case 0:
		switch(pos) {
	
		//Start Game
		case 0:
		room_goto_next();
		break;
	
		//Settings
		case 1:
		menu_level = 1;
		break;
	
	
		//Quit Game
		case 2:
		game_end();
		break;
		}
	break;
	
	case 1:
		//Settings Menu
		switch(pos) {
	
		//Windows Size
		case 0:
		break;
	
		//Brightness
		case 1:
		break;
	
		//Controls
		case 2:
		break;
	
		//Back
		case 3:
		menu_level = 0;
		break;
		}
		
	break;
	}
	
	//resetting position in menu
	if _var != menu_level {pos = 0;}
	
}





