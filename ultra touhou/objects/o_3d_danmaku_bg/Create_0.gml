d3dsurf = surface_create(1366,768);
view_surface_id[1] = d3dsurf;
gpu_set_alphatestenable(true);
#region cameraSetup
	gpu_set_zwriteenable(true);
	gpu_set_ztestenable(true);
	view_enabled  = true;
	view_set_visible(1,true);
	layer_force_draw_depth(true, 0);
	cam = camera_create();
	projMat =  matrix_build_projection_perspective_fov(-60, -view_get_wport(0)/view_get_hport(0), 32, 3000);
	camera_set_proj_mat(cam, projMat);
	view_set_camera(1,cam);
#endregion

look_x = 0;
look_y = 0;
acc = 0;
camera_set_update_script(view_camera[1], function (){});
