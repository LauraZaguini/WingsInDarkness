/// @description Desenhando

shader_set(shWhite);
/// @description Desenhando
if(instance_exists(obj_player)){	
	draw_sprite_ext(obj_player.sprite_index, obj_player.image_index, x, y, obj_player.ver, 1, image_angle, c_red, image_alpha);
}
shader_reset();