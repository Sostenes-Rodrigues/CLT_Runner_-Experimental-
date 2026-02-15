/// Running timer
timer_food--
timer_clt --

/// Create food and clt
if timer_food < 1 {
	create_collisible(false)
	timer_clt += 20 * (1 / vel_multi)
	
	timer_food = random_range(.8, 1.2) * timer_restart * timer_food_multiplier * (1 / vel_multi)
}
else if timer_clt < 1 {
	create_collisible()
	timer_food += 20 * (1 / vel_multi)
	
	timer_clt  = random_range(.8, 1.2) * timer_restart * timer_clt_multiplier * (1 / vel_multi)
}
