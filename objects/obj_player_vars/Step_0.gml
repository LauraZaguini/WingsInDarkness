/// @description Gravidade

//Pegando a colisão do chão
chao = place_meeting(x, y + 1, obj_block);

//Se não estiver tocando no chão, o personagem irá ganhar gravidade
if(!chao && !is_bat){
	//A velocidade vertical vai ganhar a sua velocidade MAIS a velocidade da gravidade
	//Lembre-se para baixo é positivo e para cima é positivo
	velv += grav;	
}else if (!chao && is_bat)	{
	velv += grav / 2
}

//Limitando a gravidade
velv = clamp(velv, -max_velv, max_velv)