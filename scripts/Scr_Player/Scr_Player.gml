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
}

function GetHeal(heal) {
	
}
#endregion