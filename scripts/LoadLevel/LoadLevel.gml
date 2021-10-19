
//This function lets the user choose a level; it returns the file string which can be passed into LoadLevelFrom
function LoadLevel(){
 var levelfile = get_open_filename_ext("*.lvl", "", "", "Choose a save file!");
 return levelfile
}

//This function is passed a level name and loads it automatically into "myLevel"
function LoadLevelFrom(_levelfile){

 var file = file_text_open_read(_levelfile)
 myLevel = ds_grid_create(1,1)
 ds_grid_read(myLevel,file_text_read_string(file))
 file_text_close(file)
 
 return myLevel
}