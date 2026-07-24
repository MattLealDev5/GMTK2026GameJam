

// get the id of the target enemy and put it somewhere to reference here btw ↓
var disToTarget1 = point_distance(x,y,Obj_Player.x,Obj_Player.y);
var dirToTarget1 = point_direction(x,y,Obj_Player.x,Obj_Player.y);

for(var i = disToTarget1 - 8; i > 0; i -= 8){
	var trueX = x + lengthdir_x(i + steps/2 - 4,dirToTarget1);
	var trueY = y + lengthdir_y(i + steps/2 - 4,dirToTarget1);
	draw_sprite_ext(spr_mancer_wave,0,trueX,trueY,1,1,dirToTarget1,#FFFFFF,1);
}



draw_self();
