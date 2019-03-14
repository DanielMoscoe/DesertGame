/// @description Insert description here
// You can write your code in this editor
if(ds_grid_get(myItems, 0, 0) != 0) {
	isEmpty = false;
	inventoryEndAt = ds_grid_height(myItems);
	if(ds_grid_height(myItems) >= floor((sprite_height - (textBorder*3)) / 32))
		inventoryEndAt = floor((sprite_height - (textBorder*3)) / 32);
}

if(ds_grid_get(myItems, 0, 0) == 0) {
	isEmpty = true;
	inventoryEndAt = 0;
}