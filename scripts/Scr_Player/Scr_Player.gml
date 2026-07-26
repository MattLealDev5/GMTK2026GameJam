#region Damage, Health, and Death
function TakeDamage(damage){
	hp -= damage
	if hp <= 0 {
		Die()
	}
}

function HitDamage(damage) {
	TakeDamage(damage)
	hitstunTimer = hitstunTimerSet
}

function BleedDamage(damage) {
	TakeDamage(damage)
	hpBleedTimer = hpBleedTimerSet
}

function Die() {
	Obj_AudioManager.playAudio(Sound.playerDeath1)
	Obj_AudioManager.playAudio(Sound.playerDeath2)
	
	alive = false
	
	scr_enemyDeath("player")
	
	with Obj_Enemy {
		depth = 100
		if object_index == Obj_Mancer
			depth += 1
	}
	
	var i = 0
	repeat(3) {
		var xOffset = room_width/2 - 28 + 20*i
		var yOffset = room_height/2 - 20
		with instance_create_layer(xOffset, yOffset, "Cursor", Obj_ScoreName) {
			order = i
			var getChar = Obj_ScoreManager.savedName[i]
			if getChar >= ord("0") && getChar <= ord("9") {
				index = getChar - ord("0")
			} else if getChar >= ord("A") && getChar <= ord("Z") {
				index = getChar - ord("A") + 10
			}
		}
		i++
	}
	
	instance_create_layer(-999999, -999999, "Cursor", Obj_Submit)
}

function GetHeal(heal) {
	hp += heal
	if hp > hpMax { hp = hpMax }
}
#endregion