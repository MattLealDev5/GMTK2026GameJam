event_inherited()

// da head
var headAngleS = y - 8 + dsin(headAngle);
draw_sprite(spr_shooter_head,0,x,headAngleS);

// be sure to replace the obj here for the player
var dirToPlayer = point_direction(x,y,player.x,player.y);
var lengthX = x + lengthdir_x(1,dirToPlayer);
var lengthY = lengthdir_y(1,dirToPlayer) + headAngleS;
// draws eye
draw_sprite(spr_shooter_eye,0,lengthX,lengthY);
// draws eye's PUPIL
draw_sprite_ext(spr_dot,0,lengthX + lengthdir_x(1,dirToPlayer) - 1,
lengthY + lengthdir_y(1,dirToPlayer),1,1,0,#833100,1);
