/// @description Face direction of moovement. If not moving, disappear.

phy_rotation = sqrt(sqr(phy_linear_velocity_x) + sqr(phy_linear_velocity_y));

if (phy_linear_velocity_x == 0) && (phy_linear_velocity_y == 0) && !global.debug
{
	instance_destroy();
}