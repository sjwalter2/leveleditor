/// @description Insert description here
// You can write your code in this editor

//=============================================
//              Level Definition
//=============================================
// A level is stored in a ds_grid, with (0,0) being the upper left object and (levelX,levelY) being the bottom right object
// The ds_grid has a max width of levelX and a max height of levelY+1
// The object at ds_grid position (0,levelY+1) is reserved for metadata about the level. The object which occupies this position must be an instanec of obj_levelmetadata

newLevel = 1 //By default, when EditorMaster is created, we'll start with a blank level
			 //If this is set to 0, then we'll instead load an existing level
			 //For example, after exiting a playtest, an instance of EditorMaster will be created and given a levelname to auto-load
			 //The levelname to autoload can be set in variable levelToLoad

levelToLoad = "" //example: "default.lvl"
alarm_set(0,1); //This alarm will check newLevel and generate a new level or load a level, accordingly

editorRoom = room_goto(room_add())

//======================================
//=============Grid Details=============
//======================================

gridsize = 64 //Size of each "game block"
frameSize = 70 //Size of the GUI frame, which lines the right side of the screen

currentSelection = obj_blue //This is changed in the Left Mouse Button event of obj_editor_button
