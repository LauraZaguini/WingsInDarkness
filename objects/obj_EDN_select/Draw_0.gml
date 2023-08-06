draw_sprite(spr_EDN_half,0,0,0)
draw_sprite(spr_EDN_half,1,400,0)



if mouse_x < 400 {
draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_rectangle(400,0,800,600,0) 

draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fo_EDN_select);
draw_text(400,300,string_hash_to_newline("Demo"))}


if mouse_x > 400 {
draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_rectangle(0,0,400,600,0) 

draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fo_EDN_select);
draw_text(400,300,string_hash_to_newline("Editor"))
}

if mouse_x < 400 {if mouse_check_button_pressed(mb_left) {room_goto(ro_EDN_test)}};
if mouse_x > 400 {if mouse_check_button_pressed(mb_left) {room_goto(ro_EDN_editor)}};

