/// @define toggling methods and initialize activity
/// This parent class is for objects whose state can be toggled by a switch. Like an arrow launcher.

function Activate()
{
	isInputActive = true;
}

function Deactivate()
{
	isInputActive = false;
}

function Toggle()
{
	isInputActive *= -1;
}

// Being inactive is the state it is in by default.
// Being active is when you turn it on.
// So an arrow launcher might be firing when it's inactive, and not firing when it's active.
isInputActive = false;