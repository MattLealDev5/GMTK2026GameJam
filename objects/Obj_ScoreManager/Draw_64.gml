if !showScores { exit; }

draw_sprite(spr_title, 0, room_width/2, 16)

if Obj_Player.alive {
	PixelText(room_width/2 - 94, room_height/2, "Left Mouse to Start", 2)
}

var numOfScores = array_length(topScores)
for(var i = 0; i < 10; i++) {
	var xOffset = room_width/2 - 4*3*2
	var yOffset = room_height/2 + 32 + 2+i*10
	
	if i >= numOfScores {
		PixelText(xOffset, yOffset, "XXX XXX", 2)
		continue
	}
	
	var entry = topScores[i]
	var entryText = $"{entry.playerName} {entry.playerScore}"
	PixelText(xOffset, yOffset, entryText, 2)
}