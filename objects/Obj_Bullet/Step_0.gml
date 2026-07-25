var enemy = instance_place(x, y, Obj_Enemy)
if enemy != noone {
	var damageDealt = damage
	if enemy.beingBuffed { damageDealt *= 0.1 }
		
	enemy.hp -= damageDealt
	if enemy.hp <= 0 {
		if enemy == Obj_Player.enemyDraining {
			Obj_Player.enemyDraining = noone
		}
		EnemyDeath(enemy)
	}

	instance_destroy()
}


// every three frames
if alarm[0] % 3 = 0 {
	scr_ParticleGeneration(x,y,"Instances",0.75,direction,0,0.25,#51FF00,#008300,#008300,1,false);
}
