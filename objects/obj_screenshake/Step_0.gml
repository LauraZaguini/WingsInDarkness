/// @description Insert description here
// You can write your code in this editor

view_xport = random_range(-strong, strong)
view_yport = random_range(-strong, strong)

strong *= .95

if (strong <= .1)	instance_destroy();