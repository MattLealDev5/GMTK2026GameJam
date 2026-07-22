var flashing = hitstunTimer <= 0 || hitstunTimer % 8 > 4
draw_sprite_ext(sprite, 0, x, y, facing, 1, 0, c_white, flashing)