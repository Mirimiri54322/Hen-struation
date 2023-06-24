/// @description Make persistent for the room transition.

// Only one of these should ever exist.
if instance_number(obj_screenTransition) > 1
{
	instance_destroy(id);
}

persistent = true;
depth = -2000;