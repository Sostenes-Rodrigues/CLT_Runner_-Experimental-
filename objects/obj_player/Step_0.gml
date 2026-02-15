/// Controls
if keyboard_check_pressed(vk_left){
	x = global.posi_left
	image_xscale = 1
}
if keyboard_check_pressed(vk_right){
	x = global.posi_right
	image_xscale = -1
}


/// If player 
var _inst_coli = instance_place(x, y, obj_collisible)
if _inst_coli{
	var _is_clt = _inst_coli.is_clt
	
	if _is_clt{
		room_restart()
	}
	else{
		instance_destroy(_inst_coli)
	}
}
