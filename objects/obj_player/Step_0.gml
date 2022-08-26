/// @description Movement Setup


R_Key = keyboard_check(vk_right);
U_Key = keyboard_check(vk_up);
D_Key = keyboard_check(vk_down);
L_Key = keyboard_check(vk_left);

XSPD = (R_Key - L_Key) * moveSPD;
YSPD = (D_Key - U_Key) * moveSPD;

//set sprite
mask_index = sprite[DOWN];
if YSPD == 0 {
	if XSPD > 0 {face = RIGHT};
	if XSPD < 0 {face = LEFT};
}
	
if XSPD > 0 && face == LEFT {face = RIGHT};
if XSPD < 0 && face == RIGHT {face = LEFT};



if XSPD == 0 {
	if YSPD > 0 {face = DOWN};
	if YSPD < 0 {face = UP};
}
	
if YSPD > 0 && face == UP {face = DOWN};
if YSPD < 0 && face == DOWN {face = UP};
sprite_index = sprite[face];


//Collision
if place_meeting(x + XSPD, y, OBJ_Wall) == true
	{
		XSPD = 0;
	} 
	
if place_meeting(x, y + YSPD, OBJ_Wall) == true
	{
		YSPD = 0;
	}


x += XSPD;
y += YSPD;


//animate
if XSPD == 0 && YSPD == 0 {
	image_index = 0;
}