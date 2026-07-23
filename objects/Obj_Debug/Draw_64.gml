if !isDebug { exit }

PixelText(1, 1, "Player")
PixelText(1, 6, $"{Obj_Player.hp} ({Obj_Player.hitstunTimer})")
PixelText(1, 11, $"{Obj_Player.xPos}, {Obj_Player.yPos}")
PixelText(1, 16, $"{instance_number(Obj_Bullet)}")
PixelText(1, 21, "Enemy")
PixelText(1, 26, $"{instance_number(Obj_Enemy)}")