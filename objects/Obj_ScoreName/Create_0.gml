event_inherited()

order = 0
index = 10

buttonSprite = fnt_4by4
spriteSize = sprite_get_number(fnt_4by4)
image_xscale = 4
image_yscale = 4
button_do = function() {
	index++
	if index >= spriteSize
		index -= spriteSize
}
button_do_alt = function() {
	index--
	if index < 0 {
		index += spriteSize
	}
}