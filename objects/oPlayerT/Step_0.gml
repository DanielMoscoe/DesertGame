/// @desc Movement
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));

var movex = key_right - key_left;

	hsp = movex * walksp;

if (global.playerdelay = 0)
{
	//animation area (if you want to)
	
	//horizontal collision
	if (place_meeting(x + hsp, y, oWall))
	{
	hsp = 0;
	}
	x = x + hsp;
}