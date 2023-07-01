/// @description Define movement and attributes.

// Define general world stuff.
global.player = id;

// Stuff for getting the player set up in the level.
canJump = false;
currentHealthStep = 0;
depth = -100;

/// @description Adjust Gertrude's jump height and such according to the hormones.
function AdjustAttributesFromHormones()
{
	jumpSpeed = 10 * global.estrogen + 12;
	inertia = 100 * global.follicleStimulatingHormone;
	phy_linear_damping = global.luteinizingHormone;
	healthRegenFramesPerHP = -1;
	if global.progesterone > 0
	{
		healthRegenFramesPerHP = 15 / global.progesterone;
	}
}

/// @description Walk left.
function MoveLeft()
{
	AdjustAttributesFromHormones();
	image_xscale = -1;
	phy_linear_velocity_x = -walkSpeed * global.pixelsPerBlock;
}

/// @description Walk right.
function MoveRight()
{
	AdjustAttributesFromHormones();
	image_xscale = 1;
	phy_linear_velocity_x = walkSpeed * global.pixelsPerBlock;
}

/// @description Move up, as in jumping.
function MoveUp()
{
	AdjustAttributesFromHormones();
	phy_linear_velocity_y = -jumpSpeed * global.pixelsPerBlock;
	canJump = false;
}

/// @description Regenerate health according to global level of progesterone.
function RegenHealth()
{
	if healthRegenFramesPerHP > 0 && currentHealth < maxHealth
	{
		// Wait another frame.
		if currentHealthStep < healthRegenFramesPerHP
		{
			currentHealthStep += 1;
		}
		// Regen 1 health and reset waiting.
		else
		{
			currentHealthStep = 0;
			currentHealth += 1;
		}
	}

	// You're dead, you're dead, you're dead,
	// You're dead and outta this world.
	if currentHealth <= 0
	{
		SwitchToRoom(room); // TODO maybe add a death exit sound?
	}
}