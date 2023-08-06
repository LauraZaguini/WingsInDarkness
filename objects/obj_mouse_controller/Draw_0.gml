/// @description Desenhando o mouse
#region desenhando o mouse

#region Tremulação do mouse
var timer = get_timer() / 100000

var sinwave = 5 * sin(timer)

var angle = sinwave
#endregion


window_set_cursor(cr_none);

draw_sprite_ext(spr_mouse,-1,mouse_x,mouse_y,2,2,angle,c_white,random_range(.7,1));
#endregion