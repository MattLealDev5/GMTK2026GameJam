var horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"))
var shooting = mouse_check_button(mb_left)
var draining = mouse_check_button(mb_right)
var pressed = mouse_check_button_pressed(mb_left)

xSpd = horizontal * walkSpeed
ySpd = vertical * walkSpeed

xPos += xSpd
yPos += ySpd

xPos = clamp(xPos, 0, room_width)
yPos = clamp(yPos, 0, room_height)


x = xPos
y = yPos