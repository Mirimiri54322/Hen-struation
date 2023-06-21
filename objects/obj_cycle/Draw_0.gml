/// @description Draw UI.

draw_self();
draw_sprite_ext(needleSprite, 0, x, y, 1, 1, currentAngle, c_white, 1);
draw_set_font(fnt_normal);
draw_set_color(c_white);
if global.player.state == "l"
{
	draw_set_color(c_lime);
}
draw_text(x - sprite_width * 2, y - sprite_height / 2, string(global.player.currentHealth) + "/" + string(global.player.maxHealth));
