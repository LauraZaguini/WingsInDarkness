/// @description

snd = 0;

sons = function(_audio){
	if(!audio_is_playing(_audio)){
		snd = audio_play_sound(_audio, 10, true);	
	}
}