/// @description draw placement frame

var gridX = 0
var gridY = 0

if(mouse_x > 0 && mouse_x < window_get_width()-frameSize && mouse_y > frameSize && mouse_y < window_get_height()) {
	gridX = floor(mouse_x/gridsize)*gridsize
	gridY = floor(mouse_y/gridsize)*gridsize
	draw_sprite(spr_editor_frame,0,gridX,gridY)
}