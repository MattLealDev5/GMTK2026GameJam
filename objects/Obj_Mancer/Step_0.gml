if targetAlly == noone { event_inherited();	exit }


if (!instance_exists(targetAlly)) {
	decideTarget()
}
if point_distance(x, y, targetAlly.x, targetAlly.y) > 32 { move(targetAlly) }