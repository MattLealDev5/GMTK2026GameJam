sprite = Spr_Player
facing = 1

xPos = x
yPos = y

alive = true
hp = 100
hpMax = 100
hpBleedTimer = 30
hpBleedTimerSet = 30
hitstunTimer = 0
hitstunTimerSet = 60

xSpd = 0
ySpd = 0
walkSpeed = 2

shootTimer = 0
shootTimerSet = 10

enemyDraining = noone
drainTimer = 0
drainTimerSet = 10

depth = 0
hand = instance_create_depth(x, y, 0, obj_DirectionThing_theTHIRDone)