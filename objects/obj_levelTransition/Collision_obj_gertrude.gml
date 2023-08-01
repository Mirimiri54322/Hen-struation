/// @description Freeze the player and go to the next level.
// Dead people CANNOT go to the next level. Sorry. :/
if obj_gertrude.currentHealth > 0 && destinationRoom != rm_credits
{
	obj_gertrude.phy_angular_damping = 1000;
	obj_gertrude.phy_linear_damping = 1000;
	SwitchToRoom(destinationRoom, exitSound);
}