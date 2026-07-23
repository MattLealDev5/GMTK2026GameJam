if player == noone { exit; }

var dir = point_direction(x, y, player.x, player.y)
facing = sign(cos(degtorad(dir)))

var currSpeed = beingDrained ? drainMoveSpeed : moveSpeed
var xSpd =  currSpeed * cos(degtorad(dir))
var ySpd = -currSpeed * sin(degtorad(dir))

x += xSpd
y += ySpd

