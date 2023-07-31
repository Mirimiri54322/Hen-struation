/// @description Initialize sound stuff.

mySound = noone;

function MakeCollisionNoise()
{
	if audio_is_playing(mySound)
	{
		return;
	}
	// Only play if we're not already playing the sound.
	mySound = PlaySoundFrom(id, collisionNoise);
}