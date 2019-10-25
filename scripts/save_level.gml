///save_level(version, filename)
//The very first version of the level saver
var file; //First, we init some vars
file = file_text_open_write(argument1) //The extension of the level file (Geometry Dash level)
version = argument0 //This'll be to avoid bugs and problems saving and loading in future versions ugu

//This'll be to avoid mistakes in the future
if version == 0 {
	file_text_write_real(file, version) //This'll be used for loading
	file_text_writeln(file)
	for(var i = 0; i < instance_count; i++) //We'll iterate for every instance in the room
	{
		var object_name; //The name of the object
		//Why do i'll write the name of the object in place of the id
		//cuz if as by example the first object of the root (obj_ed_obj)
		//is changed to the second one, its object_index won't be 1 (or zero dunno)
		//It'll or 1 or two
		var angle, xscale, yscale, blend; //The first version of this editor
		//Just will save these variables
		with(instance_id[i])
		{
			object_name = object_get_name(object_index)
			angle = image_angle;
			xscale = image_xscale;
			yscale = image_yscale;
			blend = image_blend
		}
		file_text_write_string(file, object_name)
		file_text_writeln(file)
		file_text_write_real(file, angle)
		file_text_writeln(file)
		file_text_write_real(file, xscale)
		file_text_writeln(file)
		file_text_write_real(file, yscale)
		file_text_writeln(file)
		file_text_write_real(file, blend)
		file_text_writeln(file)
	}
}
file_text_close(file)

//This script will do aaaaaaaaall this (Bullshit) for every object