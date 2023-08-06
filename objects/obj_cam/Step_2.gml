camW = camera_get_view_width(view_camera[0])
camH = camera_get_view_height(view_camera[0])

if(instance_exists(global.view_target) and room != rm_menu){
	if zoom{
		obj_cam.camW = lerp(obj_cam.camW,640,.02);
		obj_cam.camH = lerp(obj_cam.camH,360,.02);
	} else{
		obj_cam.camW = lerp(obj_cam.camW,1280, 1);
		obj_cam.camH = lerp(obj_cam.camH,720,  1);
	}
	
	global.cam_width = 800;
	global.cam_height = 500;
	
	var x_to = global.view_target.x - camW / 2;
	var y_to = global.view_target.y - camH / 2;
	
	x_to = clamp(x_to,0,room_width - camW);
	y_to = clamp(y_to,0,room_height - camH);
	
	var c_x = camera_get_view_x(view_camera[0]);
	var c_y = camera_get_view_y(view_camera[0]);
	
	var n_x = lerp(c_x,x_to,view_spd) + random_range(-shake_value,shake_value);
	var n_y = lerp(c_y,y_to,view_spd) + random_range(-shake_value,shake_value);
	shake_value = approach(shake_value,0,.08)
	
	camera_set_view_size(view_camera[0],camW,camH)
	camera_set_view_angle(view_camera[0],random_range(-shake_value,shake_value))
	
	camera_set_view_pos(view_camera[0],n_x,n_y);
} else if room = rm_menu and instance_exists(obj_menu){

	obj_cam.camW = lerp(obj_cam.camW,1280, 1);
	obj_cam.camH = lerp(obj_cam.camH,720,  1);
	var target_x = obj_menu.x - global.cam_width / 2;
	var target_y = obj_menu.y - global.cam_height / 2;
	
	var mousex = lerp(target_x,mouse_x,view_spd);
	var mousey = lerp(target_y,mouse_y,view_spd);
	
	mousex = clamp(mousex,0,room_width - global.cam_width);
	mousey = clamp(mousey,0,room_height - global.cam_height);
	
	var c_x = camera_get_view_x(view_camera[0]);
	var c_y = camera_get_view_y(view_camera[0]);
	
	var n_x = lerp(c_x,mousex,view_spd) + random_range(-shake_value,shake_value);
	var n_y = lerp(c_y,mousey,view_spd) + random_range(-shake_value,shake_value);
	
	shake_value = approach(shake_value,0,.08)
	
	camera_set_view_pos(view_camera[0],n_x,n_y);
	camera_set_view_angle(view_camera[0],random_range(-shake_value,shake_value))
	
	global.camx = c_x
	global.camy = c_y
} 