/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
var gw = display_get_gui_width()
var gh = display_get_gui_height()
draw_line(gw-frameSize,0,gw-frameSize,gh)
draw_line(0,frameSize,gw ,frameSize)
draw_text(gw/2, 4,"Current Selection: " + string(currentSelection))