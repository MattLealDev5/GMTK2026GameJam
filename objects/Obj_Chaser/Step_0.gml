event_inherited();

var color = beingDrained ? #51FF00 : #E60000
if(stepsChaser % 4 == 0){
	scr_ParticleGenerationChaser(x,y,"Instances",0.5,0,360,1,color,color,color,1,false);
}
if(stepsChaser % 2 == 0){
	scr_ParticleGenerationChaser(x,y,"Instances",0.75,0,360,0.5,color,color,color,1,false);
}

stepsChaser++;
