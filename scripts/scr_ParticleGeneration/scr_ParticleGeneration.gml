// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ParticleGeneration(X,Y,SPEED,DIRECTION,SPREAD,SCALE,COLOR1,COLOR2,COLOR3,AMOUNT,INSTANT=false){
	
	// btw if you want you can add a variable for
	// controlling the layer the particle is created in
	//
	// anyway have fun hehe
	
	randomise();
	repeat(AMOUNT){
		with(instance_create_layer(X,Y,"Instances",obj_particle)){
			speed = SPEED* (0.8 + random(0.4));
			direction = DIRECTION;
			
			// adds some spread to the direction
			//                      this part(↓) makes it so the angle you input is the total variation
			direction += random(SPREAD) - SPREAD/2;
			
			image_xscale = SCALE;
			image_yscale = SCALE;
			// for scaling certain properties of the particle
			scaleScale = SCALE;
			
			instant = INSTANT;
			
			image_blend = COLOR1;
			colorMid = COLOR2;
			colorFinal = COLOR3;
		}
	}
}