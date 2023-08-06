/// @Debugs

draw_set_font(fnt_ui);

if(keyboard_check_pressed(vk_f3)){
	debug = !debug;	
}

if (debug){
	var roomname = room_get_name(room);
	
	if(instance_exists(obj_player)){
			draw_text(20,40,obj_player.estado);
		draw_text(20,60,obj_player.velh);
		draw_text(20,80,obj_player.xscale);
		draw_text(20,100,"Gravidade: " + string(obj_player.velv));		
	}
	draw_text(20, 140, "FPS: " + string(round(fps_real)));
	draw_text(20, 160, "ROOM: " + string(roomname) + string(" | ") + string(room) + ".");
	
	if(instance_exists(obj_cam)){
		var viewport = camera_get_active();
		var viewportx = camera_get_view_x(view_camera[0]);
		var viewporty = camera_get_view_y(view_camera[0]);
		draw_text(20, 180, "Camera Settings: ");
		draw_text(20, 200, "View port: " + string(viewport));
		draw_text(20, 220, "View Port X: " + string(viewportx));
		draw_text(20, 240, "View Port Y: " + string(viewporty));
	}
}

draw_set_font(-1);