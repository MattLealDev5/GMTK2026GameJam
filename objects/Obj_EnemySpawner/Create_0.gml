allowSpawning = false

credits = 3
creditBudget = 1

timeUntilNextWave = 0
timeUntilNextWaveSet = 600

spawnWave = function() {
	var enemies = [
		Obj_Chaser,
		Obj_Gunner,
		Obj_Bulk,
		Obj_Mancer
	]
	var values = [
		1,
		2,
		3,
		4
	]
	
	while credits > 0 {
		var maxCreditSpending = credits < creditBudget ? credits : creditBudget
		var creditSpending = irandom_range(1, maxCreditSpending)
		
		var randDir = random(360)
		var randDist = random_range(165,185)
		var xPos = randDist*cos(degtorad(randDir)) + room_width/2
		var yPos = randDist*sin(degtorad(randDir)) + room_height/2
		instance_create_layer(xPos, yPos, "Enemies", enemies[creditSpending-1])
		credits -= creditSpending
	}
}