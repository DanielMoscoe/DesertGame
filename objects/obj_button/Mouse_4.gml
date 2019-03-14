/// @description Insert description here
// You can write your code in this editor
if(myText == "Use") {
	script_execute(ds_grid_get(playerInventory, 4, itemSelected));
	trashItem();
}

else if(myText == "Trash") {
	trashItem();
}