/// @descrption Sets up screenshake object variables.
/// Shskes for the specified time at the specified magnitude,
/// and fades at the specified rate of fade.
function Screenshake(time, magnitude, fade)
{
	var shaker = instance_create_depth(0, 0, 0, obj_screenshakeHandler);
	with shaker
	{
		shake = true;
		shakeTime = time;
		shakeMagnitude = magnitude;
		shakeFade = fade;
	}
}