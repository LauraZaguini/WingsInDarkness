global.cam_width = 640;
global.cam_height = 360;
global.cam_scale = 3;
global.view_target = obj_player;
view_spd = 0.1;

camW = camera_get_view_width(view_camera[0])
camH = camera_get_view_height(view_camera[0])

window_set_size(global.cam_width * global.cam_scale,global.cam_height * global.cam_scale);
surface_resize(application_surface,global.cam_width * global.cam_scale,global.cam_height * global.cam_scale);
display_set_gui_size(global.cam_width,global.cam_height);
alarm[0] = 1;

shake_value = 0

zoom = false

global.camx = 0
global.camy = 0