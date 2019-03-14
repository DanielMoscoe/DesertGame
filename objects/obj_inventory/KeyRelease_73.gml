/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_inventoryGUI)) {
	inventoryDisplay = instance_create_depth(0,0, depth-1, obj_inventoryGUI);
	with(inventoryDisplay) {
		x = sprite_get_xoffset(sprite_index);
		y = room_height - sprite_get_yoffset(sprite_index);
	}
}
else {
	instance_destroy(obj_inventoryGUI);
	repeat(2) {
		instance_destroy(obj_button);
		instance_destroy(obj_order);
	}
}