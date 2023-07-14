/// @descrption Sets up screenshake object variables.
/// Shskes for the specified time at the specified magnitude,
/// and fades at the specified rate of fade.
function Screenshake(time, magnitude, fade)
{
	with obj_screenshakeHandler
	{
		shake = true;
		shakeTime = time;
		shakeMagnitude = magnitude;
		shakeFade = fade;
	}
}