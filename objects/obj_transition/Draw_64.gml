/// @description Fade-in
draw_set_alpha(alpha)
draw_set_color(c_black)
draw_rectangle(-1, -1, view_wport[0] + 1,  view_hport[0] + 1, false)

draw_set_alpha(1)
draw_set_color(-1)