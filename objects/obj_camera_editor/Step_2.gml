var spd = 15

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

if x<frameSize
	x=frameSize
if x>room_width-frameSize
	x=room_width-frameSize
if y>room_height-frameSize
	y=room_height-frameSize
if y<frameSize
	y=frameSize
