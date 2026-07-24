event_inherited()

hp = 30
damage = 5
moveSpeed = 0.75
drainMoveSpeed = 0.375
sprite = spr_mancer
frames = sprite_get_number(sprite)
frameSpeed = sprite_get_speed(sprite)
depth = 10

targetAlly = noone

decideTarget = function() {
	// Algorithm to determine who the mancer will support
	// Score works like it does in golf (the lower the better)
	if targetAlly != noone && instance_exists(targetAlly) {
		targetAlly.beingBuffed = false
	}
	targetAlly = noone

	var supportHierarchy = [
		Obj_Bulk,
		Obj_Gunner,
		Obj_Chaser,
		Obj_Mancer
	]
	var supportScore = [
		0,
		25,
		50,
		100
	]
	var candidate = noone
	var candidateScore = 9999999999

	for(var i = 0; i < instance_number(Obj_Enemy); i++) {
		var enemy = instance_find(Obj_Enemy, i)
		if enemy == id { continue }
	
		var enemyIndex = array_get_index(supportHierarchy, enemy.object_index)
		var distanceScore = point_distance(x, y, enemy.x, enemy.y)
		var enemyScore = distanceScore + supportScore[enemyIndex]
		show_debug_message(enemy.object_index)
		show_debug_message($"{distanceScore} + {supportScore[enemyIndex]} = {enemyScore}\n")
	
		if enemyScore < candidateScore {
			candidate = enemy
			candidateScore = enemyScore
		}
	}

	targetAlly = candidate
	if candidate != noone { candidate.beingBuffed = true }
}

alarm[0] = 1

// Ian visual code

// for counting the frames
steps = 0;


