event_inherited()

if player.alive {
	if shootTimer > 0 { shootTimer--; }
	if shootTimer <= 0 {
		shootTimer = shootTimerSet
	
		var bullet = instance_create_layer(x, y, "Enemies", Obj_EnemyBullet)
		bullet.direction = point_direction(x, y, player.x, player.y)
		bullet.image_angle = bullet.direction
	
		shoot()
	
	}
}

// Ian visual code
headAngle += 4;

