function sc_EDN_draw() {
	if instance_exists(obj_EDN){
	draw_sprite_ext(Sprite,1,x+lengthdir_x(EDN_sun_distance,EDN_sun_direction),y+lengthdir_y(EDN_sun_distance,EDN_sun_direction),1,1,direction,c_black,0.7);}

	if instance_exists(obj_EDN_editor){
	if EDN_Position_start = true  {draw_sprite_ext(Sprite,1,x+lengthdir_x(EDN_sun_distance,EDN_sun_direction),y+lengthdir_y(EDN_sun_distance,EDN_sun_direction),1,1,direction,c_black,0.7);}
	if EDN_Position_start = false {draw_sprite_ext(Sprite,1,x+lengthdir_x(EDN_sun_distance1,EDN_sun_direction1),y+lengthdir_y(EDN_sun_distance1,EDN_sun_direction1),1,1,direction,c_black,0.7);}
	}



}
