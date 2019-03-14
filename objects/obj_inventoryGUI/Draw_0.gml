/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(myColor);

draw_text(bbox_left + textBorder, bbox_top + textBorder, "Image");
draw_text(bbox_left + 125, bbox_top + textBorder, "Name");
draw_text(bbox_left + 225, bbox_top + textBorder, "Amount");

itemLeftStart = bbox_left + 120;
itemTopStart = bbox_top + 48;

for(i = 0; i < inventoryEndAt; ++i) {
	for(j = 0; j < InventoryWidth; ++j) {
		inventoryOnScreen = i;
		if(j == 0)
			draw_text(itemLeftStart, itemTopStart + (i*32), ds_grid_get(myItems,0,i + scrolledAmount));
		if(j == 1)
			draw_text(itemLeftStart + 140, itemTopStart + (i*32), ds_grid_get(myItems, 1, i + scrolledAmount));
		if(j == 3)
			draw_sprite(ds_grid_get(myItems, j, i + scrolledAmount), 0, bbox_left + 40, itemTopStart + (i*32) + 16);
	}
}

draw_rectangle(bbox_left + textBorder, itemTopStart + ((itemSelected-scrolledAmount) * 32), bbox_right - textBorder, itemTopStart + ((itemSelected - scrolledAmount) * 32) + 32, true);

draw_sprite( sTown, 0, bbox_right + sprite_get_xoffset(sTown), room_height - sprite_get_yoffset(sTown));

if(isEmpty)
	draw_text_ext(bbox_right + 50, room_height - sprite_get_yoffset(sTown) - 100, emptyMessage, 32, sprite_get_width(sTown) - textBorder);
else
	draw_text_ext(bbox_right + 50, room_height - sprite_get_yoffset(sTown) - 100, ds_grid_get(myItems, 2, itemSelected), 32, sprite_get_width(sTown) - textBorder);


if(ds_grid_height(myItems) > floor((sprite_height - (textBorder*3)) / 32)) {
	draw_sprite(sHill, 0, bbox_right, 20 + bbox_top + itemSelected * (sprite_height - textBorder) / ds_grid_height(myItems));
}