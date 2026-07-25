if !alive { exit; }

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
//hand.x = x
//hand.y = y
facing = sign(cos(degtorad(mouseDir)))

// GUN
if shootTimer > 0 { shootTimer--; }
if shooting {
	if shootTimer <= 0 {
		shoot()
		var bullet = instance_create_layer(x, y, "Instances", Obj_Bullet)
		bullet.direction = mouseDir
		shootTimer = shootTimerSet
	}
}

// LIFE DRAIN
if drainToggle {
	// Enemy that was being drained is set to normal
	if enemyDraining != noone {
		enemyDraining.beingDrained = false
		enemyDraining = noone
	}
	
	// Set the enemy targeted to be drained
	var enemy = instance_position(mouse_x, mouse_y, Obj_Enemy)
	if enemy != noone {
		enemyDraining = enemy
		enemy.beingDrained = true
		
		// fireworks :D :D :D :D :D :D :D :D :D :D
		var eX = enemy.x, eY = enemy.y
		scr_ParticleGeneration(eX, eY,"Instances",0,0,0,1.5,#FFFFFF,#FFFFFF,#FFFFFF,1,true);
		scr_ParticleGenerationAlt(eX, eY,"Instances",3,0,360,40,1,8);
		scr_ParticleGenerationAlt(eX, eY,"Instances",4,0,360,50,2,8);
		scr_ParticleGenerationAlt(eX, eY,"Instances",5,0,360,60,3,8);
	}
}
if enemyDraining != noone {
	if drainTimer > 0 { drainTimer--; }
	if drainTimer <= 0 {
		var amount = !enemyDraining.beingBuffed ? 1 : 0
		enemyDraining.hp -= amount
		GetHeal(drainAmount)
		if enemyDraining.hp <= 0 {
			EnemyDeath(enemyDraining)
			enemyDraining = noone
		}
		
		drainTimer = drainTimerSet
	}
}

// HIT BY ENEMY
if hitstunTimer > 0 { hitstunTimer--; }
if hitstunTimer <= 0 {
	var enemy = instance_place(x, y, Obj_Enemy)
	if enemy != noone {
		HitDamage(enemy.damage); 
	} else {
		var enemyBullet = instance_place(x, y, Obj_EnemyBullet)
		if enemyBullet != noone {
			HitDamage(enemyBullet.damage)
		}
	}
}

// BLEED DAMAGE
if allowBleeding {
	if enemyDraining == noone || enemyDraining.beingBuffed {
		if hpBleedTimer > 0 { hpBleedTimer-=drainAmount; }
		if hpBleedTimer <= 0 {
			BleedDamage(2)
		}
	}
}


// Ian visual code

dir = point_direction(x,y,mouse_x,mouse_y);

// rotation value used in the crosshair blades
crosshairRotation += 1.5;
if(crosshairRotation > 90){crosshairRotation -= 90}

// falldown for the recoil
if(recoil > 0){recoil -= 9}

var processedDir = floor((dir + 30)/60);

switch(processedDir){
	// facing right
	case 6:
	case 0:
		Iindex = 0;
	break
	case 1:
		Iindex = 1;
	break
	case 2:
		Iindex = 2;
	break
	case 3:
		Iindex = 3;
	break
	case 4:
		Iindex = 4;
	break
	case 5:
		Iindex = 5;
	break
	
}

handAngle = point_direction(x,y,mouse_x,mouse_y);