function sc_EDN_editor_draw() {
	//-----Světla------
	draw_set_blend_mode_ext(bm_dest_color, bm_zero);
	if surface_exists(EDN_editor_light) {draw_surface(EDN_editor_light,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));} else {EDN_editor_light = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));}
	draw_set_blend_mode(bm_normal);

	if not keyboard_check(ord("Q")) {

	//-----Barvy-----
	draw_set_alpha(1);
	draw_set_colour(c_white);
	sc_EDN_colour_picker();


	//-----Zobrazení HUD-----

	draw_set_colour(c_dkgray);
	draw_set_alpha(0.5);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);

	if EDN_Position_start = true {draw_rectangle(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*0,__view_get( e__VW.XView, 0 )+64*7,__view_get( e__VW.YView, 0 )+16*1,0)};
	if EDN_Position_start = false {draw_rectangle(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*1,__view_get( e__VW.XView, 0 )+64*7,__view_get( e__VW.YView, 0 )+16*2,0)};
	if EDN_Position_start = true {draw_rectangle(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*2,__view_get( e__VW.XView, 0 )+64*7,__view_get( e__VW.YView, 0 )+16*3,0)};
	if EDN_Position_start = false {draw_rectangle(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*3,__view_get( e__VW.XView, 0 )+64*7,__view_get( e__VW.YView, 0 )+16*4,0)};
	if EDN_Position_start = true {draw_rectangle(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*4,__view_get( e__VW.XView, 0 )+64*7,__view_get( e__VW.YView, 0 )+16*5,0)};
	if EDN_Position_start = false {draw_rectangle(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*5,__view_get( e__VW.XView, 0 )+64*7,__view_get( e__VW.YView, 0 )+16*6,0)};
	if EDN_Position_start = true {draw_rectangle(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*6,__view_get( e__VW.XView, 0 )+64*7,__view_get( e__VW.YView, 0 )+16*7,0)};
	if EDN_Position_start = false {draw_rectangle(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*7,__view_get( e__VW.XView, 0 )+64*7,__view_get( e__VW.YView, 0 )+16*8,0)};

	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_text(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*0,string_hash_to_newline(string("Time - Start =     ")+string(EDN_hour)))
	draw_text(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*1,string_hash_to_newline(string("Time - End =     ")+string(EDN_hour+1))); 
	draw_text(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*2,string_hash_to_newline(string("Sun Direction - Start =     ")+string(EDN_sun_direction)));      
	draw_text(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*3,string_hash_to_newline(string("Sun Direction - End =       ")+string(EDN_sun_direction1)));
	draw_text(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*4,string_hash_to_newline(string("Sun Distance - Start =      ")+string(EDN_sun_distance)));
	draw_text(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*5,string_hash_to_newline(string("Sun Distance - End =        ")+string(EDN_sun_distance1)));
	draw_text(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*6,string_hash_to_newline(string("RGB - Start =               ")+string(R)+string(" | ")+string(G)+string(" | ")+string(B)));
	draw_text(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*7,string_hash_to_newline(string("RGB - END =                 ")+string(R1)+string(" | ")+string(G1)+string(" | ")+string(B1)));
	draw_text(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+16*8,string_hash_to_newline(string("Hold Q for help !")));

	//-----HUD 2----
	if EDN_autocopy = true {draw_sprite(spr_EDN_check,0,__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 )+600-16-8)} else {draw_sprite(spr_EDN_check,1,__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 )+600-16-8)}
	if EDN_change = false {draw_sprite(spr_EDN_check,0,__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 )+600-16*2-8)} else {draw_sprite(spr_EDN_check,1,__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 )+600-16*2-8)}
	if EDN_saved_c = true {draw_sprite(spr_EDN_check,0,__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 )+600-16*3-8)} else {draw_sprite(spr_EDN_check,1,__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 )+600-16*3-8)}
	draw_text(__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )+600-32,string_hash_to_newline("Auto-copy your END values to next day START values (Press A)"));
	draw_text(__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )+600-32-16,string_hash_to_newline("Saved current hour! (Press S)"));
	draw_text(__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )+600-32-16*2,string_hash_to_newline("Saved and copied to clipboard ! (Press ENTER)"));






	}
	//----HELP-----
	draw_set_colour(c_white);
	draw_set_font(fo_EDN)

	if keyboard_check(ord("Q")) {
	//draw_rectangle(view_xview+64,view_yview+64,view_xview+view_wport-64,view_xview+view_hport-64,0)

	draw_set_colour(c_black);
	draw_text(__view_get( e__VW.XView, 0 )+64+8,__view_get( e__VW.YView, 0 )+64+12*0,string_hash_to_newline(string("With using of your arrows, you will change sun properties")))
	draw_text(__view_get( e__VW.XView, 0 )+64+8,__view_get( e__VW.YView, 0 )+64+12*1,string_hash_to_newline(string("With holded CTRL + arrows, you will change current hour")))
	draw_text(__view_get( e__VW.XView, 0 )+64+8,__view_get( e__VW.YView, 0 )+64+12*2,string_hash_to_newline(string("SPACEBAR = Switch between START/END")))
	draw_text(__view_get( e__VW.XView, 0 )+64+8,__view_get( e__VW.YView, 0 )+64+12*3,string_hash_to_newline(string("C = Copy your END position to Start position")))
	}





}
