/// @description 

var temp = place_meeting(x, y + 1, obj_block)

if (temp && !chao){
	yscale = .8;
	
	//Criando as particulas
	for (var i = 0;i < random_range(100,0);i++)	{
		var _x = random_range(x - sprite_width,x + sprite_width)
		instance_create_depth(_x,y,depth - 1000,obj_poeira)
	}
	
	repeat(5)	{
		var inst = instance_create_layer(x + random_range(- 30, 30),y + random_range(-30, 30), layer, obj_part_bat);
		inst.depth = depth - 1
	}
	
}

if (temp && !chao)	{
		var inst = instance_create_layer(0,0, layer, obj_screenshake)
		inst.strong = 1.5
}