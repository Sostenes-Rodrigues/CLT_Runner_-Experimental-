vel_multi *= 1.1

if instance_exists(obj_collisible){
	obj_collisible.vspeed = 2 * vel_multi
}

sprite_set_speed(spr_player, sprite_get_speed(spr_player) + 1, spritespeed_framespersecond);

layer_vspeed(road_background_id, 2 * vel_multi)


alarm[0] = 180
