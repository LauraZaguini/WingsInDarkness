function sc_EDN_colour_picker() {
	draw_set_color(c_white);
	draw_sprite_general(spr_EDN_colour,0,0,0,200,200,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WPort, 0 )-220,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HPort, 0 )-__view_get( e__VW.HPort, 0 )+20,1,1,0,c_white,EDN_colour_2,EDN_colour_2,c_white,1);
	draw_sprite_stretched(spr_EDN_colour,1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WPort, 0 )-235,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HPort, 0 )-__view_get( e__VW.HPort, 0 )+20,200,200)

	draw_rectangle(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WPort, 0 )-235,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HPort, 0 )-__view_get( e__VW.HPort, 0 )+20,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WPort, 0 )-235+12,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HPort, 0 )-__view_get( e__VW.HPort, 0 )+20+200,1)
	draw_rectangle(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WPort, 0 )-220,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HPort, 0 )-__view_get( e__VW.HPort, 0 )+20,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WPort, 0 )-220+200,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HPort, 0 )-__view_get( e__VW.HPort, 0 )+20+200,1)

	if mouse_check_button(mb_left) {
	 EDN_change=true;
	 EDN_saved_c=false;
	 if mouse_x>= __view_get( e__VW.XView, 0 )+__view_get( e__VW.WPort, 0 )-235+1 && mouse_x<=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WPort, 0 )-235+12-1 {
	    if mouse_y>= __view_get( e__VW.YView, 0 )+__view_get( e__VW.HPort, 0 )-__view_get( e__VW.HPort, 0 )+20+1 && mouse_y<=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HPort, 0 )-__view_get( e__VW.HPort, 0 )+20+200-1{
        
	        EDN_colour_2 = draw_getpixel(mouse_x,mouse_y);
	  }}
  
	  if mouse_x>= __view_get( e__VW.XView, 0 )+__view_get( e__VW.WPort, 0 )-220+1 && mouse_x<=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WPort, 0 )-220+200-1{
	    if mouse_y>= __view_get( e__VW.YView, 0 )+__view_get( e__VW.HPort, 0 )-__view_get( e__VW.HPort, 0 )+20+1 && mouse_y<=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HPort, 0 )-__view_get( e__VW.HPort, 0 )+20+200-1{
        
	        if EDN_Position_start = true { 
	            EDN_colour_1 = draw_getpixel_ext(mouse_x,mouse_y);
	            B = (EDN_colour_1 >> 16) & 255;
	            G = (EDN_colour_1 >> 8) & 255;
	            R = EDN_colour_1 & 255}
        
	        if EDN_Position_start = false { 
	            EDN_colour_1 = draw_getpixel_ext(mouse_x,mouse_y);
	            B1 = (EDN_colour_1 >> 16) & 255;
	            G1 = (EDN_colour_1 >> 8) & 255;
	            R1 = EDN_colour_1 & 255}
	 }}


 
	}




}
