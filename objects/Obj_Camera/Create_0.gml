if instance_number(Obj_Camera) > 1 {instance_destroy(); exit;}

window_set_cursor(cr_none);

x = 0; y = 0
	
view_width = 320;
view_height = 288;
window_scale = 3;

surface_resize(application_surface, view_width, view_height);
window_set_size(view_width*window_scale, view_height*window_scale);
alarm[0] = 1;

	
screenShake = 0;
screenShakeReduce = 1.5;
reduce = true;