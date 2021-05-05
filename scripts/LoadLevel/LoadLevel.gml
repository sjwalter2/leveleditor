// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadLevel(_level){

 levelfile = _level

 var file = file_text_open_read(working_directory + "Levels\\" + levelfile)
 myLevel = ds_grid_create(1,1)
 ds_grid_read(myLevel,file_text_read_string(file))
 file_text_close(file)
 
 return myLevel
}