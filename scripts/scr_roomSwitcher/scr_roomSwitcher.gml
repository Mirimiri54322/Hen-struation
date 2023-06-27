/// @description transition to the specified room with an effect.
function SwitchToRoom(destinationRoom = rm_title, exitSound = noone)
{
	if instance_number(obj_screenTransition) == 0
	{
		if exitSound
		{
			audio_play_sound(exitSound, 1, false);
		}
		//var camera = camera_get_active();
		screenTransition = instance_create_depth(view_xport[0], view_yport[0], -2000, obj_screenTransition);
		if instance_exists(screenTransition)
		{
			screenTransition.destinationRoom = destinationRoom;
			screenTransition.image_xscale = view_wport[0];
			screenTransition.image_yscale = view_hport[0];
		}
	}
}