/// @description change image index
if !changed
{
	instance_change(obj_pistonBase, true);
}
else
{
	instance_change(obj_pistonFull, false);
}
alarm[0] = room_speed * 2; //reset alarm
