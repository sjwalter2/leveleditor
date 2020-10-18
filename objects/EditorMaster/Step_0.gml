/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left)){
 //You might need to change mouse_x comparisons if/when menu objects are moved to GUI
 if(mouse_x < room_width - frameSize && mouse_y > frameSize) {
	 var gridX, gridY
	 gridX = floor(mouse_x/gridsize)
	 gridY = floor(mouse_y/gridsize)

	 instance_create_layer(gridX*gridsize,gridY*gridsize,"Instances",currentSelection)
	 ds_grid_set(level,gridX,gridY,object_get_name(currentSelection))
	 show_debug_message("Placing: " + object_get_name(currentSelection))
 }
}

if(keyboard_check_pressed(ord("S"))){
CheckForSaveFile()
SaveLevel(level)
}

if(keyboard_check_pressed(ord("L"))){
levelToLoad = "mylevel.lvl" //example: "default.lvl"
newLevel = 0;
alarm_set(0,1); //This alarm will check newLevel and decide to run alarm1 or alarm0, accordingly

editorRoom = room_goto(room_add())

}
