function EnemyDeath(enemy){
	if enemy.object_index == Obj_Chaser {
		Obj_AudioManager.playAudio(Sound.chaserDeath)
	} else {
		Obj_AudioManager.playAudio(Sound.enemyDeath1)
		Obj_AudioManager.playAudio(Sound.enemyDeath2)
	}
	
	Obj_ScoreManager.addPlayerScore(enemy.value)
	Obj_EnemySpawner.credits += enemy.value
	instance_destroy(enemy)
	
	if instance_number(Obj_Enemy) <= 0 {
		with Obj_EnemySpawner {
			timeUntilNextWave = clamp(timeUntilNextWave, 0, 60)
		}
	}
}