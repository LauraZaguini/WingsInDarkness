/// @description Destruindo com o tempo

image_alpha = lerp(image_alpha, 0, 0.09);

if(image_alpha <= 0){
	instance_destroy();
}

if(obj_player.is_bat){
	if(alarm[0] < 0){
		alarm[0] = 20;	
	}
}