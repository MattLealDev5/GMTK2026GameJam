event_inherited()

hp = 30
damage = 30
sprite = spr_shooter_body
frames = sprite_get_number(sprite)
frameSpeed = sprite_get_speed(sprite)
value = 2

shootTimer = 120
shootTimerSet = 45

player = Obj_Player

// Ian visual code
headAngle = 0;
steps = 0;
shoot = function() {
	var headAngleS = y - 8 + dsin(headAngle);  // also replace this ↓ with the player obj
	var dirPlayerY = point_direction(x,headAngleS,player.x,player.y)

	// makes medium ones
	scr_ParticleGeneration(x + lengthdir_x(4,dirPlayerY),headAngleS + lengthdir_y(4,dirPlayerY),
	1.5,dirPlayerY,75,0.5,#FFFFFF,#E60000,#833100,2);

	// makes small ones
	scr_ParticleGeneration(x + lengthdir_x(4,dirPlayerY),headAngleS + lengthdir_y(4,dirPlayerY),
	2.5,dirPlayerY,45,0.25,#FFFFFF,#E60000,#833100,3);
}