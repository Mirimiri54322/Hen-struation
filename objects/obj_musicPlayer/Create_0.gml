/// @description Initialize.
/// This object is only supposed to exist on the title screen and credits, really.
/// The dynamic soundtrack in the levels isn't just one sound playing.
/// I over-coded this as if it were for a game with multiple rooms with different songs.

/// @description Check what the song for this room is and switch to it if it's not already playing.
/// Returns the song that's being played.
function PlaySongForCurrentRoom()
{
	var nextSong = currentSong;
	var shouldDestroy = false;

	switch room
	{
		case rm_title:
			nextSong = mus_skippedThePicnic;
		break;
		case rm_demo:
			nextSong = noone;
			shouldDestroy = true;
		break;
	}

	// Play song if new.
	if nextSong != currentSong
	{
		audio_stop_sound(currentSong);
		currentSong = nextSong;
		audio_play_sound(currentSong, 1, true);
	}
	
	if shouldDestroy
	{
		instance_destroy();
	}
	return currentSong;
}

// Initialize current song as none and then figure out what to play.
currentSong = noone;
persistent = true;
image_alpha = global.debug; // invisible if debug off.
