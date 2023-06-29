/// @description Move the arrow
if alarm[0] > 0
{
    x -= 5; // Move left
    alarm[0]--; // Decrease alarm[0]
	
	//If collides with player
	if collision_line(x, y, x + spr_arrow, y + spr_arrow, obj_gertrude, false, false)
	{
        obj_gertrude.currentHealth -= 1; // Decrease player's health
        instance_destroy(); // Destroy arrow object
    }
}