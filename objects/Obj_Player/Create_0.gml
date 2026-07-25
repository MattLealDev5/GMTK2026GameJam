sprite = Spr_Player
facing = 1
allowBleeding = false

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

currFrame = 0
frames = 2
frameSpeed = 4

shootTimer = 0
shootTimerSet = 10

enemyDraining = noone
drainTimer = 0
drainTimerSet = 10
drainRange = 96
drainAmount = 3.125
// 100 over 8 seconds
// damages twice per second
// 100 - 16x = 0
// 100 = 16x
// 100/16 = x
// x = 6.25

detach = function() {
	enemyDraining.beingDrained = false
	enemyDraining = noone
}

depth = 0
hand = instance_create_layer(x, y, "Cursor", obj_DirectionThing_theTHIRDone)