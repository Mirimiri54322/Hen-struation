/// @description Update angle and day.

currentAngle = (currentAngle - degreesPerTick) % 360;
currentDay = floor(currentAngle * 28 / -360);

camera = view_get_camera(view_current);

x = camera_get_view_x(camera) + camera_get_view_width(camera) - sprite_width / 2;
y = camera_get_view_y(camera) + sprite_height / 2;

// Should be a smoother adjustment in the actual game.
switch currentDay
{
	// periodt.
	case 0:
		global.player.state = "m";
		global.player.jumpSpeed = 14; // 2 blocks
	break;
	
	// follicular phase
	case 4:
	global.player.state = "f";
		global.player.jumpSpeed = 16; // 3 blocks
	break;
	
	// Ovulation
	case 10:
	global.player.state = "o";
		global.player.jumpSpeed = 18; // 4 blocks
		global.player.inertia = 100;
		global.player.phy_linear_damping = 1;
	break;
	
	// depression
	case 15:
	global.player.state = "l";
		global.player.jumpSpeed = 10; // 1 block
		global.player.inertia = 0;
		global.player.phy_linear_damping = 0.1;
	break;
}