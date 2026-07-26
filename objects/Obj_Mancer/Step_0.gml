if targetAlly == noone { event_inherited();	exit }


if (!instance_exists(targetAlly)) {
	decideTarget()
} else {
	var edge = 48
	if !collision_rectangle(edge, edge, room_width-edge, room_height-edge, id, false, false) { move(targetAlly) }
}


// Ian visual code

if(!beingDrained){
    // while being drained the fire's normal
    
    // creates dark every 8 frames
    if(stepsHead % 8 = 0){
        repeat(2){
           scr_ParticleGeneration(x - 2 + round(random(4)),y - 10,"Enemies",1,90,30,0.6,#5B315B,#5B315B,#5B315B,1,false);
                
        }
    }
    // light particles are made every frame
    scr_ParticleGeneration(x - 1 + round(random(2)),y - 10,"Enemies",1,90,30,0.3,#E60000,#E60000,#E60000,1,true);
} else {
    // otherwise it's evil and twisted
    
    // creates dark every 8 frames
    if(stepsHead % 8 = 0){
        repeat(2){
           scr_ParticleGeneration(x - 2 + round(random(4)),y - 10,"Enemies",1,90,30,0.6,#008300,#008300,#008300,1,false);
                
        }
    }
    // light particles are made every frame
    scr_ParticleGeneration(x - 1 + round(random(2)),y - 10,"Enemies",1,90,30,0.3,#000000,#000000,#000000,1,true);
}


stepsHead++;
if(stepsHead > 32){stepsHead -= 32}
