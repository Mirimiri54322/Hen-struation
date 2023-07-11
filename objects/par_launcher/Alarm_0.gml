/// @description create arrow

if !isInputActive // shoots by default, doesn't when has input
{
	audio_play_sound(sound_arrow_trap__1, 1, false);

	// rotation of 0 shoots left
	// rotation 90 shoots down
	// rotation 180 shoots right
	// rotation 270 shoots up
	var velX = -cos(degtorad(direction)) * arrowSpeed * global.pixelsPerBlock; // x velocity it will have
	var velY = -sin(degtorad(direction)) * arrowSpeed * global.pixelsPerBlock; // y velocity it will have
	var offX = 0; // offset left/right to not spawn inside the launcher
	var offY = 0; // offset up/down to not spawn inside the launcher
	// Figure out offset.
	if velX < 0
	{
		offX -= global.pixelsPerBlock;
	}
	else if velX > 0
	{
		offX += global.pixelsPerBlock;
	}
	if velY < 0
	{
		offY -= global.pixelsPerBlock;
	}
	else if velY > 0
	{
		offY += global.pixelsPerBlock;
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