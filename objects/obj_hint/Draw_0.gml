if place_meeting(x,y,obj_player){
	alpha_text = approach(alpha_text,1,.1)
} else {
	alpha_text = approach(alpha_text,0,.1)
}
if alpha_text > 0{
	draw_set_font(fnt_hint)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_alpha(alpha_text)
	draw_set_color(c_black);
	draw_text_scribble_ext(x,y,"[wave]" + string(text) + "[/wave]",120)
	draw_set_color(c_white);
	scribble_anim_wave(5, .05, .05)
	draw_text_scribble_ext(x,y,"[wave]" + string(text) + "[/wave]",120)
	draw_set_font(-1)
	draw_set_halign(-1)
	draw_set_valign(-1)
	draw_set_alpha(1)
}