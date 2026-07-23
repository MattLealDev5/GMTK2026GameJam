if !isDebug { exit }

PixelText(4, 4, "Player")
PixelText(4, 24, $"{Obj_Player.hp} ({Obj_Player.hitstunTimer})")
PixelText(4, 44, $"{Obj_Player.xPos}, {Obj_Player.yPos}")
PixelText(4, 64, $"{instance_number(Obj_Bullet)}")
//PixelText(4, 84, $"{instance_find(Obj_Bullet, 0)}")