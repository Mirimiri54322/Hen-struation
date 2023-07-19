/// @description Damage and be destroyed.
obj_gertrude.TakeDamage(10);
instance_destroy(); // Destroy arrow object
PlaySoundFrom(id, snd_arrowTrap3); //sound hit by arrow