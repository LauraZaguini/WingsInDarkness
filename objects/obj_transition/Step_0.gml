/// @description

//Se eu ja mudei de room
if (change)	{
	alpha -= time
}else	{
	alpha += time
}

//Quando a room ficar escura muda a sala
if (alpha == 1)	{
	room_goto(destiny)
	
	//controlando a posição do player
	obj_player.x = destiny_x;
	obj_player.y = destiny_y;
	
}