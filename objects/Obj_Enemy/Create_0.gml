xPos = 0
yPos = 0

hp = 30
damage = 30

moveSpeed = 1
drainMoveSpeed = 0.5
beingDrained = false

sprite = spr_player_temp
currFrame = 0
frames = 1
frameSpeed = 30

player = instance_find(Obj_Player, 0)

move = function(object = player) {
	var dir = point_direction(x, y, object.x, object.y)
	facing = sign(cos(degtorad(dir)))
	
	var currSpeed = beingDrained ? drainMoveSpeed : moveSpeed
	var xSpd =  currSpeed * cos(degtorad(dir))
	var ySpd = -currSpeed * sin(degtorad(dir))

	x += xSpd
	y += ySpd	
}

// V For enemy children V
//
//event_inherited()
//
//hp = 50
//damage = 30
//sprite = spr_chaser
//frames = sprite_get_number(sprite)
//frameSpeed = sprite_get_speed(sprite)