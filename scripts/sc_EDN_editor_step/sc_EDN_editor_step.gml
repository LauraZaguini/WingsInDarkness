function sc_EDN_editor_step() {
	if EDN_Position_start = true {EDN_editor_color = make_colour_rgb(R,G,B)}
	if EDN_Position_start = false {EDN_editor_color = make_colour_rgb(R1,G1,B1)}


	//-----Add or remove-----
	if EDN_ctrl = false {
	if keyboard_check_direct(vk_left) {if EDN_Position_start = true {EDN_sun_direction+=1 EDN_change=true; EDN_saved_c = false;} else {EDN_sun_direction1+=1 EDN_change=true; EDN_saved_c = false;}}
	if keyboard_check_direct(vk_right) {if EDN_Position_start = true {EDN_sun_direction-=1 EDN_change=true; EDN_saved_c = false;} else {EDN_sun_direction1-=1 EDN_change=true; EDN_saved_c = false;}}
	if keyboard_check_direct(vk_up) {if EDN_Position_start = true {EDN_sun_distance+=1 EDN_change=true; EDN_saved_c = false;} else {EDN_sun_distance1+=1 EDN_change=true; EDN_saved_c = false;}}
	if keyboard_check_direct(vk_down) {if EDN_Position_start = true {EDN_sun_distance-=1 EDN_change=true; EDN_saved_c = false;} else {EDN_sun_distance1-=1 EDN_change=true; EDN_saved_c = false;}}
	}
	if EDN_ctrl = true {
	if keyboard_check_pressed(vk_left)  {
	    EDN_hour-=1
	if EDN_hour <0 {EDN_hour=EDN_editor_max_hours_in_day-1;}  
	    sc_EDN_load()
	    EDN_change=true
	    EDN_saved_c = false;
	}

	if keyboard_check_pressed(vk_right) {
	    EDN_hour+=1;
	if EDN_hour >=EDN_editor_max_hours_in_day {EDN_hour=0}
    
    
	 if EDN_autocopy = true {
	        R = R1;
	        G = G1;
	        B = B1;
	        EDN_sun_direction = EDN_sun_direction1;
	        EDN_sun_distance = EDN_sun_distance1;
	        sc_EDN_save();
	        }

	    sc_EDN_load();
	    EDN_change=true;
	    EDN_saved_c = false;    
          
	    }

	}

	//Manual save
	if keyboard_check_pressed(ord("S")) {sc_EDN_save(); EDN_change=false}

	//Copy END to START
	if keyboard_check_pressed(ord("C")) {
	R = R1;
	G = G1;
	B = B1;
	EDN_sun_direction = EDN_sun_direction1;
	EDN_sun_distance = EDN_sun_distance1;
	}

	//-----Switch Start END-----
	if keyboard_check_pressed(vk_space){if EDN_Position_start = true {

	EDN_Position_start = false
	} else {
	EDN_Position_start = true
	}}

	//-----Switch Autocopy-----
	if keyboard_check_pressed(ord("A")){if EDN_autocopy = true {

	EDN_autocopy = false
	} else {
	EDN_autocopy = true
	}}

	//-----Get start to end-----

	if keyboard_check_pressed(ord("D")) {
	R1 = R_save[0]
	G1 = G_save[0]
	B1 = B_save[0]

	EDN_sun_direction1  = EDN_sun_direction_save[0];
	EDN_sun_distance1   = EDN_sun_distance_save[0];
	}

	//-----Hold CTRL + save_C-----
	if keyboard_check(vk_control){EDN_ctrl = true} else {EDN_ctrl = false}




	//for lights -----
	draw_set_blend_mode(bm_normal);
	surface_set_target(EDN_editor_light);
	draw_clear(EDN_editor_color);
	draw_set_blend_mode(bm_normal);
	surface_reset_target();




}
