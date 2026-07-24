array_insert(lastPositions, 0, [x, y])
array_pop(lastPositions)

var enemy = instance_place(x, y, Obj_Enemy)
if enemy != noone {
	var damageDealt = damage
	if enemy.beingBuffed { damageDealt *= 0.1 }
		
	enemy.hp -= damageDealt
	if enemy.hp <= 0 {
		if enemy == Obj_Player.enemyDraining {
			Obj_Player.enemyDraining = noone
		}
		instance_destroy(enemy)
	}

	instance_destroy()
}