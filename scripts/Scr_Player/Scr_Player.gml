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
	alive = false
	instance_destroy(hand)
	
	scr_enemyDeath("player")
	
	with Obj_ScoreManager {
		submitScore("Doodoo man", playerScore)
	}
}

function GetHeal(heal) {
	hp += heal
	if hp > hpMax { hp = hpMax }
}
#endregion