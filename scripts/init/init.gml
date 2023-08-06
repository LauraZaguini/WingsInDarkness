function init(){
	gml_pragma("global", "init()");
	
	global.part_sysSteps = part_system_create_layer("particles",0);
	global.part_typeSteps = part_type_create();
	
	part_type_sprite(global.part_typeSteps,spr_part_steps,1,0,1)
	part_type_life(global.part_typeSteps,25,30)
	part_type_alpha3(global.part_typeSteps,.8,1,0)
	part_type_size(global.part_typeSteps,.6,1,0,0)
	part_type_color2(global.part_typeSteps,c_white,c_gray)
	part_type_gravity(global.part_typeSteps,.06,90)
	part_type_orientation(global.part_typeSteps,0,359,0,2,true)
	part_type_direction(global.part_typeSteps,0,359,0,0)
}