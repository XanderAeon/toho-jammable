/// @function makeSoulless, function, string
/// @description make this script run every frame.
function makeSoulless(func, str){
	if(!instance_exists(o_soulless)){
		with(instance_create_layer(0,0,"Instances",o_soulless)){
			steps[?str] = func;		
		}
	}
}
function removeSoulless(str){
	ds_map_delete(o_soulless.steps, str);
}