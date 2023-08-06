/// @description Criando a surface
surf = noone;

hour = 0;


//Sistema de dia e noite
dia_noite = function()	{
	//Alterando a hora
	hour = (sin(.09 * get_timer() / 1000000) + 1) / 2
	
	//Checar se a minha surface existe
	if (surface_exists(surf))	{
		//Se existe
				
		//Desenhando na surface
		surface_set_target(surf);
		
		//desenhando a escuridão
		//Definindo a cor
		draw_set_color(c_black);
		//Opacidade
		draw_set_alpha(hour - .35)
		//Finalmente desenhando
		draw_rectangle(0, 0, room_width, room_height, false);
		//Resetando os valores
		draw_set_alpha(1)
		draw_set_color(-1);
		
		gpu_set_blendmode(bm_subtract)	
		//Desenhando a luz
		//Escrevendo o código de dentro do player
		with(obj_player)	{
			if (obj_hour.hour > .5)	{
				draw_circle(x, y - sprite_height / 2, random_range(68, 70), false)	
				
				//Mudando a transparencia
				draw_set_alpha(.4)
				draw_circle(x, y - sprite_height / 2, random_range(100, 102), false)	
				
				draw_set_alpha(1)
			}
		}
		
		gpu_set_blendmode(bm_normal)

		
		//Apagando a surface
		surface_reset_target();
		
		
		draw_surface(surf, 0, 0);
		
	}else	{
		//Se ela não existe
		//Criando ela
		surf = surface_create(room_width, room_height);
	}
	
}
