var horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"))
var shooting = mouse_check_button(mb_left)
var draining = mouse_check_button(mb_right)
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
facing = mouseDir < 180 ? 1 : -1

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
// add code here

// DEATH BY ENEMY
if hitstunTimer > 0 { hitstunTimer--; }
if place_meeting(x, y, Obj_Enemy) {
	if hitstunTimer <= 0 {
		hitstunTimer = hitstunTimerSet
		hp -= 20 // CHANGE LATER
		
	}
}




