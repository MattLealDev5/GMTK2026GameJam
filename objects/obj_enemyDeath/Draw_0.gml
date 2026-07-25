
if(sprite_index != spr_player_death){
	draw_sprite_ext(sprite_index,0,x + lengthdir_x(2 - (steps/36),round(random(359))),
	y + lengthdir_y(2 - (steps/36),random(359)),1,1,0,color,1);
} else {
	draw_sprite_ext(spr_player_death_thing,0,x,y + 1,1,1,0,#FFFFFF,1);
	draw_sprite_ext(spr_dot,0,x,y + 1,room_height/2,16,90,#FFFFFF,1);
	// if it's not too much to ask, changing the other player
	// sprites' origin point to 8x14 could help ok thanks
	draw_self();
}

