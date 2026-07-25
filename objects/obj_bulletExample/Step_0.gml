
// every three frames
scr_ParticleGeneration(x,y,"Instances",0.75,direction,0,0.25,#51FF00,#008300,#008300,1,false);


if(steps >= 12){
	instance_destroy();
	
	// ONLY IF the bullets dies because of time, it emmits paticles that go forward
	scr_ParticleGeneration(x,y,"Instances",2,direction,90,1/3,#51FF00,#51FF00,#008300,2,false);
	scr_ParticleGenerationAlt(x,y,"Instances",3,direction,30,30,2,1);
}

steps++;
