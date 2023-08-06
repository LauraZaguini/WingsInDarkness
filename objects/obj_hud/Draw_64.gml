/// @description

//Barra de vida
if(instance_exists(obj_player)){
	draw_sprite_ext(spr_vida, -1, 12, 25, 0 + obj_player.vida / 54, 1.8, 0, c_white, 1);		
	
	//Desenhando a vida
	draw_sprite_ext(spr_hud_vida, -1, 5, 5, 1.8, 1.8, 0, c_white, 1);
}