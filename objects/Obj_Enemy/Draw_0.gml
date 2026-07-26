var color = beingDrained ? #51FF00 : c_white

currFrame += frameSpeed/60
currFrame %= frames

draw_sprite_ext(sprite, currFrame, x, y, facing, 1, 0, color, 1)