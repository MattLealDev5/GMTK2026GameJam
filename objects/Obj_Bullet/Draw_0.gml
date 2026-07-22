var trailSize = array_length(lastPositions)
var trailInnerPos = lastPositions[trailSize/2 -1]
var trailTailPos = lastPositions[trailSize-1]

draw_sprite(spriteTrail, 0, trailTailPos[0], trailTailPos[1])
draw_sprite(spriteTrail, 0, trailInnerPos[0], trailInnerPos[1])
draw_self()
