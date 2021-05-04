
//var gridX = device_mouse_x_to_gui(0)
//var gridY = device_mouse_y_to_gui(0)

if(device_mouse_x_to_gui(0) > frameSize && device_mouse_x_to_gui(0) < window_get_width()-frameSize && device_mouse_y_to_gui(0) > frameSize && device_mouse_y_to_gui(0) < window_get_height()-frameSize) {
	var gridX = floor(mouse_x/gridsize)*gridsize
	var gridY = floor(mouse_y/gridsize)*gridsize
	draw_sprite(spr_editor_frame,0,gridX,gridY)
}
