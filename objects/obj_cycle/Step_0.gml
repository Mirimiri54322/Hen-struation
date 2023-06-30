/// @description Update angle and day.

var camera = view_get_camera(view_current);

x = camera_get_view_x(camera) + camera_get_view_width(camera) - sprite_width / 2;
y = camera_get_view_y(camera) + sprite_height / 2;

currentAngle = (currentAngle - degreesPerTick) % 360;
currentDay = currentAngle * 28 / -360;
var dayY = floor(1 + (currentDay / 28) * (ds_grid_height(global.hormoneTable) - 1));

global.estrogen = ds_grid_get(global.hormoneTable, 1, dayY);
global.follicleStimulatingHormone = ds_grid_get(global.hormoneTable, 2, dayY);
global.luteinizingHormone = ds_grid_get(global.hormoneTable, 3, dayY);
global.progesterone = ds_grid_get(global.hormoneTable, 4, dayY);