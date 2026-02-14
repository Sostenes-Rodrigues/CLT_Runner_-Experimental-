/// Start music, if not running
if !audio_is_playing(snd_newer_wave)
{
    audio_play_sound(snd_newer_wave, 0, true)
}

// List of sprites foods
food_sprites_list = [spr_batata, spr_chocolate, spr_clt, spr_coxinha, spr_hamburg]

/// Timers
timer_food_multiplier = 1
timer_food = -1

timer_clt_multiplier = 3.3
timer_clt = -1
