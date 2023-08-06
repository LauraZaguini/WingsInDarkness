/// @description Desenhando efeito na tela

draw_self();

var camx = camera_get_view_x(view_camera[0]);
var camy = camera_get_view_y(view_camera[0]);

draw_set_alpha(alpha_tela);
if(pode){
	depth = -9999;	
	draw_rectangle(room_width, room_height, camx, camy, false);
}

draw_set_alpha(1);