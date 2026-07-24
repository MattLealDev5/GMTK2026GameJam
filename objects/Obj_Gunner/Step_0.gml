event_inherited()

if shootTimer > 0 { shootTimer--; }
if shootTimer <= 0 {
	shootTimer = shootTimerSet
	
	var bullet = instance_create_layer(x, y, "Enemies", Obj_EnemyBullet)
	bullet.direction = point_direction(x, y, player.x, player.y)
	
	shoot()
	
}

// Ian visual code
headAngle += 4;

if beingBuffed {
	// spawning particles

	// if it's divisible by 6
	if(steps % 18 = 0){
		scr_ParticleGenerationAlt(x - 8 + round(random(16)),y - 6 + round(random(12)),1.5,90,0,40,3,1);
	}

	// if divisible by 14
	if(steps % 42 = 0){
		scr_ParticleGenerationAlt(x - 8 + round(random(16)),y - 6 + round(random(12)),1.5,90,0,40,3,1);
	}


	if(steps > 18*42){steps -= 18*42}

	steps++;
}

