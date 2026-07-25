
// ADJUST NUMBER FOR THE DISTANCE

// when there's no recoil, this'll be 8 pixels in distance
var handRecoil = 5 + (1 - dsin(recoil))*3;

// to change draw order
//if(y + lengthdir_y(handRecoil,dir) + 2 < y){
//	draw_sprite(spr_Player_Hand,Iindex,x + lengthdir_x(handRecoil,dir),y + lengthdir_y(handRecoil,dir));
//	draw_sprite(sprite_index,0,x,y);
//} else {
//	draw_sprite(sprite_index,0,x,y);
//	draw_sprite(spr_Player_Hand,Iindex,x + lengthdir_x(handRecoil,dir),y + lengthdir_y(handRecoil,dir));
//}
draw_sprite(spr_Player_Hand,Iindex,x + lengthdir_x(handRecoil,dir),y + lengthdir_y(handRecoil,dir));
if(y + lengthdir_y(handRecoil,dir) + 2 < y) { depth = 1 }
else { depth = -1 }
