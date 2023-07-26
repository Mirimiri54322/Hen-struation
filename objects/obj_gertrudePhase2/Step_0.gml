/// @description Gyroscope and health stuff.

// Update the position of the audio listener.
audio_listener_set_position(0, x, y, depth);

if global.phase_index == 2
{
	instance_change(obj_gertrudePhase3, true);
}

if dead
{
	return;
}
phy_rotation = phy_rotation / 2;
RegenHealth();