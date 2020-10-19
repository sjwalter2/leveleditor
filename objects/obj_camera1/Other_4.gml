/// @description Insert description here

view_camera[0] = camera_create_view(0,room_height-viewH,viewW,viewH,0,obj_camera,-1,-1,viewW/2,viewH/2)
view_enabled = true
view_visible[0]=true

alarm[0]=1
var _vx = camera_get_view_width(view_camera[0])
var _vy = camera_get_view_height(view_camera[0])
display_set_gui_size(_vx, _vy);