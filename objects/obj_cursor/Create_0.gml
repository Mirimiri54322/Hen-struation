/// @description Define all the global vars.
/// This is definitely some kind of cheating by doing this in a cursor
/// instead of in a dedicated object, but...

global.debug = false;
if global.debug
{
	show_debug_overlay(global.debug);
}
global.pixelsPerBlock = 16;
global.state = "m";
global.estrogen = 0;
global.follicleStimulatingHormone = 0;
global.luteinizingHormone = 0;
global.progesterone = 0;global.state = "m";
global.estrogen = 0;
global.follicleStimulatingHormone = 0;
global.luteinizingHormone = 0;
global.progesterone = 0;

global.hormoneTable = ReadCSV("hormoneGraph.csv");