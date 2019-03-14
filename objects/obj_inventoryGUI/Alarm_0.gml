/// @description Insert description here
// You can write your code in this editor
useButton = instance_create_depth(bbox_right - 58, room_height - sprite_get_yoffset(sMap) + 100, depth - 1, obj_button);
useButton.myText = "Use";

trashButton = instance_create_depth(bbox_right + 198, room_height - sprite_get_yoffset(sInv) + 100, depth - 1, obj_button);
trashButton.myText = "Trash";

nameClick = instance_create_depth(sprite_get_xoffset(sprite_index), bbox_top + 30, depth - 1, obj_order);
nameClick.myOrderBy = 0;

amountClick = instance_create_depth(bbox_right - 50, bbox_top - 30, depth - 10, obj_order);
amountClick.myOrderBy = 1;