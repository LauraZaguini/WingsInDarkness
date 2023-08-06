/// @description Variaveis

//Herdando evento
event_inherited();

player_particle();

//Alterando a posição do ouvinte
audio_listener_orientation(0, 0, 1000, 0, -1, 0);


//Aceleração do chão
acel_chao			= .3;

//Parando a velocidade do player
stopped				= .4;

//Aceleração do ar
acel_air			= .1;

//Aceleração
acel				= acel_chao;

coyote_time			= 0;

coyote_time_max		= 10;

buff_cont			= 0;

buff_max			= 8;

vida				= 100;

backnormal			= .1;

ver					= 1;

max_stam			= 200;

damage_timing		= 30;

stam				= max_stam

angle				= 0;

#region Variavel de controle

//Variavel de controle para saber se esta tocando no chão ou não
isGrounded			= false;

//Se pode tocar o som quando estiver andando no chão
can_play			= false;

//Essa variavel pode ser utilizada para qualquer tipo de coisa
pode				= false;

jumped				= false;

volta_vida			= false;

damage				= false;

can_play			= false;

alarme4				= false;

#endregion

//Variaveis do Morcego
is_bat = false;

max_bat = 5 * room_speed;
bat_time = max_bat;

use_bat = 3;

alarm[2]			= 0.3 * 60;

instance_create_layer(x, y, layer, obj_cam);

#region Variaveis globais

global.player		= true;

global.CheckRespawnX = x;
global.CheckRespawnY = y;

#endregion

walk_angle			= function(_lerp = .1){
	angle = lerp(angle, 10 * -sign(velh), _lerp);	
}

normal_angle		= function(_lerp  = .2){
	angle = lerp(angle, 0, _lerp);	
}