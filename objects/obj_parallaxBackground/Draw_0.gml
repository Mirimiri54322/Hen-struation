/// @description Draw front middle and back where they should be according to the position of the camera.

DrawSpriteParallaxed(backSprite, backFog); // furthest back
DrawSpriteParallaxed(middleSprite, middleFog); // in the middle
DrawSpriteParallaxed(frontSprite, frontFog); // closest to the viewer (but still in the background)

draw_self();
