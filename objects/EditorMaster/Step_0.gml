/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left)){
 //You might need to change mouse_x comparisons if/when menu objects are moved to GUI
 if(device_mouse_x_to_gui(0) > frameSize && device_mouse_x_to_gui(0) < window_get_width()-frameSize && device_mouse_y_to_gui(0) > frameSize && device_mouse_y_to_gui(0) < window_get_height()-frameSize) {
 if(mouse_x < room_width - frameSize && mouse_y > frameSize && mouse_y < room_height- frameSize && mouse_x > frameSize ) {
	var gridX, gridY
	gridX = floor(mouse_x/gridsize)-1
	gridY = floor(mouse_y/gridsize)-1
	
	if(gridX < levelX && gridY < levelY){
	
		var mannequin = instance_create_layer((gridX+1)*gridsize,(gridY+1)*gridsize,"Instances",obj_editor_mannequin)
		mannequin.object_reference = object_get_name(currentSelection)
		ds_grid_set(level,gridX,gridY,object_get_name(currentSelection))
		show_debug_message("Placing: " + object_get_name(currentSelection) + " at " + string(gridX) + "," + string(gridY))
	}
 }
 }
}

if(keyboard_check_pressed(ord("S"))){
CheckForSaveFile()
SaveLevel(level)
}

if(keyboard_check_pressed(ord("L"))){
levelToLoad = "mylevel.lvl" //example: "default.lvl"
newLevel = 0;
alarm_set(0,1);

editorRoom = room_goto(room_add())

}
