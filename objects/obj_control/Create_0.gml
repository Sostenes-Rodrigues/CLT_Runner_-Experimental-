// Restart points
global.points = 0

//
sprite_set_speed(spr_player, 10, spritespeed_framespersecond);

//
vel_multi = 1

/// Start music, if not running
if !audio_is_playing(snd_newer_wave)
{
    audio_play_sound(snd_newer_wave, 0, true)
}


/// Timers
timer_food_multiplier = 1
timer_food = 0

timer_clt_multiplier = 2.8
timer_clt = 0

timer_restart = 0.8 * game_get_speed(gamespeed_fps)


// Method to create food and clt
create_collisible = function(_clt=true){
	var _choose_side = choose([global.posi_left, 1], [global.posi_right, -1])
	
	var _inst = instance_create_layer(_choose_side[0], -50, "Instances", obj_collisible)
	_inst.is_clt = _clt
	_inst.image_xscale = _choose_side[1]
	_inst.vspeed = 2 * vel_multi
	
	if !_clt {
		// List of sprites foods
		_inst.sprite_index = choose(spr_batata, spr_chocolate, spr_coxinha, spr_hamburg)
	}
}


/// ID of layer background
var _road_layer_id = layer_get_id("Background")
road_background_id = layer_background_get_id(_road_layer_id)




alarm[0] = 240
