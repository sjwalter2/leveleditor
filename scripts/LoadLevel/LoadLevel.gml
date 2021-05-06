// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadLevel(){

 var levelfile = get_open_filename_ext("*.lvl", "", "", "Choose a save file!");

 var file = file_text_open_read(levelfile)
 myLevel = ds_grid_create(1,1)
 ds_grid_read(myLevel,file_text_read_string(file))
 file_text_close(file)
 
 return myLevel
}

function LoadLevelFrom(_levelfile){

 var file = file_text_open_read(_levelfile)
 myLevel = ds_grid_create(1,1)
 ds_grid_read(myLevel,file_text_read_string(file))
 file_text_close(file)
 
 return myLevel
}