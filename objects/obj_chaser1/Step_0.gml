
if(steps % 4 == 0){
	scr_ParticleGeneration(x,y,"Instances",0.5,0,360,1,#E60000,#E60000,#E60000,1,false);
}
if(steps % 2 == 0){
	scr_ParticleGeneration(x,y,"Instances",0.75,0,360,0.5,#E60000,#E60000,#E60000,1,false);
}


//motion_add(point_direction(x,y,objX,objY),0.25);

if(speed > 2){speed = 2;}

steps++;
