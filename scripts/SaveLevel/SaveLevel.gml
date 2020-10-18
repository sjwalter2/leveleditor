// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveLevel(){
 levelfile = "mylevel.lvl"
 var file = file_text_open_write(working_directory + "Levels\\" + levelfile)
 file_text_write_string(file,ds_grid_write(argument0))
 file_text_close(file)
}