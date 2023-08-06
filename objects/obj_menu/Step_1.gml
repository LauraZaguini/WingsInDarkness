/// @description
var key_up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
var key_down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
var key_action = keyboard_check_pressed(ord("J")) or keyboard_check_pressed(vk_enter);

if(key_up and !credits){
	audio_play_sound(ui_move, 1, 0);
	op_index--;
	if(op_index < 0) op_index = op_length - 1;
}else if(key_down and !credits){
	audio_play_sound(ui_move, 1, 0);
	op_index++;
	if(op_index > op_length - 1) op_index = 0;
}

if(key_action and !credits and time_recal){
	audio_play_sound(ui_click, 1, 0);
	switch(op_index){
		case 0:{
			room_goto(rm_00);
		break;	
		}
		case 1:{
			credits = true;
			time_recal = false;
			alarm[0] = room_speed * .8;
		break;	
		}
		
		case 2:{
			game_end();
		break;	
		}
	}
}