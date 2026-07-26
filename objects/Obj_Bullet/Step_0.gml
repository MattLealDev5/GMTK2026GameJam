var enemy = instance_place(x, y, Obj_Enemy)
if enemy != noone {
	var damageDealt = damage
	if enemy.beingBuffed { damageDealt *= 0.1 }
	
	Obj_AudioManager.playAudio(Sound.enemyHit)
		
	enemy.hp -= damageDealt
	
	scr_ParticleGenerationChaser(enemy.x,enemy.y,"Instances",speed*0.6,direction,90,0.5,#E60000,#E60000,#833100,2,false);
	
	scr_ParticleGeneration(x,y,"Instances",2,direction+120,45,1/3,#51FF00,#51FF00,#008300,1,false);
	scr_ParticleGeneration(x,y,"Instances",2,direction-120,45,1/3,#51FF00,#51FF00,#008300,1,false);
	
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
	scr_ParticleGenerationChaser(x,y,"Instances",0.75,direction,0,0.25,#51FF00,#008300,#008300,1,false);
}
