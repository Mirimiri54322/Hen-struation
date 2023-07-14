/// @description Actually shake the dang camera.

if shake
{
	shakeTime -= 1;
	var xVal = camera_get_view_x(view_camera[0]) + choose(-shakeMagnitude, shakeMagnitude);
	var yVal = camera_get_view_y(view_camera[0]) + choose(-shakeMagnitude, shakeMagnitude);
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
