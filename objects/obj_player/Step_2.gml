/// @description Troca de sprites
event_inherited();

if(estado == "movendo") and (velh >= 3) or (velh <= -3){
	if(!is_bat){
		var _id = instance_place(x, y + 1, obj_block);
		if(_id){
			randomize();
			snd = choose(_id.snd[0], _id.snd[1], _id.snd[2], _id.snd[3], _id.snd[4]);
			if(!audio_is_playing(snd) and can_play){
				can_play = false;
				alarm[2] = 0.4 * 60;
				audio_play_sound(snd, 1, false);
			}
		}
	}
}