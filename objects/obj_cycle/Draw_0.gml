/// @description Draw UI.
if room == rm_credits || room == rm_title
{
	return;
}
else 
{
	var camera = view_get_camera(view_current);

	var dialX =(camera_get_view_x(camera) + camera_get_view_width(camera) - sprite_width / 2) - 7;
	var dialY =(camera_get_view_y(camera) + sprite_height / 2) + 7;

	draw_sprite(spr_cycle, image_index, dialX, dialY);
	draw_sprite_ext(needleSprite, 0, dialX, dialY, 1, 1, currentAngle, c_white, 1);


	if currentAngle > -130 && currentAngle < -61
	{
	    global.phase_index = 1;
	} 
	else if currentAngle > -195 && currentAngle < -130
	{
	   global.phase_index = 2;
	} 
	else if currentAngle > -360 && currentAngle < -195
	{
	    global.phase_index = 3;
	}
	else
	{
		global.phase_index = 0;
	}
	draw_sprite_ext(spr_needlePhases, global.phase_index, dialX, dialY + 25, 1, 1, 0, c_white, 1);


	// Define starting point and buffer for row of stats.
	var topLeftX = camera_get_view_x(camera);
	var topLeftY = camera_get_view_y(camera);
	var bufferAmount = 0.25 * global.pixelsPerBlock;

	// Draw the row of stats.
	// If progesterone is high enough, indicate regen.
	if global.progesterone >= 0.2
	{
		var prevEndpoint = DrawBar(global.player.currentHealth, 100, topLeftX + bufferAmount, topLeftY + bufferAmount, "LIFE +", palette.lime2, palette.lime3, palette.lime4);
	}
	else
	{
		var prevEndpoint = DrawBar(global.player.currentHealth, 100, topLeftX + bufferAmount, topLeftY + bufferAmount, "LIFE", palette.lime2, palette.lime3, palette.lime4);
	}
	// Draw all the hormones.
	if global.estrogen >= 0.75
	{
		prevEndpoint = DrawBar(global.estrogen, 1.0, prevEndpoint + bufferAmount, topLeftY + bufferAmount, "E2 FLY", palette.red2, palette.red3, palette.red4);
	}
	else
	{
		prevEndpoint = DrawBar(global.estrogen, 1.0, prevEndpoint + bufferAmount, topLeftY + bufferAmount, "E2", palette.red2, palette.red3, palette.red4);
	}
	prevEndpoint = DrawBar(global.follicleStimulatingHormone, 1.0, prevEndpoint + bufferAmount, topLeftY + bufferAmount, "FSH", palette.blue2, palette.blue3, palette.blue4);
	prevEndpoint = DrawBar(global.luteinizingHormone, 1.0, prevEndpoint + bufferAmount, topLeftY + bufferAmount, "LH", palette.bronze2, palette.bronze3, palette.bronze4);
	prevEndpoint = DrawBar(global.progesterone, 1.0, prevEndpoint + bufferAmount, topLeftY + bufferAmount, "P4", palette.purple2, palette.purple3, palette.purple4);
}
