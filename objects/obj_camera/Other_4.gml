/// @description Insert description here
view_enabled = true
view_visible[0]=true
view_camera[0] = camera_create_view(0,room_height-view_height*window_scale,view_width*window_scale,view_height*window_scale,0,obj_camera,-1,-1,view_width*window_scale/2,view_height*window_scale/2)

alarm[0]=1
var _vx = camera_get_view_width(view_camera[0])
var _vy = camera_get_view_height(view_camera[0])
display_set_gui_size(_vx, _vy);