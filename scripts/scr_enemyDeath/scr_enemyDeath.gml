function scr_enemyDeath(ENEMY){
	
	switch(ENEMY){
		case "chaser":
			scr_ParticleGeneration(x,y,"Enemies",1,dir - 180,0,1,#FFFFFF,#E60000,#833100,1,false);
			scr_ParticleGeneration(x,y,"Enemies",3.5,dir - 180,30,0.67,#FFFFFF,#E60000,#833100,2,false);
			scr_ParticleGeneration(x,y,"Enemies",2.25,dir - 180,90,0.4,#FFFFFF,#E60000,#833100,6,false);
			scr_ParticleGeneration(x,y,"Enemies",5,dir - 180,15,0.25,#FFFFFF,#E60000,#833100,4,false);
		break
		case "shooter":
			with(instance_create_layer(x,y,"Enemies",obj_enemyDeath)){
				sprite_index = spr_shooter_death;
				alarm_set(0,60);
			}
		break
		case "bulk":
			with(instance_create_layer(x,y,"Enemies",obj_enemyDeath)){
				sprite_index = spr_bulk_death;
				alarm_set(0,60);
			}
		break
		case "mancer":
			with(instance_create_layer(x,y,"Enemies",obj_enemyDeath)){
				sprite_index = spr_mancer_death;
				alarm_set(0,60);
			}
		break
		case "player":
			with(instance_create_layer(x,y,"Instances",obj_enemyDeath)){
				sprite_index = spr_player_death;
			}
		break
	}
	
}