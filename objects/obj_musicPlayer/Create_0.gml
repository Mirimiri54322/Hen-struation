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
		case rm_credits:
			nextSong = mus_skippedThePicnic;
		break;
		default:
			nextSong = noone;
			StartDynamicMusic();
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

/// @description initializes the dynamic music for the first level.
function StartDynamicMusic()
{
	// if we're already playing music, don't do anything, obviously.
	if playDynamicMusic
	{
		return;
	}
	
	// We assign all of the dynamic music vars to music that starts silent.
	bass = audio_play_sound(mus_bass, 1, true, 0);
	cello = audio_play_sound(mus_cello, 1, true, 0);
	hats = audio_play_sound(mus_hats, 1, true, 0);
	hits = audio_play_sound(mus_hits, 1, true, 0);
	panpipes = audio_play_sound(mus_panpipes, 1, true, 0);
	piano = audio_play_sound(mus_piano, 1, true, 0);
	uke = audio_play_sound(mus_uke, 1, true, 0);
	
	playDynamicMusic = true;
}

/// @description Updates the dynamic level music according to all the hormones and such.
function UpdateDynamicMusic()
{
	if playDynamicMusic
	{
		var fadeTime = 0.25;
		audio_sound_gain(bass, clamp(global.follicleStimulatingHormone, 0.25, 1), fadeTime); // always gotta have a lil' bass goin'
		audio_sound_gain(cello, ((global.player.maxHealth - global.player.currentHealth) / global.player.maxHealth), fadeTime);
		audio_sound_gain(hats, clamp(global.player.phy_speed / 2, 0, 0.8), fadeTime * 4);
		audio_sound_gain(hits, clamp(global.follicleStimulatingHormone, 0.1, 1), fadeTime);
		audio_sound_gain(panpipes, clamp(global.estrogen, 0, 0.333), fadeTime); // Flute is just loud for some reason so the lower clamp makes it quieter
		audio_sound_gain(piano, clamp(global.progesterone, 0.1, 1), fadeTime);
		audio_sound_gain(uke, clamp(global.luteinizingHormone, 0.2, 1), fadeTime);
	}
}

// Initialize current song as none and then figure out what to play.
currentSong = noone;
persistent = true;
image_alpha = global.debug; // invisible if debug off.
global.musicPlayer = id; // Hi!

// Initialize dynamic music vars
playDynamicMusic = false;
bass = noone; // FSH
cello = noone; // Player damage ouchies makes it louder
hats = noone; // Moving makes it louder
hits = noone; // FSH
panpipes = noone; // Estrogen
piano = noone; // Progesterone
uke = noone; // LH even though it isn't a lute. :(
