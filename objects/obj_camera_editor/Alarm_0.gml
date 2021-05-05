view_wport[0] = view_width*window_scale
view_hport[0] = view_height*window_scale
var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);

with(EditorMaster){
	other.frameSize = frameSize*2
}