/// @description Initialize and define health bar drawing.

/// @description Draw a stat bar at the location
/// for the given hormone out of the maximum value
/// with the specified text and in the specified color.
/// Returns the rightmost x endpoint of the bar drawn.
function DrawBar(stat, statMax, xPos, yPos, text = "", outlineColor = c_black, fillColor = c_grey, textColor = c_white)
{
	var x1 = xPos;
	var y1 = yPos;
	var x2 = xPos + 2 * global.pixelsPerBlock;
	var y2 = yPos + 0.5 * global.pixelsPerBlock;
	
	// Draw the background of the bar.
	draw_set_color(outlineColor);
	draw_rectangle(x1 + 1, y1, x2 - 1, y2, false);
	draw_rectangle(x1, y1 + 1, x2, y2 - 1, false);
	
	// Draw the filled part of the bar.
	draw_set_color(fillColor);
	draw_rectangle(x1 + 1, y1 + 1, clamp(x1 + (x2 - x1) * (stat / statMax) - 1, x1, x2), y2 - 1, false);
	
	// Draw the shadow of the text label of the bar.
	// draw_set_font(fnt_stats);
	// draw_set_color(outlineColor);
	// draw_text(x1 + 1, y1 + 0, text);
	// draw_text(x1 + 0, y1 + 1, text);
	// draw_text(x1 + 2, y1 + 1, text);
	// draw_text(x1 + 1, y1 + 2, text);
	
	// Draw the text label of the bar
	draw_set_font(fnt_stats);
	draw_set_color(textColor);
	draw_text(x1 + 1, y1 + 1, text);
	
	return x2;
}

// Only one of these should ever exist at a time.
if instance_number(obj_cycle) > 1
{
	// If it discovers it's not the original, it destroys itself.
	instance_destroy();
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