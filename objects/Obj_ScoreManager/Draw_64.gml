var numOfScores = array_length(topScores)
for(var i = 0; i < 10; i++) {
	var yOffset = 1+i*5
	
	if i >= numOfScores {
		PixelText(1, yOffset, "XXX XXX")
		continue
	}
	
	var entry = topScores[i]
	var entryText = $"{entry.playerName} {entry.playerScore}"
	PixelText(1, yOffset, entryText)
}