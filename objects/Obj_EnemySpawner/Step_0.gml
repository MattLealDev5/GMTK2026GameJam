if timeUntilNextWave > 0 && Obj_Player.alive { timeUntilNextWave--; exit; }

if timeUntilNextWave <= 0 {
	timeUntilNextWave = timeUntilNextWaveSet
	
	spawnWave()
	credits += 1
	if creditBudget < 4 { creditBudget += 1 }
}