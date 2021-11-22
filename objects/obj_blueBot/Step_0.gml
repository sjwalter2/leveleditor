direction = image_angle

if x<0.5*sprite_width
	mode = "patrolRight"
	
else if x>room_width-(0.5*sprite_width)
		mode = "patrolLeft"


if y<0
	y = room_height
else if y>room_height
	y = 0


switch mode {
	
	case "patrolLeft":
		speed = patrolSpeed
		var _diff = angle_difference( 180, image_angle);
		image_angle += min( turnSpeed, abs(_diff) ) * sign(_diff);
		if(checkForPlayer() == 1) mode = "followPlayer"
		break;
	case "patrolRight":
		speed = patrolSpeed
		var _diff = angle_difference( 0, image_angle);
		image_angle += min( turnSpeed, abs(_diff) ) * sign(_diff);
		if(checkForPlayer() == 1) mode = "followPlayer"
		break;
	case "followPlayer":
		//turn toward player
		var _player = instance_nearest(x,y,obj_player)
		var _angle = point_direction(x,y,_player.x,_player.y);
		var _diff = angle_difference( _angle, image_angle);
		image_angle += min( turnSpeed, abs(_diff) ) * sign(_diff);
		//check player's position
		switch checkForPlayer() {
			case 1:
				//within sight
				speed = chaseSpeed
				break
			case 2:
				//within shooting range
				speed = shootSpeed
				break
			case 3:
				//too close!
				speed = -patrolSpeed
				break

			case 0:
				//can't see player
				if hspeed <= 0
					mode = "patrolLeft"
				else
					mode = "patrolRight"
				break;
		}
		break;
}