event_inherited()

buttonSprite = buttonstupid
button_do = function() {
	with Obj_ScoreManager {
		var chars = [0, 0, 0]
		with Obj_ScoreName {
			var theIndex = index
			if theIndex >= 0 && theIndex <= 9 {
				theIndex = theIndex + ord("0")
			} else {
				theIndex = theIndex + ord("A") - 10
			}
			chars[order] = theIndex
		}
		
		savedName = [chars[0], chars[1], chars[2]]
		var charString = $"{chr(savedName[0])}{chr(savedName[1])}{chr(savedName[2])}"
		
		submitScore(charString, playerScore)
		showScores = true
		playerScore = 0
		room_restart()
	}
}

alarm[1] = 60