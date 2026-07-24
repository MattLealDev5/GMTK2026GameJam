

// da body
draw_self();

// da head
var headAngleS = y - 8 + dsin(headAngle);
draw_sprite(spr_shooter_head_buffed,0,x,headAngleS);

// be sure to replace the obj here for the player
var dirToPlayer = point_direction(x,y,obj_DirectionThing_theTHIRDone.x,obj_DirectionThing_theTHIRDone.y);
var lengthX = x + lengthdir_x(1,dirToPlayer);
var lengthY = lengthdir_y(1,dirToPlayer) + headAngleS;
// draws eye
draw_sprite(spr_shooter_eye_buffed,0,lengthX,lengthY);
// draws eye's PUPIL
draw_sprite_ext(spr_dot,0,lengthX + lengthdir_x(1,dirToPlayer) - 1,
lengthY + lengthdir_y(1,dirToPlayer),1,1,0,#5B315B,1);
