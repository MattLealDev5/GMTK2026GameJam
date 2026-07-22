

direction = point_direction(x,y,mouse_x,mouse_y);
// this gets the direction to the cursor and divides it to a value that would
// fall to 0-6, granted the initial range was 0-360. with that, floor() rounds
// it to the nearest number, which is then upscaled back to the original range

// if you wanna turn this to a check, the +30 bumps the range to 0.5-6.5 before floor(),
// so keep that in mind for the check (I'd also recommend leaving the upscaling
// for the part of the code that you use direction in)

var processedDir = floor((direction + 30)/60)*60;
direction = processedDir;

image_angle = direction;