/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
draw_set_colour(c_black);
var gw = display_get_gui_width()
var gh = display_get_gui_height()
draw_line(gw-frameSize,0,gw-frameSize,gh)
draw_line(frameSize,0,frameSize,gh)
draw_line(0,frameSize,gw ,frameSize)
draw_line(0,gh-frameSize,gw,gh-frameSize)
draw_text(gw/2, 4,"Current Selection: " + string(object_get_name(currentSelection)))

if(confirmNewLevel == 1) {
	draw_text(10,40,"Unsaved changes will be lost; C to cancel, N to start a New Level")
}