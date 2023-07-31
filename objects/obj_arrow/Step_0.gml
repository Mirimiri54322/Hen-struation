/// @description Update angle and disappear if not moving

// TODO make arrow face direction it's moving in.
direction = point_direction(phy_linear_velocity_x, phy_linear_velocity_y, 0, 0);

if (phy_linear_velocity_x == 0) && (phy_linear_velocity_y == 0) && !global.debug
{
	instance_destroy();
}