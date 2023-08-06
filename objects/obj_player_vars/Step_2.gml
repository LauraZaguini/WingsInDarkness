/// @description Colisão


//Colisão horizontal
repeat(abs(velh)){
	//Subindo rampa
	if(place_meeting(x + sign(velh), y, obj_block_ramp) 
	&& !place_meeting(x + sign(velh), y - 1, obj_block_ramp)){
		y--;	
	}
	
	//Subindo rampa
	if(place_meeting(x + sign(velh), y, obj_block_ramp) 
	&& place_meeting(x + sign(velh), y - 1, obj_block_ramp)) 
	&& !place_meeting(x + sign(velh), y - 2, obj_block_ramp){
		y -= 2;	
	}
	
	//Descendo rampa
	if(!place_meeting(x + sign(velh), y, obj_block_ramp) 
	&& !place_meeting(x + sign(velh), y + 1, obj_block_ramp) 
	&& place_meeting(x + sign(velh), y + 2, obj_block_ramp)){
		y++;	
	}	
	
	//Agora a colisão horizontal
	
	//Se não estiver tocando no obj_block na parte horizontal
	//MAIS a velocidade signatura que é de 1 ou -1
	if(!place_meeting(x + sign(velh), y, obj_block)){
		//A velocidade vai continuar se matendo constante com base na velocidade horizontal
		x += sign(velh);
	}else {
		//CASO tocar na parede
		//A velocidade horizontal ai ser 0
		velh = 0;
		//E irá quebrar o laço de repetição
		break;
	}
}

//Colisão vertical
repeat(abs(velv)){
	
	//Edge detection
	if(place_meeting(x, y - 1, obj_block)){
		//LADO ESQUERDO
		for(edge_width = 0; edge_width < edge_catch; edge_width++){
			if(!place_meeting(x - edge_width, y - 1, obj_block)){
				x -= edge_width;
				break;
			}
			
					
			//LADO DIREITO
			if(!place_meeting(x + edge_width, y - 1, obj_block)){
				x += edge_width;
				break;
			}
		}
		
	}
	
	if(!place_meeting(x, y + sign(velv), obj_block)){
		y += sign(velv);	
	}else {
		velv = 0;
		break;
	}
}