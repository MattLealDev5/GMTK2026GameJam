event_inherited()

if shootTimer > 0 { shootTimer--; }
if shootTimer <= 0 {
	shootTimer = shootTimerSet
	
	var bullet = instance_create_layer(x, y, "Enemies", Obj_EnemyBullet)
	bullet.direction = point_direction(x, y, player.x, player.y)
	
}
