gameVolume = 80;

enum Sound {
	shooting,
	enemyDeath1,
	enemyDeath2,
	enemyDeath3,
	chaserDeath,
	playerDeath1,
	playerDeath2,
	enemyHit,
	button1,
	button2,
	drainStart,
}

sounds = [
	Snd_Shooting,
	Snd_EnemyDeath1,
	Snd_EnemyDeath2,
	Snd_EnemyDeath3,
	Snd_ChaserDeath,
	Snd_PlayerDeath1,
	Snd_PlayerDeath2,
	Snd_EnemyHit,
	Snd_Button1,
	Snd_Button2,
	Snd_DrainStart,
]

playAudio = function(soundIndex, pitch = 1) {
	var sound = sounds[soundIndex]
	audio_play_sound(sound, 1, false, gameVolume/100, 0, pitch);
}