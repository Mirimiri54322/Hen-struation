/// @description if collide hurt player
if collision_rectangle(x1, y1, x2, y2, obj_gertrude, false, false) 
{
   obj_gertrude.currentHealth -= 1000;
}
