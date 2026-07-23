event_inherited()

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