/// @desc update camera

//update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	//yTo = follow.y;
}	

//update object position
x = x + (xTo - x) / 25;
//y = y + (yTo - y) / 25;

//update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
