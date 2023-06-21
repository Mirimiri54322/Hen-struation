/// @description Define movement;

global.pixelsPerBlock = 16;
global.player = id;
canJump = false;
state = "m";
currentHealthStep = 0;
depth = -100;

function MoveLeft()
{
	image_xscale = -1;
	phy_linear_velocity_x = -walkSpeed * global.pixelsPerBlock;
}

function MoveRight()
{
	image_xscale = 1;
	phy_linear_velocity_x = walkSpeed * global.pixelsPerBlock;
}

function MoveUp()
{
	phy_linear_velocity_y = -jumpSpeed * global.pixelsPerBlock;
	canJump = false;
}