
//Mouse hover effect:
if (position_meeting(mouse_x, mouse_y, id)) image_alpha = 0.8;
else image_alpha = 1;

//Do something if mouse left button pressed:
if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_right)){
    /*add your code here to do something. If you want different behavior
    depending on the type of item, you can do something like:
        if (item_id=="apple") health+=10;
        else if (item_id=="mango") {health+=20; armor+=10;}
        <else...>
    */
    ds_list_delete(inv, inv_id);
    //^ removes item from inventory list
    //deactivate menu and destroy buttons:
    if (instance_exists(oMenuButton)) with (oMenuButton) instance_destroy();
    oInventoryMenu.active = false;
}
