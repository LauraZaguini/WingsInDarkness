if(room == rm_00){
	part_sysPoro = part_system_create_layer("particles",0);
	part_sysEmitter = part_emitter_create(part_sysPoro);
	part_typePoro = part_type_create();

	part_emitter_region(part_sysPoro,part_sysEmitter,0,display_get_width(),0,display_get_height(),ps_shape_rectangle,ps_distr_linear);
	part_emitter_stream(part_sysPoro,part_sysEmitter,part_typePoro,4)

	part_type_life(part_typePoro,85,120)
	part_type_alpha3(part_typePoro,.8,1,0)
	part_type_color2(part_typePoro,c_white,c_gray)
	part_type_gravity(part_typePoro,.02,180)
	part_type_direction(part_typePoro,0,359,0,0)
	part_type_speed(part_typePoro,.2,.4,0,0)	
}

noite = function(){
	part_sysPoro = part_system_create_layer("particles",0);
	part_sysEmitter = part_emitter_create(part_sysPoro);
	part_typePoro = part_type_create();

	part_emitter_region(part_sysPoro,part_sysEmitter,0,display_get_width(),0,display_get_height(),ps_shape_rectangle,ps_distr_linear);
	part_emitter_stream(part_sysPoro,part_sysEmitter,part_typePoro,4)

	part_type_life(part_typePoro,25,45)
	part_type_alpha3(part_typePoro,.8,1,0)
	part_type_color2(part_typePoro,#FCF9C1,#FEF6DD)
	part_type_gravity(part_typePoro,.02,180)
	part_type_direction(part_typePoro,0,359,0,0)
	part_type_speed(part_typePoro,.2,.4,0,0)
}