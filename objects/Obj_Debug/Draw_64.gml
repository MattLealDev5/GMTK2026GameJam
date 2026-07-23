if !isDebug { exit }

PixelText(1, 5, "Player")
PixelText(1, 10, $"{Obj_Player.hp} ({Obj_Player.hitstunTimer})")
PixelText(1, 15, $"{Obj_Player.xPos}, {Obj_Player.yPos}")
PixelText(1, 20, $"{instance_number(Obj_Bullet)}")
//PixelText(1, 25, $"{instance_find(Obj_Bullet, 0)}")