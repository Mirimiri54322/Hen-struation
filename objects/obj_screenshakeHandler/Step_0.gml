/// @description Actually shake the dang camera.

if shake
{
	shakeTime -= 1;
	var xVal = choose(-shakeMagnitude, shakeMagnitude);
	var yVal = choose(-shakeMagnitude, shakeMagnitude);
	camera_set_view_pos(view_camera[0], xVal, yVal);
	
	if shakeTime <= 0
	{
		shakeMagnitude -= shakeFade;
		
		if shakeMagnitude <= 0
		{
			shake = false;
		}
	}
}
