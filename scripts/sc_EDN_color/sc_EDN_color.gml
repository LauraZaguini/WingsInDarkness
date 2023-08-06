/// @description sc_END_color(Start hour, End hour, Start R,G,B End R,G,B, Sun direction - Start, End, Sun distance - Start, End)
/// @param Start hour
/// @param  End hour
/// @param  Start R
/// @param G
/// @param B End R
/// @param G
/// @param B
/// @param  Sun direction - Start
/// @param  End
/// @param  Sun distance - Start
/// @param  End
function sc_EDN_color(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11) {
	//-----TRUE-----
	if EDN_hour >=argument0 && EDN_hour <argument1 {
	if EDN_active = true{

	R = argument2; 
	G = argument3;
	B = argument4;

	R1 = argument5;
	G1 = argument6;
	B1 = argument7;

	EDN_sun_direction = argument8;
	EDN_sun_direction1 = argument9;
	EDN_sun_distance = argument10;
	EDN_sun_distance1 = argument11;


	EDN_active = false;
	}}

	//-----False-----
	if EDN_hour >=argument0 && EDN_hour <argument1 {
	if EDN_active = false{


	 R +=(argument5-argument2)*EDN_minute_speed/60; 
	 G +=(argument6-argument3)*EDN_minute_speed/60;
	 B +=(argument7-argument4)*EDN_minute_speed/60;
 

 
	 EDN_sun_direction+=round((argument9-argument8))*EDN_minute_speed/60;
	 EDN_sun_distance+=round((argument11-argument10))*EDN_minute_speed/60;
 
	}
	}



}
