if timeUntilNextWave > 0 { timeUntilNextWave--; exit; }

if timeUntilNextWave <= 0 {
	timeUntilNextWave = timeUntilNextWaveSet
	
	spawnWave()
	credits += 1
	if creditBudget < 4 { creditBudget += 1 }
}