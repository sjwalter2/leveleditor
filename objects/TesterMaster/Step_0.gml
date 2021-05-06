if(keyboard_check_pressed(ord("T"))){
	show_debug_message("T")
	editor = instance_create_layer(0,0,"Instances",EditorMaster)
	editor.newLevel=0
	editor.levelToLoad=working_directory + "Levels\\AutoSave.lvl"
	instance_destroy()
}

