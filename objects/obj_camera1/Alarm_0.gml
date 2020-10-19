/// @description Insert description here
// You can write your code in this editor
view_wport[0] = viewW
view_hport[0] = viewH
var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);

with(obj_player)
	other.player = id