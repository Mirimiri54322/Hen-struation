/// @description Gyroscope and health stuff.

phy_rotation = phy_rotation / 2;

if healthRegenFramesPerHP * global.progesterone >= 0 && currentHealth < maxHealth
{
	if currentHealthStep < healthRegenFramesPerHP
	{
		currentHealthStep += 1;
	}
	else
	{
		currentHealthStep = 0;
		currentHealth += 1;
	}
}

if currentHealth <= 0
{
	room_goto(rm_demo);
}
