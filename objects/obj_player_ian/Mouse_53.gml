 recoil = 90;

// white flash
scr_ParticleGeneration(x + lengthdir_x(12,dir),y + lengthdir_y(12,dir),"Instances",0,
dir,0,0.67,#FFFFFF,#51FF00,#008300,1,true);

scr_ParticleGeneration(x + lengthdir_x(12,dir),y + lengthdir_y(12,dir),"Instances",1.5,
dir + 60,45,0.25,#FFFFFF,#51FF00,#008300,2,false);
scr_ParticleGeneration(x + lengthdir_x(12,dir),y + lengthdir_y(12,dir),"Instances",1.5,
dir - 60,45,0.25,#FFFFFF,#51FF00,#008300,2,false);

instance_create_layer(x + lengthdir_x(8,dir),y + lengthdir_y(8,dir),"Instances",obj_bulletExample);
