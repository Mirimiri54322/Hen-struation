/// @description Damage player if extended.

if !isInputActive
{
	if y < obj_gertrude.y // Don't suck player up into spikes
	{
		obj_gertrude.TakeDamage(5, false);
	}
	else
	{
		obj_gertrude.TakeDamage(5);
	}
	MakeCollisionNoise();
}