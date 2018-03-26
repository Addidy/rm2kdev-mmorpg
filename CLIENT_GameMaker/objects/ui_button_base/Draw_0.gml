/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 22CC96DA
/// @DnDArgument : "code" "if(hover){$(13_10)	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_gray, 1.0);$(13_10)}else{$(13_10)	draw_self();$(13_10)}$(13_10)$(13_10)draw_text(x + 3, y+ 8, string(text));"
if(hover){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_gray, 1.0);
}else{
	draw_self();
}

draw_text(x + 3, y+ 8, string(text));