
if(image_xscale <= 0){
	instance_destroy();
}

if(speed > 0){
	speed -= speed/16;
}

if(image_xscale < 0.8*scaleScale) && (image_xscale >= 0.6*scaleScale){
	image_blend = colorMid;
}

if(image_xscale < 0.6*scaleScale){
	image_blend = colorFinal;	
}
