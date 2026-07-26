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
walkSpeed = 1.4

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

// Ian visual code
//hand = instance_create_layer(x, y, "Cursor", obj_DirectionThing_theTHIRDone)
Iindex = 0;
dir = 0;
recoil = 0;

crosshairRotation = 0
handAngle = 0

shoot = function() {
	recoil = 90;
	scr_ParticleGeneration(x + lengthdir_x(8,dir),y + lengthdir_y(8,dir),
	"Instances",2,dir,60,0.5,#FFFFFF,#51FF00,#008300,3,false);
}