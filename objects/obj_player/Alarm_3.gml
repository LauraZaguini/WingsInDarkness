/// @description Criando as bolhas


var circle1 = instance_create_depth(obj_player.x, obj_player.y, depth, obj_effect_death);
circle1.angle = 0;

var circle2 = instance_create_depth(obj_player.x, obj_player.y, depth, obj_effect_death);
circle2.angle = 90;

var circle3 = instance_create_depth(obj_player.x, obj_player.y, depth, obj_effect_death);
circle3.angle = 180;

var circle4 = instance_create_depth(obj_player.x, obj_player.y, depth, obj_effect_death);
circle4.angle = 270;

obj_effect_death.saindo = true;

obj_effect_death.pode = true;

obj_cam.zoom = true;

vida = 100;

alarme4 = true;

alarm[3] = -1;