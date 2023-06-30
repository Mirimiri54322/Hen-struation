/// @description Update angle and day.

currentAngle = (currentAngle - degreesPerTick) % 360;
currentDay = floor(2 * currentAngle * 28 / -360) / 2.0; // rounds to the nearest 0.5.

var camera = view_get_camera(view_current);

x = camera_get_view_x(camera) + camera_get_view_width(camera) - sprite_width / 2;
y = camera_get_view_y(camera) + sprite_height / 2;

// var dayX = ds_grid_value_x(global.hormoneTable, 0, 0, 0, ds_grid_height(global.hormoneTable) - 1, currentDay);
var dayY = ds_grid_value_y(global.hormoneTable, 0, 0, 0, ds_grid_height(global.hormoneTable) - 1, currentDay);
if ds_grid_get(global.hormoneTable, dayY, 1) != undefined
{
	global.estrogen = ds_grid_get(global.hormoneTable, dayY, 1);
}
if ds_grid_get(global.hormoneTable, dayY, 2) != undefined
{
	global.follicleStimulatingHormone = ds_grid_get(global.hormoneTable, dayY, 2);
}
if ds_grid_get(global.hormoneTable, dayY, 3) != undefined
{
	global.luteinizingHormone = ds_grid_get(global.hormoneTable, dayY, 3);
}
if ds_grid_get(global.hormoneTable, dayY, 4) != undefined
{
	global.progesterone = ds_grid_get(global.hormoneTable, dayY, 4);
}