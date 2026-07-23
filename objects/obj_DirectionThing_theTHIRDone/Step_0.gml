

dir = point_direction(x,y,mouse_x,mouse_y);

// rotation value used in the crosshair blades
image_angle += 1.5;
if(image_angle > 90){image_angle -= 90}

// falldown for the recoil
if(recoil > 0){recoil -= 9}

// this gets the direction to the cursor and divides it to a value that would
// fall to 0-6, granted the initial range was 0-360. with that, floor() rounds
// it to the nearest number, which is then upscaled back to the original range

// if you wanna turn this to a check, the +30 bumps the range to 0.5-6.5 before floor(),
// so keep that in mind for the check (I'd also recommend leaving the upscaling
// for the part of the code that you use direction in)

var processedDir = floor((dir + 30)/60);

switch(processedDir){
	// facing right
	case 6:
	case 0:
		Iindex = 0;
	break
	case 1:
		Iindex = 1;
	break
	case 2:
		Iindex = 2;
	break
	case 3:
		Iindex = 3;
	break
	case 4:
		Iindex = 4;
	break
	case 5:
		Iindex = 5;
	break
	
}

direction = point_direction(x,y,mouse_x,mouse_y);
//image_angle = direction;


//hspeed = (keyboard_check(ord("D")) - keyboard_check(ord("A")))*1.2;
//vspeed = (keyboard_check(ord("S")) - keyboard_check(ord("W")))*1.2;

