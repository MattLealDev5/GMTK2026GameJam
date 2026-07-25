if alive {
	var clockSize = sprite_get_number(spr_clock)-1
	var clockHour = clockSize*hp/hpMax
	draw_sprite(spr_clock, clockHour, x, y)

	//draw_circle_color(x, y, drainRange, c_black, c_black, true)

	if enemyDraining != noone {
		draw_line_width_colour(x, y, enemyDraining.x, enemyDraining.y, 4, c_green, c_green)
		draw_circle_colour(enemyDraining.x, enemyDraining.y, 8, c_green, c_green, false)
	}

	var flashing = hitstunTimer <= 0 || hitstunTimer % 8 > 4

	// animates player when moving
	if(xSpd != 0 || ySpd != 0){
		currFrame += frameSpeed/60
		currFrame %= frames
	} else {
	    currFrame = 0;
	}

	var mouseDir = point_direction(x, y, mouse_x, mouse_y)
	var playerDir = floor((mouseDir + 45)/90);

	switch(playerDir){
	    // facing right
	    case 4:
	    case 0:
	        sprite = spr_player_side;
	        facing = 1;
	    break
	    // facing up
	    case 1:
	        sprite = spr_player_back;
	        facing = 1;
	    break
	    // facing left
	    case 2:
	        sprite = spr_player_side;
	        facing = -1;
	    break
	    // facing down
	    case 3:
	        sprite = spr_player_front;
	        facing = 1;
	    break
	}
	draw_sprite_ext(sprite, currFrame, x, y, facing, 1, 0, c_white, flashing)
}