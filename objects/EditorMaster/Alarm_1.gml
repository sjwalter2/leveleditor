/// @description Test a level


level = LoadLevelFrom(working_directory + "Levels\\AutoSave.lvl")
levelX = ds_grid_width(level)
levelY = ds_grid_height(level)-1
var i,j
for (i = 0; i < ds_grid_width(level); i += 1) {
	for (j = 0; j < ds_grid_height(level)-1; j += 1) {
		var index = ds_grid_get(level,i,j)
		if index != 0 {
			var instance = instance_create_layer((i)*gridsize,(j)*gridsize,"Instances",asset_get_index(index))
			instance.x += instance.sprite_width*0.5
			instance.y += instance.sprite_height*0.5
			show_debug_message("Loaded: " + index)
		}
	}	
}


room_width = levelX * gridsize
room_height = levelY * gridsize

instance_create_layer(0,0,"Instances",TesterMaster)
with(obj_camera_editor){
	instance_create_layer(x,y,"Instances",obj_player)
	sprite_index = spr_empty_sprite
}

instance_destroy()