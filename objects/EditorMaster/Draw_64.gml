/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
var gw = display_get_gui_width()
var gh = display_get_gui_height()
draw_line(gw-70,0,gw-70,gh)
draw_line(0,63,gw ,63)
draw_text(gw/2, 4,"Current Selection: " + string(currentSelection))