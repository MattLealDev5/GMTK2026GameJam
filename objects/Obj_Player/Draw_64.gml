// point of the crosshair
// ASK FOR CROSSHAIR SPRITE IMPORTANT
draw_sprite(spr_necro_crosshair,0,mouse_x,mouse_y);
// arrows of the crosshair
var scale = 1 + dsin(recoil)/4;
draw_sprite_ext(spr_necro_crosshair,1,mouse_x,mouse_y,scale,scale,crosshairRotation,#FFFFFF,1);