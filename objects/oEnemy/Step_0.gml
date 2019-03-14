/// @desc Movement
Delay -= 1;
if (Delay = 0)
{
	var direc = irandom_range(1, 4)
	if (direc = 1)
	{
		if (!place_meeting(x + 64, y, oWall))
		{
			x += 64;
		}
	}  
	if (direc = 2)
	{
		if (!place_meeting(x , y + 64, oWall))
		{
			y += 64;
		}
	} 
	if (direc = 3)
	{
		if (!place_meeting(x - 64, y, oWall))
		{
			x -= 64;
		}
	} 
	if (direc = 4)
	{
		if (!place_meeting(x, y - 64, oWall))
		{
			y -= 64;
		}
	} 
	Delay = 30;
} 
 