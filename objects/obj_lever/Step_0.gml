/// @description State Machine



switch(estado)	{
	case "idle":
	
	//Se eu to colidindo com o player e o player ta me pushando
	if (place_meeting(x, y, obj_player))	{
		if (obj_player.estado == "lever")	{
			push--;
			
			image_yscale += .03
		}
	}


	//se o meu valor de pushar for igual a zero, eu termino
	if (push <= 0)	{
		estado = "finish"
	}
	
	break;

	
	case "finish":
	push = 0;
	
	
	break;

}
