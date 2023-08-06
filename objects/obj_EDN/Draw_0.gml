draw_set_blend_mode_ext(bm_dest_color, bm_zero);
if surface_exists(EDN_light) {draw_surface(EDN_light, 0, 0);} else {EDN_light = surface_create(room_width, room_height);}
draw_set_blend_mode(bm_normal);
draw_set_colour(c_white)


if EDN_HUD == true {
draw_set_font(fo_EDN);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x,y-16,string_hash_to_newline(string("Press Q for remove and add HUD")))
draw_text(x,y,string_hash_to_newline(string("Press F for add 1 hour")))
draw_text(x,y+16,string_hash_to_newline(string("1 game hour takes ")+string(EDN_minute_real)+string(" seconds of life")))
draw_text(x,y+32,string_hash_to_newline(string("Press E to edit 1 hour time")))
draw_text(x,y+48,string_hash_to_newline(string("Time ")+string(EDN_hour)+string(":")+string(round(EDN_minute))))

}
//draw_text(x,y+16,string(round(R))+string("/")+string(round(G))+string("/")+string(round(B)))

