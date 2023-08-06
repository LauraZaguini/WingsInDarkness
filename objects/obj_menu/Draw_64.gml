alpha_inicio = approach(alpha_inicio, 0, .03);

draw_set_font(fnt_ui);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var gui_w = display_get_gui_width();
draw_set_color(c_black);
draw_text_transformed(gui_w / 1.12, 20 + 1, "Press F11 to fullscreen", .6, .6, 0);
draw_set_color(-1);
draw_text_transformed(gui_w / 1.12, 20, "Press F11 to fullscreen", .6, .6, 0);
draw_set_color(-1);

if(alpha_inicio > 0){
	draw_set_color(c_black);
	draw_set_alpha(alpha_inicio);
	draw_rectangle(0, 0, display_get_width(), display_get_height(), 0);
	draw_set_alpha(1);
	draw_set_color(-1);
}

draw_set_halign(-1);
draw_set_valign(-1);

draw_set_font(-1);