
// makes sure to only do this part if it's an enemy
if(sprite_index != spr_player_death){
	// sets color to red and then brown over the lifetime
	if(steps >= 20) && (steps < 40){
		color = #E60000;
		otherColor = #FFFFFF
	} else if(steps >= 40){
		color = #833100;
		otherColor = #E60000;
	}
	
	// spawns the death particles
	if(steps % 3 = 0){
		var posX = x + random_range(sprite_width/2 - (sprite_width/8),-sprite_width/2 + (sprite_width/8));
		var posY = y + random_range(sprite_height/2 - (sprite_height/8),-sprite_height/2 + (sprite_height/8));
		scr_ParticleGeneration(posX,posY,"Enemies",0,0,0,0.5,otherColor,#000000,#000000,1,true);
		scr_ParticleGenerationAlt(posX,posY,"Enemies",2,90,20,30,1,1);
	}
} else {
	//spawns the death particles
	if(steps % 5 = 0){
		var posY = y - 13 + image_index*2;
		repeat(2){
			var posX = x + random_range(sprite_width/2 - (sprite_width/6),-sprite_width/2 + (sprite_width/6));
			scr_ParticleGeneration(posX,posY,"Enemies",1.2,90,0,0.4,#000000,#525252,#949494,1,false);
		}
	}
	
	if(image_index >= 8){
		instance_destroy();
	}
}

steps++;

