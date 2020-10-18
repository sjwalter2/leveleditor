/// @description Set to me
with(EditorMaster) {
	currentSelection = asset_get_index(other.object_reference)
	mouse_follower.sprite_index = object_get_sprite(currentSelection)
	show_debug_message("Selected: " + other.object_reference)
}