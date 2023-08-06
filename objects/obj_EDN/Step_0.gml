sc_EDN_cycle();

//set color -----
EDN_color= make_colour_rgb(R,G,B);


//-----Manual add 1 hour and HUD + Minute ask-----
/*
if keyboard_check_pressed(ord("F")){EDN_hour+=1 EDN_active=true EDN_minute = 0}
if keyboard_check_pressed(ord("Q")){if EDN_HUD = true {EDN_HUD=false;obj_EDN_cursor.visible=false} else {EDN_HUD=true; obj_EDN_cursor.visible=true}}
if keyboard_check_pressed(ord("E")){EDN_minute_real = get_integer("How much will take 1 game hour in real seconds ?",EDN_minute_real)};*/
//Counting of clocks-----
if EDN_minute_real !=0 {EDN_minute_speed = ((30/EDN_minute_real)/30)*2}
EDN_minute +=EDN_minute_speed;

if EDN_minute >=60 {EDN_hour+=1 EDN_minute=0 EDN_active=true}
if EDN_hour > EDN_Max_hours {EDN_hour=0 EDN_day+=1}


//for lights -----
draw_set_blend_mode(bm_normal);
surface_set_target(EDN_light);
draw_clear(EDN_color);
draw_set_blend_mode(bm_normal);
surface_reset_target();




