/// @description Gyroscope and health stuff.

// Update the position of the audio listener.
audio_listener_set_position(0, x, y, depth);

if dead
{
	return;
}
phy_rotation = phy_rotation / 2;
RegenHealth();