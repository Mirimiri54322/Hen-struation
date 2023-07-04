/// @description Update angle and day.

currentAngle = (currentAngle - degreesPerTick) % 360;
currentDay = currentAngle * 28 / -360;
var dayY = floor(1 + (currentDay / 28) * (ds_grid_height(global.hormoneTable) - 1));

global.estrogen = ds_grid_get(global.hormoneTable, 1, dayY);
global.follicleStimulatingHormone = ds_grid_get(global.hormoneTable, 2, dayY);
global.luteinizingHormone = ds_grid_get(global.hormoneTable, 3, dayY);
global.progesterone = ds_grid_get(global.hormoneTable, 4, dayY);