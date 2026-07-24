function EnemyDeath(enemy){
	Obj_ScoreManager.addPlayerScore(enemy.value)
	Obj_EnemySpawner.credits += enemy.value
	instance_destroy(enemy)
	
	if instance_number(Obj_Enemy) <= 0 {
		with Obj_EnemySpawner {
			timeUntilNextWave = clamp(timeUntilNextWave, 0, 60)
		}
	}
}