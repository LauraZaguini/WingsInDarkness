// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function player_particle(){
	part_sysSteps = part_system_create_layer("particles",0);
	part_typeSteps = part_type_create();
	
	part_type_sprite(part_typeSteps,spr_part_steps,1,0,1)
	part_type_life(part_typeSteps,25,30)
	part_type_alpha3(part_typeSteps,.8,1,0)
	part_type_size(part_typeSteps,1,1.5,0,0)
	part_type_color2(part_typeSteps,c_white,c_gray)
	part_type_gravity(part_typeSteps,.06,90)
	part_type_orientation(part_typeSteps,0,359,0,2,true)
	part_type_direction(part_typeSteps,0,359,0,0)
	part_type_speed(part_typeSteps,.2,.4,-.01,0)
}