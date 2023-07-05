/// @description Move the arrow and check for collisions

//Block collisions
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, par_block, false, true)
{
    instance_destroy();
}

if alarm[0] > 0
{
    x -= 5; // Move left
    alarm[0]--; // Decrease alarm[0]
	
	//If collides with player
	if collision_line(x, y, x + spr_arrow, y + spr_arrow, obj_gertrude, false, false)
	{
        obj_gertrude.currentHealth -= 10; // Decrease player's health
        instance_destroy(); // Destroy arrow object
	}
}