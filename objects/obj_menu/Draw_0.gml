/// @description

draw_set_font(fnt_ui);
var gui_w = room_width;
var gui_h = room_height;
var margin = 20;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(!credits){
	x = lerp(x, gui_w / 3.5, .1);
	y = lerp(y, gui_h / 1, .1);
	
	for(var i = 0; i < op_length; i++){
		draw_set_color(c_white);
		
		var text = options[i];
		draw_set_color(c_black);

		if(i == op_index){
			esc[i] = lerp(esc[i], 1.4, .1);
			if(op_index == 0){
				draw_set_color(#a53030);
				options = ["[wave]Play[/wave]", "Credits", "Exit"];
			}
			
			if(op_index == 1){
				draw_set_color(#a53030);
				options = ["Play", "[wave]Credits[/wave]", "Exit"];
			}
			
			if(op_index == 2){
				draw_set_color(#a53030);
				options = ["Play", "Credits", "[shake]Exit[/shake]"];				
			}
		}else {
			esc[i] = lerp(esc[i], 1, .1);
			draw_set_color(c_white);
		}
		
		draw_text_scribble(gui_w / 50, gui_h / 50 + (margin * i), text);
		
		draw_set_color(c_white);
		draw_text_scribble(gui_w / 50, gui_h / 2.3,"[c_white][spr_keys,8,0] / [spr_keys,9,0] + [spr_keys,0,0] / [spr_enter,0,0]")
	}
}else {
	x = lerp(x, gui_w / 1.5, .1);
	y = lerp(y, gui_h / 2, .1);
	for(var i = 0; i < authors_length; i++){
		var text = authors[i];
		
		draw_set_color(c_white);
		draw_text_scribble(gui_w / 2.2, gui_h / 50 + (margin * i), text);
		
		draw_set_color(c_white);
		draw_text(gui_w / 2.2, gui_h / 2, "Press any key to return to the menu");
		
	}
}

draw_set_halign(-1);
draw_set_valign(-1);

draw_set_font(-1);