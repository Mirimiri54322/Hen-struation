/// @description create arrow

if !isInputActive // shoots by default, doesn't when has input
{
	PlaySoundFrom(id, snd_arrowTrap1);

	// rotation of 0 shoots left
	// rotation -270 shoots down
	// rotation -180 shoots right
	// rotation -90 shoots up
	var velX = -cos(degtorad(direction)) * arrowSpeed * global.pixelsPerBlock; // x velocity it will have
	var velY = -sin(degtorad(direction)) * arrowSpeed * global.pixelsPerBlock; // y velocity it will have
	var tempVelX = velX;
	var offX = 0; // offset left/right to not spawn inside the launcher
	var offY = 0; // offset up/down to not spawn inside the launcher
	
	if image_angle = 0 // Left
	{
		offX -= global.pixelsPerBlock;
		//leave velX, velY alone
	}
	else if image_angle = -90 // Up
	{
		offY -= global.pixelsPerBlock;
		velX = velY;
		velY = tempVelX;
	}
	else if image_angle = -180 // Right
	{
		offX += global.pixelsPerBlock;
		velX *= -1;
		velY *= -1;
	}
	else if image_angle = -270 // Down
	{
		offY += global.pixelsPerBlock;
		velX = -1 * velY;
		velY = -1 * tempVelX;
	}
	
	// Actually make the arrow.
	var arrow = instance_create_depth(x + offX, y + offY, depth + 1, obj_arrow); //create arrow
	arrow.phy_rotation = phy_rotation;
	arrow.phy_bullet = true;
	arrow.phy_linear_velocity_x = velX;
	arrow.phy_linear_velocity_y = velY;
	arrow.originLauncher = id; // so the arrow doesn't think this is a wall it should be destroyed on.
}

alarm[0] = room_speed * arrowInterval; // reset timer