/// @description Fazendo a sombra
if (keyboard_check_pressed(vk_numpad1))	image_xscale--
if (keyboard_check_pressed(vk_numpad2))	image_xscale++

//Definindo a escala da sombra
shad.image_xscale = image_xscale;