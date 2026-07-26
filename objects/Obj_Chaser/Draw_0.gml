var color = beingDrained ? #51FF00 : c_white

var dirToPlayer = point_direction(x,y,player.x,player.y);
draw_sprite_ext(spr_chaser_body,0,x,y, 1, 1, 0, color, 1);
draw_sprite_ext(spr_chaser_eye,image_index,x + lengthdir_x(3,dirToPlayer),y + lengthdir_y(3,dirToPlayer), 1, 1, 0, color, 1)