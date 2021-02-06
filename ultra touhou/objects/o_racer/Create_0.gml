gpu_set_alphatestenable(true);
#region cameraSetup
	gpu_set_zwriteenable(true);
	gpu_set_ztestenable(true);
	view_enabled  = true;
	view_set_visible(0,true);
	layer_force_draw_depth(true, 0);
	cam = camera_create();
	projMat =  matrix_build_projection_perspective_fov(-60, -view_get_wport(0)/view_get_hport(0), 32, 1000);
	camera_set_proj_mat(cam, projMat);
	view_set_camera(0,cam);
#endregion

look_x = 180;
look_y = 0;
acc = 0;
camera_set_update_script(view_camera[0], function (){});

half = false
surface_resize(application_surface,320,200);
drifting = false;
timer = 0;
lap = 0;