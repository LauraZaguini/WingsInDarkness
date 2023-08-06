/// @description Desenhando bolas em volta do player

//Mudando angulo
angle += 8;

if(instance_exists(obj_player)){
	x = obj_player.x;
	y = obj_player.y - 10;

	//Sair do player e se movendo
	if(saindo){
		len += 1;
		alpha_tela -= 0.08;
		x = obj_player.x + lengthdir_x(len, angle);
		y = obj_player.y + lengthdir_y(len, angle) - 10;	
	
		image_xscale = xscale;
		image_yscale = yscale;
	
		if(len == 80){
			len = 80;
			parando = true;
		}
	}

	if(parando){
		len--;
		len -= 0.1;
		angle -= 3;
		image_alpha -= 0.02;
		if(image_alpha == 0){
			instance_destroy();	
		}
	}
}