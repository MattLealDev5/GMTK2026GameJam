if mouse_check_button_pressed(mb_left) {
	if Obj_Player.alive {
		showScores = false
		Obj_EnemySpawner.allowSpawning = true
		Obj_Player.allowBleeding = true
	}
}