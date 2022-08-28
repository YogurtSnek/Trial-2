/// @description Draw Menu 
//drawing menu bg
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//draw menu options
draw_set_font(FT_M5X7_DanielLinssen);
draw_set_valign(fa_top);
draw_set_halign(fa_left);


op_length = array_length(option[menu_level]);

for (var i = 0; i < op_length; i++) {
	var _c = c_white;
	if pos == i { _c = c_aqua; }
	draw_text_color(x+xop_border, y+yop_border + op_space*i, option[menu_level,i],_c,_c,_c,_c, 1);
}






