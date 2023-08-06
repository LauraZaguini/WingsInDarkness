/// @description Insert description here
// You can write your code in this editor

if !other.is_bat	{
	

	if (image_index == 0)	{
		var inst = instance_create_layer(0, 0, layer, obj_screenshake)
		inst.strong = 5
		image_index = 1;
	
		with(obj_door)	{
			if (indice == other.indice)	{
				open = true
			}
		}
	
	}
}