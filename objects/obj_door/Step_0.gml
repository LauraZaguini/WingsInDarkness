
/// PARA ABRI-LA

	if(open) ///CASO A PORTA FIQUE ABERTA
	{
		image_yscale = lerp(image_yscale, 0, .2)
		
		instance_destroy(parede)
	}
	else ///CASO ESTEJA FECHADA
	{	
		if (!instance_exists(parede))	{
			var inst = instance_create_layer(x,y,layer,obj_block)
			parede = inst.id
			parede.x = x - 10
			parede.image_xscale = .5
			parede.image_yscale = 1.5 * image_yscale
		}
	}
	




