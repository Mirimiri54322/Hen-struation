/// @description If not moving, disappear.

// TODO make arrow face direction it's moving in.

if (phy_linear_velocity_x == 0) && (phy_linear_velocity_y == 0) && !global.debug
{
	instance_destroy();
}