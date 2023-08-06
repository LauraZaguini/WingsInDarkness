/// @description
//Fazendo ele subtrair a escuridão da noite


if(velh != 0){
	ver = sign(velh);
}

if(is_bat){
	draw_circular_HP(x + 50, y - 10, stam, max_stam, c_aqua, 20, 1, 5);
}

if(damage){
	shader_set(shWhite);
	draw_sprite_ext(sprite_index, image_index, x, y + (sprite_height / 3 - sprite_height / 3 * yscale), xscale * ver, yscale, angle, c_white, image_alpha);
	damage_timing = 30;
	shader_reset();
}else {
	draw_sprite_ext(sprite_index, image_index, x, y + (sprite_height / 3 - sprite_height / 3 * yscale), xscale * ver, yscale, angle, c_white, image_alpha);	
}