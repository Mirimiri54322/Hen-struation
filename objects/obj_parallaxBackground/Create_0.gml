/// @description Move to back and define methods.

function DrawSpriteParallaxed(sprite = noone)
{
	// Calculate location.
	// In general, sprite x = camera x * camera width / sprite width.
	var camera = view_get_camera(view_current);
	var spriteX = camera_get_view_x(camera) * view_get_wport(camera) / sprite_get_width(sprite);
	var spriteY = camera_get_view_y(camera) * view_get_hport(camera) / sprite_get_height(sprite);
	
	draw_sprite(sprite, 0, spriteX, spriteY);
}

// You need to put one of these in each level.
// Unless, of course, we decide we want every level to look the same with this.

depth = 1000;
image_alpha = global.debug; // invisible if debug off