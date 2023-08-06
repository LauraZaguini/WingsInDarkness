/// @description Movimentação

//Herdando evento
event_inherited();

//Mudando sempre a posição do listener (que é o player)
audio_listener_position(x, y, 0);

//Controles
var right, left, avanco_h, jump, jump_r, jump_s,jump_v, mode, push;

//Botão para virar a direita
right		= keyboard_check(ord("D"))			|| keyboard_check(vk_right);

//Botão para virar a esquerda
left		= keyboard_check(ord("A"))			|| keyboard_check(vk_left);

//Botão de pulo
jump		= keyboard_check_pressed(ord("J"))	|| keyboard_check_pressed(ord("C"));

//Botão de soltar o pulo
jump_r		= keyboard_check_pressed(ord("J"))	|| keyboard_check_pressed(ord("C"));

//Botão pra controlar o pulo
jump_s		= keyboard_check_released(ord("J")) || keyboard_check_released(ord("C"));

//Botão pra voar
jump_v		= keyboard_check(ord("J"))			|| keyboard_check(ord("C"));

//Botão pra trocar o modo
mode		= keyboard_check_pressed(ord("K"))	|| keyboard_check_pressed(ord("X"));

//Botão pra pushar a alavanca
push		= keyboard_check(ord("L"))			|| keyboard_check(ord("Z"));

//Posição do avanco_h para velocidade horizontal
avanco_h	= (right - left) * max_velh;

if(global.player){
	#region virar morcego e pulo
	if (mode)    {
		if (bat_time)	{
			velv = -jumpspeed / 2
		}
	
			audio_play_sound(snd_bat, 0, 0, 0.69, 0, random_range(.7, 1));
	
	    is_bat = !is_bat
	
		repeat(100)	{
			var inst = instance_create_layer(x + random_range(- 30, 30),y + random_range(-30, 30), layer, obj_part_bat);
			inst.depth = depth - 1
		}
	
		if (use_bat < 0)	{
			var inst = instance_create_layer(0, 0, layer, obj_screenshake)
			inst.strong = 10
		}
	}

	if (is_bat)    {
		if(alarm[5] < 0){
			alarm[5] = 3;	
		}
	    sprite_index = spr_morcego_idle;
	}else {
	    sprite_index = spr_idle_player;
	}

	if (!is_bat)    {
	#region Evento de pular

	if(chao){
	    isGrounded = true;
	}else {
	    isGrounded = false;
	}

	if(!isGrounded){
	    if(coyote_time > 0){
	        coyote_time -= 1;
	        if(!jumped){
	            if(jump){
	                jumped = true;
	                acel = acel_air;
	                velv = -jumpspeed;
	            }
	        }
	    }
	}else {
	    jumped = false;
	    acel = acel_chao;
	    coyote_time = coyote_time_max;
	}

	if(jump and !is_bat){
		if(!audio_is_playing(snd_p_jump)){
			audio_play_sound(snd_p_jump, 1, false);	
		}
	    buff_cont = buff_max;
	}

	if(isGrounded and jump){
		yscale = .5;	
	}

	if(buff_cont > 0){
	    buff_cont -= 1;
	    if(chao){
	        velv = -jumpspeed;
	        buff_cont = 0;
	        jumped = true;
	    }
	}

	//Controlando a altura do pulo
	if (jump_s && velv < 0)    velv *= .7;

	#endregion
	}

	if(velv < 0 and jump){
		sprite_index = spr_jump_player;	
	}

	if(velv > 0 and !isGrounded){
		sprite_index = spr_fall_player;	
	}

	#region evento de voar
	if (is_bat)    {
	
		var chance = random_range(0,100)
	
		if (chance > 99)	{
			audio_play_sound(snd_batnoise, 0, 0, 1, 0, random_range(.6, 1));
		}
	
	
		repeat(1)	{
			var inst = instance_create_layer(x + random_range(- 10, 10),y - sprite_height / 2 + random_range(-5, 5), layer, obj_part_bat);
			inst.depth = depth + 1
		}
	
		if (estado != "lever")	bat_time--;
	
		if ((jump_v) && stam > 0 && bat_time) {
			if(!audio_is_playing(snd_p_jump)){
				audio_play_sound(snd_p_jump, 1, false);
			}
		    stam -= 1;
		    velv = -jumpspeed / 4;
		}
	}
	

	if(is_bat and jump_v and velh == 0){
		estado = "movendo";
	}

	if(is_bat and velv > 0){
		estado = "movendo";	
	}

	if ((chao) || (!jump_v))    {

		if (stam < max_stam)    {
			stam += .5
		}
	}

	if (bat_time <= 0 && chao && use_bat)	{
	
		bat_time = max_bat;
	
		use_bat -= 1;
	}

	if (bat_time <= 0)	{
	
		is_bat = false;
	}

	if (bat_time == 1)	{
		//Tocando o som dele virar morcego
		audio_play_sound(snd_bat, 0, 0, 0.69, 0, random_range(.7, 1));
	
		//criando as particulas
		repeat(100)	{
			var inst = instance_create_layer(x + random_range(- 30, 30),y - sprite_height / 2 + random_range(-30, 30), layer, obj_part_bat);
			inst.depth = depth - 1
		}
	}

	if (!is_bat && chao)	{
		//Resetando o valor do tempo e estamina
		bat_time = max_bat;
		stam = max_stam;
	
	}
	#endregion

	//Controlando a altura do pulo
	if (jump_s && velv < 0)	velv *= .7;

	#endregion


	#region Máquina de estado

	switch(estado){
		case "parado":{
			//Deixando o image_speed como 1 sempre
			image_speed = 1;
		
			normal_angle();
		
			if (is_bat)	{
				sprite_index = spr_morcego_run;
			}else	{
				sprite_index = spr_idle_player;
			}
			
			if (is_bat && chao)	{
				sprite_index = spr_morcego_idle;
			}
			//Mudnado sprite
			//sprite_change(spr_player_idle);
		
			//Alterando o estado
			if(right || left){
				estado = "movendo";	
			}
		
			//Se não estiver apertando RIGHT ou LEFT
			if(right - left == 0){
				estado = "parado";	
			}
		
			//Se o velv for maior do que 0
			//I´ra para o estado de caindo
			if(velv > 0){
				//estado = "caindo";	
			}
		
			//Parando velocidade
			velh = approach(velh, 0, stopped);
		
		
			//Mudando pro estado da alavanca
			//Se ele é o morcego
			if (is_bat)	{
			
	/*
				//se ele ta colidindo com a alavanca
				if (place_meeting(x, y, obj_lever.id))	{
					if (push && obj_lever.estado == "idle")	{
						//Mudando o estado
						estado = "lever";
					}
				}
			}
				}*/
			}
		
		
		break;
		}
	
		case "movendo":{
			//Deixando o image_speed como 1 sempre
			image_speed = 1;
		
		
			if (is_bat)	{
				sprite_index = spr_morcego_run;
				walk_angle();
			}else	{
				normal_angle(1);
				sprite_index = spr_run_player;
			}
		
			//Mudando sprite
			//sprite_change(spr_player_walk);
			if(right - left == 0){
				estado = "parado";	
			}
		
			//Se o velv for maior do que 0
			//Irá para o estado de caindo
			if(velv > 0){
				//estado = "caindo";	
			}
		
			//Aplicando velocidade
			velh = approach(velh, avanco_h, abs(acel));
		
		
			/*
			//Mudando pro estado da alavanca
			//Se ele é o morcego
			if (is_bat)	{
			
				//se ele ta colidindo com a alavanca
				if (place_meeting(x, y, obj_lever.id))	{
					if (push && obj_lever.estado == "idle")	{
						//Mudando o estado
						estado = "lever";
					}
				}
			}
		

			}*/
		
		
			break;	
			}			
		
			case "lever":	{
			velh = 0;
			velv = 0;	
			
			var chances = random_range(0,100)
		
			if (chances >= 50)	{
				repeat(5)	{
					var inst = instance_create_layer(x,y, layer,obj_part_bat);
					inst.direction = random_range(200,250)
				}
			}
		
		
			//Resetando a velocidade do sprite
			image_speed = 1;
		
			//Mudando o sprite
			sprite_index = spr_morcego_idle_block;
		
		
			//Se o estado da alavanca for o estado de quando ele terminou de puxar ela
			if (obj_lever.estado == "finish")	{
				//Trocando o estado
				estado = "parado";
			}
		
			y += 1
		
			if (!push)	{
				estado = "parado"
			}
		
			if (!instance_exists(obj_screenshake))	{
				var shak = instance_create_layer(0,0,layer,obj_screenshake)
				shak.strong = 3
			}
			break;
			}
			
			
			case "door":
			velh = 0;
			
			if (chao)	{
				velv = 0;
			}
			
				break;
			}
}
		



	#endregion

	#region Debug Posição do player

	if (obj_controller.debug)	{
		if (mouse_check_button(mb_left))	{
		
			#region Tremulação do player
				var timer = get_timer() / 100000

				var sinwave = 7 * sin(timer)

				var angle = image_angle + sinwave
			
				image_angle = angle
				#endregion
			
			x = mouse_x;
			y = mouse_y;
		
			velv = 0
		}else	{
			image_angle = approach(image_angle,0,velv / 10)
		}
	}

	if(!place_meeting(x,y,obj_shadow))	{
		damage_timing -= 1;
		if (vida > 0){
			if(alarm[1] < 0){
				alarm[1] = 30;
			}
		}
	}
	
if(instance_exists(obj_EDN))	{
		if (EDN_hour < 18)	{
		damage_timing -= 1;
		if (vida > 0){
			if(alarm[1] < 0){
				alarm[1] = 30;
			}
		}
	}
}
	

	if(damage_timing <= 0){
		damage = true;
	}else if(damage_timing >= 0){
		damage = false;	
	}
	if(place_meeting(x, y, obj_shadow) or (instance_exists(obj_EDN) && EDN_hour > 18))	{
		if(alarm[0] < 0){
			alarm[0] = 15;	
		}
		damage = false;
		if(!damage){
			image_blend = c_white;	
		}
		alarm[1] = -1;
		if(volta_vida){
			vida = approach(vida, 100, .3);
		}
	}else if (instance_exists(obj_EDN) && EDN_hour < 1)	{
			if(alarm[0] < 0){
			alarm[0] = 15;	
		}
		damage = false;
		if(!damage){
			image_blend = c_white;	
		}
		alarm[1] = -1;
		if(volta_vida){
			vida = approach(vida, 100, .3);
		}
	}

	#endregion

//Checkpoint
var checkPlace = instance_place(x,y,obj_checkpoint)
	if (checkPlace){
		with(checkPlace){
			global.CheckRespawnX = x + sprite_width /2;
			global.CheckRespawnY = y + sprite_height;
		}
	}


if(vida <= 0){
	global.player = false;
	image_alpha = 0;
	if(alarm[3] < 0){
		alarm[3] = 1;	
	}
}

if(image_alpha <= 0){
	if(instance_exists(obj_effect_death) and obj_effect_death.parando){
		if(alarm[4] < 0){
			alarm[4] = 10;
		}
	}
}

//Voltando a escala original do xscale e o yscale
xscale = lerp(xscale, 1, backnormal);
yscale = lerp(yscale, 1, backnormal);