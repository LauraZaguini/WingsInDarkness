/// @Variaveis de Controle

debug = false;

global.partSystem = part_system_create();
part_system_depth(global.partSystem, -100);

parallax = function()	{
	
		var _layer2 = layer_get_id("arvores")
	
	var _x2 = camera_get_view_x(view_camera[0])
	
	layer_x(_layer2, _x2 / 4);
	
		var _layer3 = layer_get_id("Hint")
	
	var _x3 = camera_get_view_x(view_camera[0])
	
	layer_x(_layer3, _x3 * 10);
}

room = ROOM_START;