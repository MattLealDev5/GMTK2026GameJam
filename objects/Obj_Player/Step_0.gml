var horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"))

var shooting = mouse_check_button(mb_left)
var draining = mouse_check_button(mb_right)
var drainToggle = mouse_check_button_pressed(mb_right)

var pressed = mouse_check_button_pressed(mb_left)
var mouseDir = point_direction(x, y, mouse_x, mouse_y)

// MOVEMENT
xSpd = horizontal * walkSpeed
ySpd = vertical * walkSpeed

xPos += xSpd
yPos += ySpd

xPos = clamp(xPos, 0, room_width)
yPos = clamp(yPos, 0, room_height)

x = xPos
y = yPos
facing = sign(cos(degtorad(mouseDir)))

// GUN
if shootTimer > 0 { shootTimer--; }
if shooting {
	if shootTimer <= 0 {
		var bullet = instance_create_layer(x, y, "Instances", Obj_Bullet)
		bullet.direction = mouseDir
		shootTimer = shootTimerSet
	}
}

// LIFE DRAIN
if drainToggle {
	if enemyDraining != noone {
		enemyDraining.beingDrained = false
		enemyDraining = noone
	}
	
	var enemy = instance_position(mouse_x, mouse_y, Obj_Enemy)
	
	if enemy != noone {
		enemyDraining = enemy
		enemy.beingDrained = true
	}
}
if enemyDraining != noone {
	enemyDraining.hp--
	hp++
	if enemyDraining.hp <= 0 {
		instance_destroy(enemyDraining)
		enemyDraining = noone
	}
}

// DEATH BY ENEMY
if hitstunTimer > 0 { hitstunTimer--; }
var enemy = instance_place(x, y, Obj_Enemy)
if enemy != noone {
	if hitstunTimer <= 0 {
		hitstunTimer = hitstunTimerSet
		hp -= enemy.damage
		
	}
}




