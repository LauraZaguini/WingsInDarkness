/// @description
options = ["Play", "Credits", "Exit"];
op_length = array_length(options);
op_index = 0;
credits = false;
authors = ["[#a53030] Laura Zaguini [#ffffff]- Programming", "[#a53030]XIBILU [#ffffff]- Level Design and Programming", "[#a53030]GUPELOGIA [#ffffff]- Tile-sets and FXs", "[#73bed3]dinonosso [#ffffff]- Character Arts"];
authors_length = array_length(authors);

esc[array_length(options) - 1] = 0;

for(var i = 0; i < op_length; i++){
	esc[i] = 1;	
}

alpha_inicio = 1;

var gui_w = room_width;
var gui_h = room_height;
x = gui_w / 4;
y = gui_h / 2;

time_recal = false;

alarm[0] = room_speed * .5;