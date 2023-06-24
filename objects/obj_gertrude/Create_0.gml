/// @description Define movement.

// Define general world stuff.
global.debug = true;
global.pixelsPerBlock = 16;

global.player = id;
canJump = false;
state = "m";
currentHealthStep = 0;
depth = -100;

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

function MoveLeft()
{
	AdjustAttributesFromHormones();
	image_xscale = -1;
	phy_linear_velocity_x = -walkSpeed * global.pixelsPerBlock;
}

function MoveRight()
{
	AdjustAttributesFromHormones();
	image_xscale = 1;
	phy_linear_velocity_x = walkSpeed * global.pixelsPerBlock;
}

function MoveUp()
{
	AdjustAttributesFromHormones();
	phy_linear_velocity_y = -jumpSpeed * global.pixelsPerBlock;
	canJump = false;
}