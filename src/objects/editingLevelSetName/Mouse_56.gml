if os_type == os_windows {
	if !position_meeting(mouse_x, mouse_y, self) 
	{
		//If we click outside this textbox
		writing = false //We stop writing
		scr_local_levelUpdateName() //Then, we call this script to make this textbox useful tho
	} else {
		keyboard_string = ""
		writing = true
	}
} else {
	if position_meeting(mouse_x, mouse_y, self) {
		text = get_string_async("Level name","")
	}
}