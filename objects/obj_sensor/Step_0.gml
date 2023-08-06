/// @description Transição

//Checando se eu estou colidindo com o player
var player = place_meeting(x,y,obj_player)

//Input da transição
var input = keyboard_check_pressed(ord("L")) or keyboard_check_pressed(ord("Z"));

//Se o player está colidindo comigo
if (player && input)	{
	obj_player.estado = "door"
	
	//Transição
	var tran = instance_create_layer(0, 0, layer, obj_transition);
	tran.destiny = destiny;
	tran.destiny_x = destiny_x;
	tran.destiny_y = destiny_y;
	
	
}