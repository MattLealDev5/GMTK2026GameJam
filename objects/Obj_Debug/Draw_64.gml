if !isDebug { exit }

PixelText(1, 5, "Player")
PixelText(1, 9, $"{Obj_Player.hp} ({Obj_Player.hitstunTimer})")
PixelText(1, 13, $"{Obj_Player.xPos}, {Obj_Player.yPos}")
PixelText(1, 17, $"{instance_number(Obj_Bullet)}")
//PixelText(1, 21, $"{instance_find(Obj_Bullet, 0)}")