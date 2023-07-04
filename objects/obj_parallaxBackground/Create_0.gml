/// @description Move to back and define methods.

/// @description Draw the sprite parallaxed.
/// Fog is atmospheric fog.
function DrawSpriteParallaxed(sprite, fog = 0.0)
{
	// Can't draw a sprite that doesn't exist.
	if sprite == noone
	{
		return;
	}
	
	// Calculate location.
	// In general, sprite x = camera x * camera width / sprite width.
	var camera = view_get_camera(view_current);
	var cameraX = camera_get_view_x(camera);
	var cameraY = camera_get_view_y(camera);
	var cameraW = view_get_wport(camera);
	var cameraH = view_get_hport(camera);
	var spriteX = cameraX * cameraW / sprite_get_width(sprite);
	var spriteY = cameraY * cameraH / sprite_get_height(sprite);
	
	draw_sprite(sprite, 0, spriteX, spriteY);
	
	// Now draw the fog.
	draw_set_alpha(fog);
	draw_set_color(fogColor);
	draw_rectangle(cameraX, cameraY, cameraX + cameraW, cameraY + cameraH, false);
	
	// Reset drawing for future elements.
	draw_set_alpha(1.0);
	draw_set_color(c_white);
}

// You need to put one of these in each level.
// Unless, of course, we decide we want every level to look the same with this.

depth = 1000;
image_alpha = global.debug; // invisible if debug off