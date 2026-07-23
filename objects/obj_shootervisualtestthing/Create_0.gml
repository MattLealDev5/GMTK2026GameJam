headAngle = 0;
player = Obj_Player

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