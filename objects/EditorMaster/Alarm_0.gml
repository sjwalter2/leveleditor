/// @description Load a level


if(newLevel){

	//Reference to the number of rows and columns in the level:
	levelX = 20
	levelY = 20

	//Create the level container
	level = ds_grid_create(levelX,levelY+1)




} else {
	level = LoadLevel("mylevel.lvl")
	levelX = ds_grid_width(level)
	levelY = ds_grid_height(level)-1
	var i,j
	for (i = 0; i < ds_grid_width(level); i += 1) {
		for (j = 0; j < ds_grid_height(level)-1; j += 1) {
			var index = ds_grid_get(level,i,j)
			if index != 0 {
				var mannequin = instance_create_layer((i+1)*gridsize,(j+1)*gridsize,"Instances",obj_editor_mannequin)
				mannequin.object_reference = index
				show_debug_message("Loaded: " + index)
			}
		}	
	}

}

room_width = levelX * gridsize + (frameSize*2)
room_height = levelY * gridsize + (frameSize*2)


mouse_follower = instance_create_layer(0,0,"Instances",obj_editor_selection)
mouse_follower.sprite_index = object_get_sprite(currentSelection)


//Create buttons to press for each object in editor_objects
var i;
for (i = 0; i < array_length(editor_objects); i+=1) {
	var newButton = instance_create_layer(0,0,"Instances",obj_editor_button)
	newButton.object_reference = editor_objects[i]
	newButton.frame_position = i
}
