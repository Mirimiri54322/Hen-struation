/// @description Be able to jump again if the object is below us.

if other.y > y && phy_linear_velocity_y == 0
{
	canJump = true;
}