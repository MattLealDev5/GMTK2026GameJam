//surface_resize(application_surface,300,225);
//window_set_size(900,675);

//window_set_cursor(cr_none);

Iindex = 0;
dir = 0;
recoil = 0;

shoot = function() {
	recoil = 90;
	scr_ParticleGeneration(x + lengthdir_x(8,dir),y + lengthdir_y(8,dir),2,
	dir,60,0.5,#FFFFFF,#51FF00,#008300,3);
}