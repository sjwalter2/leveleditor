/// @description Insert description here
// You can write your code in this editor
var spd = 6

if(keyboard_check(vk_left)) {
	hspeed = -spd
} else if (keyboard_check(vk_right)) {
	hspeed = spd
} else {
	hspeed = 0
}

if(keyboard_check(vk_up)) {
	vspeed = -spd
} else if (keyboard_check(vk_down)) {
	vspeed = spd
} else {
	vspeed = 0
}