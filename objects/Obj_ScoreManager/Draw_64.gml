for(var i = 0; i < array_length(topScores); i++) {
	var yOffset = 1+i*5
	var entry = topScores[i]
	var entryText = $"{entry.playerName} {entry.playerScore}"
	PixelText(1, yOffset, entryText)
}