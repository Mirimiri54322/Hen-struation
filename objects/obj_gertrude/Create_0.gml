/// @description Define movement and attributes.

// Define general world stuff.
// TODO a lot of this should move from here to some single-shot entity somewhere
// Ya know? No need to  have this happen every single time a level loads.
global.debug = true;
global.pixelsPerBlock = 16;
global.player = id;
global.state = "m";
global.estrogen = 0;
global.follicleStimulatingHormone = 0;
global.luteinizingHormone = 0;
global.progesterone = 0;

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
		healthRegenFramesPerHP = 20 / global.progesterone;
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
		SwitchToRoom(room); // TODO maybe add a death exit sound?
	}
}