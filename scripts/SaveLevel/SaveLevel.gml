// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveLevel(_level){
 var levelfile = get_save_filename_ext("*.lvl", "", "", "Choose a save file!");
 var file = file_text_open_write(levelfile)
 file_text_write_string(file,ds_grid_write(_level))
 file_text_close(file)
}