/// @description Define changing image when activated and deactivated.

// Inherit the parent event
event_inherited();

function Activate()
{
	isInputActive = true;
	image_index = 1;
}

function Deactivate()
{
	isInputActive = false;
	image_index = 2;
}

