//NOTES:
//If there are collision problems with this object, check the collision mask of spr_editor_frame
//If there are alignment problems with this object's frame, check the origin of spr_editor_frame

frame_position = -2; //Set frame position to outside the room if this object's submenu is not open
                     //Otherwise, set to its position within the submenu. "Step" will handle its actual position, until these objects are moved to the GUI.

object_reference = 0; //This will hold the name of the object the button will create

alarm_set(0,1)