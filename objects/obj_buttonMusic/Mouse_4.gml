/// @description music on/off

if global.musicPlayer != noone
{
	instance_destroy(global.musicPlayer);
	image_index = 1;
}
else
{
	var player = instance_create_depth(x, y, 0, obj_musicPlayer);
	player.PlaySongForCurrentRoom();
	image_index = 0;
}
PlaySoundFrom(id, snd_buttonClick); //button click sound



