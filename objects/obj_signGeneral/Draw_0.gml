/// @description draw text if in range
draw_self();


if instance_exists(obj_gertrude)
{
	 // player in range 
    if point_distance(x, y, obj_gertrude.x, obj_gertrude.y) < range
	{
		draw_set_font(fnt_chickenScratch);
        draw_text(x + horizontal_offset, y + vertical_offset, "Words");
    }
}