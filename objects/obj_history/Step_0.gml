// If press space key
if keyboard_check_released(vk_space) {
	/// Move background to next page of history
	history_index++
	
	// If end the history
	if history_index >= array_length(history_list_sprs) {
		room_goto(rm_game)
		
		exit
	}
	
	layer_background_change(history_background_id, history_list_sprs[history_index])
}
