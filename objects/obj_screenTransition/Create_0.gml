/// @description Make persistent for the room transition.

// Only one of these should ever exist.
if instance_number(obj_screenTransition) > 1
{
	instance_destroy(id);
}

// if global.debug
// {
	// image_alpha = 0;
// }
persistent = true;
depth = -2000;

hasSwitched = false; // has it switched to the next room yet?