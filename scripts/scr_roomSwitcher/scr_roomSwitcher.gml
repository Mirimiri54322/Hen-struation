/// @description transition to the specified room
function SwitchToRoom(destinationRoom = noone, exitSound = noone)
{
	if instance_number(obj_screenTransition) < 1
	{
		audio_play_sound(exitSound, 1, false);
		var camera = camera_get_active();
		screenTransition = instance_create_depth(camera.x, camera.y, -2000, obj_screenTransition);
		screenTransition.destinationRoom = destinationRoom;
		screenTransition.image_xscale = 240;
		screenTransition.image_yscale = 180;
		// screenTransition.image_xscale = camera_get_view_width(camera) / sprite_width;
		// screenTransition.image_yscale = camera_get_view_height(camera) / sprite_height;
	}
}