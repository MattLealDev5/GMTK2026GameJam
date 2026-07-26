function scr_particleSapping(){
	
	randomise();
	var posX = x + random_range(sprite_width/2 - (sprite_width/8),-sprite_width/2 + (sprite_width/8));
	var posY = y + random_range(sprite_height/2 - (sprite_height/8),-sprite_height/2 + (sprite_height/8));
	var dirToPlayer = point_direction(posX,posY,player.x,player.y);
	// 50th of the distance to player
	var disToPlayer = point_distance(posX,posY,player.x,player.y)/25;
	
	// bigger particles
	scr_ParticleGeneration(posX,posY,"Cursor",disToPlayer,
	dirToPlayer,0,0.2*disToPlayer/4,#FFFFFF,#51FF00,#51FF00,1,false);
	// smaller particles
	scr_ParticleGeneration(posX,posY,"Cursor",disToPlayer/2,
	dirToPlayer,0,0.4*disToPlayer/4,#FFFFFF,#51FF00,#51FF00,1,false);
	
}
