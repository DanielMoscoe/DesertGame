/// @desc Menu setup
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_traget = gui_width - gui_margin;
menu_speed = 25; //lower = faster
menu_font = fMenu
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[1] = "play"; 
menu[0] = "unplay"; //this is the quit one

menu_items = array_length_1d(menu);
menu_cursor = 2;
