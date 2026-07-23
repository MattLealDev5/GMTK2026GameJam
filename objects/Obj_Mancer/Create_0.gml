event_inherited()

hp = 30
damage = 5
//sprite = spr_the_magician_guy_you_know_that_guy_right_guys?????
frames = sprite_get_number(sprite)
frameSpeed = sprite_get_speed(sprite)

targetAlly = noone

decideTarget = function() {
	// Algorithm to determine who the mancer will support
	// Score works like it does in golf (the lower the better)

	var supportHierarchy = [
		Obj_Bulk,
		Obj_Gunner,
		Obj_Chaser,
		Obj_Mancer
	]
	var supportScore = [
		0,
		10,
		50,
		100
	]
	var candidate = noone
	var candidateScore = 9999999999

	for(var i = 0; i < instance_number(Obj_Enemy); i++) {
		var enemy = instance_find(Obj_Enemy, 0)
		if enemy != id { continue }
	
		var enemyIndex = array_get_index(supportHierarchy, enemy.object_index)
		var enemyScore = point_distance(x, y, enemy.x, enemy.y) + supportScore[enemyIndex]
	
		if enemyScore < candidateScore {
			candidate = enemy
			candidateScore = enemyScore
		}
	}

	targetAlly = candidate
}

decideTarget()