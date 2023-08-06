/// @description

switch(ambiente){
	case "florest":{
		sons(snd_forest_ambience);
	break;
	}
	case "castle":{
		sons(snd_castle_ambience);
	break;	
	}
}

if(room != rm_01){
	audio_sound_gain(snd_forest_ambience, 0, .1);
	audio_stop_sound(snd_forest_ambience);
}else {
	if(!audio_is_playing(snd_forest_ambience)){
		audio_sound_gain(snd_forest_ambience, 1, .1);
		audio_play_sound(snd_forest_ambience, 1, false);
	}	
}

if(room != rm_00){
	audio_sound_gain(snd_castle_ambience, 0, .1);
	audio_stop_sound(snd_castle_ambience);
}else {
	if(!audio_is_playing(snd_castle_ambience)){
		audio_sound_gain(snd_castle_ambience, 1, .1);
		audio_play_sound(snd_castle_ambience, 1, false);
	}	
}

if (room != rm_menu)	{
	audio_sound_gain(snd_musicmenu, 0, .1)
	audio_stop_sound(snd_musicmenu)
}else	{
	if (!audio_is_playing(snd_musicmenu))	{
		audio_sound_gain(snd_musicmenu, 1, .01)
		audio_play_sound(snd_musicmenu, 1, false)
	}
}