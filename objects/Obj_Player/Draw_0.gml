var clockSize = sprite_get_number(spr_clock)-1
var clockHour = clockSize*hp/hpMax
draw_sprite(spr_clock, clockHour, x, y-1)

draw_circle_color(x, y, drainRange, c_black, c_black, true)

if enemyDraining != noone {
	draw_line_width_colour(x, y, enemyDraining.x, enemyDraining.y, 4, c_green, c_green)
	draw_circle_colour(enemyDraining.x, enemyDraining.y, 8, c_green, c_green, false)
}

var flashing = hitstunTimer <= 0 || hitstunTimer % 8 > 4
draw_sprite_ext(sprite, 0, x, y, facing, 1, 0, c_white, flashing)