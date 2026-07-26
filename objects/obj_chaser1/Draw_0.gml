
var dirToPlayer = point_direction(x,y,obj_player_ian.x,obj_player_ian.y);
draw_sprite(sprite_index,0,x,y);
draw_sprite(spr_chaser_eye,image_index,x + lengthdir_x(3,dirToPlayer),y + lengthdir_y(3,dirToPlayer))
