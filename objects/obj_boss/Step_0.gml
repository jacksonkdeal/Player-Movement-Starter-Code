//Horizontal collision
if (place_meeting(x + speed, y, obj_wall)) {
	while (!place_meeting(x + sign(speed), y, obj_wall)) {
		x += sign(speed);
	}
	speed *= -1;
}
x += speed;

// Animation


image_speed = 1;
if (speed == 0)
{
	sprite_index = spr_boss;
} else {
	sprite_index = spr_boss_run;
}



if(speed != 0) {
	image_xscale = sign(speed);
}