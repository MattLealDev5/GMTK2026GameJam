var player = Obj_Player

direction = point_direction(x, y, player.x, player.y)
facing = sign(cos(degtorad(direction)))