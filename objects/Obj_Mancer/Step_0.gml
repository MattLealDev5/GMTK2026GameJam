if targetAlly == noone { event_inherited();	exit }


if (!instance_exists(targetAlly)) {
	decideTarget()
} else {
	if point_distance(x, y, targetAlly.x, targetAlly.y) > 32 { move(targetAlly) }
}


// Ian visual code

// creates dark every 8 frames
if(steps % 8 = 0){
	repeat(2){
		scr_ParticleGeneration(x - 2 + round(random(4)),y - 10,"Enemies",1,90,30,0.6,#5B315B,#5B315B,#5B315B,1,false);
	}
}
// light particles are made every frame
scr_ParticleGeneration(x - 1 + round(random(2)),y - 10,"Enemies",1,90,30,0.3,#E60000,#E60000,#E60000,1,true);


steps++;
if(steps > 32){steps -= 32}
