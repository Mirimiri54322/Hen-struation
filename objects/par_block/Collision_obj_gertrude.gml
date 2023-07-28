/// @description Play the collision sound.
if collidingEntity != other
{
	// Only play if we're touching a new entity from last collision check.
	collidingEntity = other;
	if !audio_is_playing(mySound)
	{
		// Only play if we're not already playing the sound.
		mySound = PlaySoundFrom(id, collisionNoise);
	}
}