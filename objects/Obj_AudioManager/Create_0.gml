gameVolume = 80;

enum Sound {
	Shooting,
	enemyDeath,
	chaserDeath,
	playerDeath,
	uiButtons,
	takingDamage,
}

sounds = [
	0,
	0,
	0,
	0,
	0,
	0
]

playAudio = function(soundIndex, pitch = 1) {
	var sound = sounds[soundIndex]
	audio_play_sound(sound, 1, false, gameVolume, 0, pitch);
}