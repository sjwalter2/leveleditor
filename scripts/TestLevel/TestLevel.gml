// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AutoSaveTestLevel(_level){
 var file = file_text_open_write(working_directory + "Levels\\AutoSave.lvl")
 file_text_write_string(file,ds_grid_write(_level))
 file_text_close(file)
}