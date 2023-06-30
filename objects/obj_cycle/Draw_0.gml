/// @description Draw UI.

draw_self();
draw_sprite_ext(needleSprite, 0, x, y, 1, 1, currentAngle, c_white, 1);

// Define starting point and buffer for row of stats.
var camera = view_get_camera(view_current);
var topLeftX = camera_get_view_x(camera);
var topLeftY = camera_get_view_y(camera);
var bufferAmount = 0.25 * global.pixelsPerBlock;

// Draw the row of stats.
var prevEndpoint = DrawBar(global.player.currentHealth, 100, topLeftX + bufferAmount, topLeftY + bufferAmount, "HP", c_green);
prevEndpoint = DrawBar(global.estrogen, 1.0, prevEndpoint + bufferAmount, topLeftY + bufferAmount, "E2", c_purple);
prevEndpoint = DrawBar(global.follicleStimulatingHormone, 1.0, prevEndpoint + bufferAmount, topLeftY + bufferAmount, "FSH", c_purple);
prevEndpoint = DrawBar(global.luteinizingHormone, 1.0, prevEndpoint + bufferAmount, topLeftY + bufferAmount, "LH", c_purple);
prevEndpoint = DrawBar(global.progesterone, 1.0, prevEndpoint + bufferAmount, topLeftY + bufferAmount, "P4", c_purple);

// TODO move this elsewhere to indicate health regen.
if global.progesterone >= 0.25
{
	draw_set_color(c_lime);
}
