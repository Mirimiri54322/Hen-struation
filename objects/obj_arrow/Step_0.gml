/// @description If not moving, disappear.

// TODO make arrow face direction it's moving in.
direction = point_direction(0, 0, phy_linear_velocity_x, phy_linear_velocity_y);

if (phy_linear_velocity_x == 0) && (phy_linear_velocity_y == 0) && !global.debug
{
	instance_destroy();
}