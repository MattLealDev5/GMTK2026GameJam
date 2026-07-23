if targetAlly == noone { event_inherited();	exit }

if point_distance(x, y, targetAlly.x, targetAlly.y) > 16 { speed = 0 }
else { speed = 1 }