/// @description Load a level


if(newLevel){
	
	//Create the level container
	level = ds_grid_create(10,11)

	//Reference to the number of rows and columns in the level:
	levelX = 100
	levelY = 100



} else {
	level = LoadLevel("mylevel.lvl")
	levelX = ds_grid_width(level)
	levelY = ds_grid_height(level)-1

	var i,j
	for (i = 0; i < ds_grid_width(level); i += 1) {
		for (j = 0; j < ds_grid_height(level)-1; j += 1) {
			var index = ds_grid_get(level,i,j)
			if index != 0
				instance_create_layer(i*gridsize,j*gridsize,"Instances",asset_get_index(index))
		}	
	}

}

room_width = levelX * gridsize + frameSize
room_height = levelY * gridsize


player = instance_create_layer(0,0,"Instances",obj_player)

mouse_follower = instance_create_layer(0,0,"Instances",obj_editor_selection)
mouse_follower.sprite_index = object_get_sprite(currentSelection)

//List of objects that can be placed by the editor
editor_objects = ["obj_blue","obj_red"]

//Create buttons to press for each object in editor_objects
var i;
for (i = 0; i < array_length(editor_objects); i+=1) {
	var newButton = instance_create_layer(0,0,"Instances",obj_editor_button)
	newButton.object_reference = editor_objects[i]
	newButton.frame_position = i
}
