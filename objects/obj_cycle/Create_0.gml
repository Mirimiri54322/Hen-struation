/// @description Initialize and define health bar drawing.

/// @description Draw a stat bar at the location
/// for the given hormone out of the maximum value
/// with the specified text and in the specified color.
/// Returns the rightmost x endpoint of the bar drawn.
function DrawBar(stat, statMax, xPos, yPos, text = "", color = c_white)
{
	x1 = xPos;
	y1 = yPos;
	x2 = xPos + 2 * global.pixelsPerBlock;
	y2 = yPos + 0.5 * global.pixelsPerBlock;
	
	draw_set_color(c_black);
	draw_rectangle(x1, y1, x2, y2, false);
	
	draw_set_color(color);
	draw_rectangle(x1 + 1, y1 + 1, clamp(x1 + (x2 - x1) * (stat / statMax) - 1, x1, x2), y2 - 1, false);
	
	draw_set_font(fnt_stats);
	draw_set_color(c_black);
	draw_text(x1 + 1, y1 + 1, text);
	
	return x2;
}

// Set to first image
image_index = 0;
// Make it appear on top of other game stuff
depth = -1000

// Make it stay between levels
persistent = true;

// All of these are as a percentage of the maximum.
global.estrogen = 0.0;
global.follicleStimulatingHormone = 0.0;
global.luteinizingHormone = 0.0;
global.progesterone = 0.0;