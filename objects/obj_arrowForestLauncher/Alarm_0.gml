/// @description create arrow every 2s

//NOTE: Arrow doesn't turn with the block

instance_create_layer(x - 16, y,"Instances",obj_arrow); //create arrow
alarm[0] = room_speed * 2; // reset timer