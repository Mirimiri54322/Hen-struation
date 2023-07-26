/// @description Gyroscope and health stuff.

// Update the position of the audio listener.
audio_listener_set_position(0, x, y, depth);

if global.phase_index == 0 || global.phase_index == 3
{
	instance_change(obj_gertrude, true);
}

if dead
{
	return;
}
phy_rotation = phy_rotation / 2;
RegenHealth();