/// @description draw text if in range

if instance_exists(obj_gertrude)
{
	 // player in range 
    if point_distance(x, y, obj_gertrude.x, obj_gertrude.y) < 24 // This number used to be Range but it got changed in some places.
	{
		var camera = view_get_camera(view_current);

		// Define starting point and buffer for row of stats.
		var topLeftX = camera_get_view_x(camera);
		var topLeftY = camera_get_view_y(camera);
		var bufferAmount = global.pixelsPerBlock;
		
		draw_sprite(spr_signBackground, 0, topLeftX + 3.5 * bufferAmount, topLeftY + 1 * bufferAmount);
		
		draw_set_font(fnt_chickenScratch);
		draw_set_color(palette.grey5);
        draw_text(topLeftX + 3.75 * bufferAmount, topLeftY + 1.5 * bufferAmount, textToDisplay);
    }
}