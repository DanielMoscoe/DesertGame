if (keyboard_check_pressed(ord("I"))) {
	active = !active;
} else {
	exit;
}

//Turns active to true/false if escape pressed, but if not,
//exits the event

//If activated:
if (active){
    var w=0, h=0;
    for(var i=0; i<ds_list_size(inv); i++){
        //var btn = instance_create(32 + (w*96), 32 + (h*96), oMenuButton);
        //GMS2 variant of the statement above:
        //var btn = instance_create_layer(32 + (w*96), 32 + (h*96), "Map", oMenuButton);
        var btn = instance_create_layer(oCamera.x + 32 + (w*96), oCamera.y + 32 + (h*96), "Player", oMenuButton);
		btn.item_id = inv[| i];
        btn.inv_id = i;
        //^ assigns item value and list item index to the button
        //moves to the next line if current one filled:
        w++;
        if (w >= (floor(window_get_width()/96))){
            w = 0; h++;
        }
    }
}
else
//If deactivated, remove the buttons:
if (instance_exists(oMenuButton)){
    with (oMenuButton) instance_destroy();
}