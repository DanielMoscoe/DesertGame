/// @desc set location
x = oPlayer.x + 15;
y = oPlayer.y + 40;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0, recoil - 1);

if (mouse_check_button(mb_left)) and (firingdelay < 0) and (clip > 0)
{
	recoil = 4;
	firingdelay = 5;
	clip -= 1;
	with (instance_create_layer(x, y, "Proj", oProj))
	{
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}	
}	

if (clip = 0)
{
	Reload -= 1;
	if (Reload < 0)
	{
		clip = 6;
		Reload = 60;
	}	
}	

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}	
