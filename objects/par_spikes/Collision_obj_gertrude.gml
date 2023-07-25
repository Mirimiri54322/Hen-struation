/// @description Damage player if extended.

if !isInputActive
{
	obj_gertrude.TakeDamage(1);
}
PlaySoundFrom(id, snd_spikes); //sound of a chicken getting hurt