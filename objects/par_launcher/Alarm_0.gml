/// @description create arrow

audio_play_sound(sound_arrow_trap__1, 1, false);

// rotation of 0 shoots left
// rotation 90 shoots down
// rotation 180 shoots right
// rotation 270 shoots up
var arrow = instance_create_depth(x, y, depth + 1, obj_arrow); //create arrow
arrow.phy_rotation = phy_rotation;
arrow.phy_linear_velocity_x = -cos(degtorad(direction)) * arrowSpeed * global.pixelsPerBlock;
arrow.phy_linear_velocity_y = -sin(degtorad(direction)) * arrowSpeed * global.pixelsPerBlock;
arrow.originLauncher = id; // so the arrow doesn't think this is a wall it should be destroyed on.

alarm[0] = room_speed * arrowInterval; // reset timer