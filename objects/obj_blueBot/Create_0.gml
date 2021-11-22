/// @description Insert description here
// You can write your code in this editor

patrolSpeed = 2
chaseSpeed = 5
shootSpeed = 0
speed = patrolSpeed
image_angle = 180
turnSpeed = 2


shootDistance = sprite_width*4
minimumShootDistance = sprite_width*2
viewDistance = sprite_width*8
visionWidth = 60

mode = "patrolLeft"
/* list of modes:
patrolLeft: direction set to 180, moves left
patrolRight: direction set to 0, moves right
followPlayer: turns toward player, moves toward player

*/


function checkForPlayer() {
	if (instance_exists(obj_player)) {
		var _player = instance_nearest(x,y,obj_player)
		var _dist = point_distance(x,y,_player.x,_player.y)
		if (_dist < viewDistance){
			if abs(angle_difference(image_angle, point_direction(x,y,_player.x,_player.y))) < visionWidth {
				if _dist > shootDistance
					return 1
				else if _dist < minimumShootDistance
					return 3
				else
					return 2
			}
		}
	return 0
	}
}