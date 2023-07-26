/// @description if no longer touching, reset image to off & reset timer
var nearbyInstances = ds_list_create();
instance_position_list(x, y, all, nearbyInstances, false);
for (var i = 0; i < ds_list_size(nearbyInstances); i ++)
{
	if (ds_list_find_index(nearbyInstances, i) == obj_gertrude) || (ds_list_find_index(nearbyInstances, i) == obj_pushableBlock)
	{
		// If we're touching something,
		// then don't reset and just keep on truckin'.
		return;
	}
}
image_index = 0;
isActive = false;
if targetID != 0
{
	targetID.Deactivate();
}