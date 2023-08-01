/// @description Become invisible if debug is off.
currentSong = mus_skippedThePicnic; 
global.debug = false;

if !global.debug
{
	image_alpha = 0;
}
