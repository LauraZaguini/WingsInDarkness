function sc_EDN_editor_create() {
	instance_create(x,y,obj_EDN_cursor);
	alarm[0]=0;

	globalvar EDN_editor_light; EDN_editor_light = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));     //creating surface ------

	R = 255;R1 = 255;   //Default value for R and R1-----
	G = 255;G1 = 255;   //Default value for G and G1-----
	B = 255;B1 = 255;   //Default value for B and B1-----

	globalvar EDN_editor_color; EDN_editor_color = make_colour_rgb(R,G,B);    //Create RGB-----

	globalvar EDN_sun_direction;    EDN_sun_direction = 0;         //Default value for sun positioning -----
	globalvar EDN_sun_distance;     EDN_sun_distance = 0            //default value for sun distance-----
	globalvar EDN_sun_direction1;    EDN_sun_direction1 = 0;         //Default value for sun positioning -----
	globalvar EDN_sun_distance1;     EDN_sun_distance1 = 0            //default value for sun distance-----
	globalvar EDN_day;              EDN_day = 0;                    //Default value for day -----
	globalvar EDN_minute;           EDN_minute = 0;                 //Default value for minute -----
	globalvar EDN_hour;             EDN_hour = 0;                   //Default value for hour -----
	globalvar EDN_minute_real;      EDN_minute_real = 0.5;           // What time will take 1 game hour in real seconds
	globalvar EDN_minute_speed;     EDN_minute_speed = 0;
	globalvar EDN_active;           EDN_active = true;              //Default value for activation -----
	globalvar EDN_HUD;              EDN_HUD = true;                 //HUD Visibility
	globalvar EDN_Position_start;   EDN_Position_start = true;          
	globalvar EDN_ctrl;             EDN_ctrl = false;
	globalvar EDN_change;           EDN_change = false;
	globalvar EDN_saved_c;          EDN_saved_c = false;

	globalvar EDN_colour_1; EDN_colour_1 = c_white;
	globalvar EDN_colour_2; EDN_colour_2 = c_red;

	globalvar EDN_get_start_to_end; EDN_get_start_to_end = true;      
	globalvar EDN_autocopy; EDN_autocopy = true;             

	for (i=0;i<=EDN_editor_max_hours_in_day;i+=1){
	globalvar EDN_output; EDN_output[i] = "//You can delete this !"

	globalvar R_save; R_save[i] = 255 ;
	globalvar G_save; G_save[i] = 255 ;
	globalvar B_save; B_save[i] = 255 ;
	globalvar R1_save; R1_save[i] = 255 ;
	globalvar G1_save; G1_save[i] = 255 ;
	globalvar B1_save; B1_save[i] = 255 ;

	globalvar EDN_sun_direction_save; EDN_sun_direction_save[i] = 0 ;
	globalvar EDN_sun_direction1_save; EDN_sun_direction1_save[i] = 0 ;
	globalvar EDN_sun_distance_save; EDN_sun_distance_save[i] = 0 ;
	globalvar EDN_sun_distance1_save; EDN_sun_distance1_save[i] = 0 ;

	};




}
