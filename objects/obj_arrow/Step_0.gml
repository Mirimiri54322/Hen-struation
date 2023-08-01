/// @description disappear if not moving

if (phy_linear_velocity_x == 0) && (phy_linear_velocity_y == 0) && !global.debug
{
	instance_destroy();
}