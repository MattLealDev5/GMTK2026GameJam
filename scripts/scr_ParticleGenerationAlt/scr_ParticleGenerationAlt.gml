// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ParticleGenerationAlt(X,Y,SPEED,DIRECTION,SPREAD,LIFETIME,COLOR,AMOUNT){
	
	// btw if you want you can add a variable for
	// controlling the layer the particle is created in
	//
	// anyway have fun hehe
	
	randomise();
	repeat(AMOUNT){
		with(instance_create_layer(X,Y,"Enemies",obj_particle_spark)){
			speed = SPEED;
			direction = DIRECTION;
			
			// adds some spread to the direction
			//                      this part(↓) makes it so the angle you input is the total variation
			direction += random(SPREAD) - SPREAD/2;
			
			// for scaling certain properties of the particle
			life = LIFETIME;
			
			switch(COLOR){
				case 1:
					sprite_index = spr_spark_red;
				break
				case 2:
					sprite_index = spr_spark_green;
				break
				case 3:
					sprite_index = spr_spark_pink;
				break
			}
			// makes sure all frames display equally throughout the lifetime
			image_speed	= 60/LIFETIME
		}
	}
}