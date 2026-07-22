if !isDebug { exit }

draw_text(0, 0, "Player")
draw_text(0, 16, $"{Obj_Player.hp} ({Obj_Player.hitstunTimer})")
draw_text(0, 32, $"{Obj_Player.xPos}, {Obj_Player.yPos}")
draw_text(0, 48, $"{instance_number(Obj_Bullet)}")