/// @description initialize functioons, set to off

/// @description For collisions with player or block.
/// Set to clicked and start timer.
function BeActivated()
{
	image_index = 1;
	isActive = true;
	alarm[0] = room_speed * onTime; // alarm activates in onTime seconds.
}

image_index = 0;
image_speed = 0;
isActive = false;