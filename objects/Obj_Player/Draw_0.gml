var flashing = hitstunTimer <= 0 || hitstunTimer % 8 > 4
draw_sprite_ext(sprite, 0, x, y, facing, 1, 0, c_white, flashing)

if enemyDraining != noone {
	draw_line_width_colour(x, y, enemyDraining.x, enemyDraining.y, 4, c_green, c_green)	
}