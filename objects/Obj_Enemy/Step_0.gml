if player == noone || !player.alive { exit; }

move()

if beingDrained {
	if(steps % 8 = 0)
		scr_particleSapping()
}


if beingBuffed {
	// spawning particles

	// if it's divisible by 6
	if(steps % 18 = 0){
		scr_ParticleGenerationAlt(x - 8 + round(random(16)),y - 6 + round(random(12)),"Cursor",1.5,90,0,40,3,1);
	}

	// if divisible by 14
	if(steps % 42 = 0){
		scr_ParticleGenerationAlt(x - 8 + round(random(16)),y - 6 + round(random(12)),"Cursor",1.5,90,0,40,3,1);
	}


	if(steps > 18*42){steps -= 18*42}

}
steps++;
