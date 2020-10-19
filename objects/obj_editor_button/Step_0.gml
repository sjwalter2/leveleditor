/// @description Insert description here
// You can write your code in this editor
x = view_wport[0] - sprite_width
y = frame_position * 70 + 5

var pX =  x - camera_get_view_x(view_camera[0]);
var pY =  y - camera_get_view_y(view_camera[0]);
pX *= display_get_gui_width() / camera_get_view_width(view_camera[0])
pY *= display_get_gui_height() / camera_get_view_height(view_camera[0])
	
	
	
/// @description Set to me

if(mouse_check_button_pressed(mb_left) && device_mouse_x_to_gui(0) >= x && device_mouse_y_to_gui(0) >= y && device_mouse_x_to_gui(0) <= x + sprite_width && device_mouse_y_to_gui(0) <= y + sprite_height)
{
	with(EditorMaster) {
		currentSelection = asset_get_index(other.object_reference)
		mouse_follower.sprite_index = object_get_sprite(currentSelection)
		show_debug_message("Selected: " + other.object_reference)
	}
}