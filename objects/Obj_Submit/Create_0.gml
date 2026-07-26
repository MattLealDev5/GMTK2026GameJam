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
		var charString = $"{chr(chars[0])}{chr(chars[1])}{chr(chars[2])}"
		
		submitScore(charString, playerScore)
		showScores = true
		room_restart()
	}
}

alarm[1] = 60