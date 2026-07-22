array_insert(lastPositions, 0, [x, y])
array_pop(lastPositions)

var enemy = instance_place(x, y, Obj_Enemy)
if enemy != noone {
	enemy.hp -= damage
	if enemy.hp <= 0 { instance_destroy(enemy) }
	
	instance_destroy()
}