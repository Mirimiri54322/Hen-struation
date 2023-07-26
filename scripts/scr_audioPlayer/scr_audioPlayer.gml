/// @description This facade function plays the specified sound effect from the specified object.
/// origin is the object of origin (the thing making the sound). If you are calling this from an object, then put "id" here.
/// sound is the name of the sound being played, like "snd_hurt."
function PlaySoundFrom(origin, sound)
{
	if sound != noone
	{
		audio_play_sound_at(sound, origin.x, origin.y, origin.depth, 5 * global.pixelsPerBlock, 15 * global.pixelsPerBlock, 1, false, 10, 1);
	}
}