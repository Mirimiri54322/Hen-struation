/// @description Do stuff with collisions

// Player damage collision
if collision_rectangle(x1, y1, x2, y2, obj_gertrude, false, false) 
{
   obj_gertrude.TakeDamage(100);
}

// Pushable block collision (for crushing)
if collision_rectangle(x1, y1, x2, y2, obj_pushableBlock, false, false) 
{
	// Make it look squooshed.
   obj_pushableBlock.image_yscale *= 0.5;
   // TODO Adjust the physics collision box.)
}