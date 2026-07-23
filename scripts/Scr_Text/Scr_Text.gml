function PixelText(xPos, yPos, text) {
	var characters = "0123456789abcdefghijklmnopqrstuvwxyz"
	var scale = 4
	var textWidth = sprite_get_width(fnt_4by4)
	var cursor = 0
	var newText = string_upper(text)
	
	for(var i = 1; i <= string_length(newText); i++) {
		var currChar = string_ord_at(newText, i)
		var charIndex = -1
		if currChar >= ord("0") && currChar <= ord("9") {
			charIndex = currChar - ord("0")
		} else if currChar >= ord("A") && currChar <= ord("Z") {
			charIndex = currChar - ord("A") + 10
		}
		
		if charIndex != -1 {
			draw_sprite_ext(fnt_4by4, charIndex, xPos+cursor, yPos, scale, scale, 0, c_white, 1)
		}
		cursor += textWidth*scale+scale
	}
}