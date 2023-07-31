/// @description Damage player if extended.

if !isInputActive
{
	obj_gertrude.TakeDamage(1);
	MakeCollisionNoise();
}