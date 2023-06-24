/// @description Go to room when time is correct and follow the camera.

var camera = camera_get_active();
if camera
{
	x = camera.x;
	y = camera.y;
}

if image_index >= image_number / 2
{
	room_goto(destinationRoom);
}

if image_index >= image_number - 1
{
	instance_destroy(id);
}