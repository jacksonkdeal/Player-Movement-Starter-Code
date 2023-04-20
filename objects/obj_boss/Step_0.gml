//Horizontal collision
if (place_meeting(x + speed + 3, y, obj_wall)) {
	while (!place_meeting(x + sign(speed), y, obj_wall)) {
		x += sign(speed);
	}
	speed *= -1;
}
x += speed;

// Animation
/*
if(!place_meeting(x, y + 1, obj_wall)) {
	sprite_index = spr_boss_jump;
	image_speed = 0;
	if (vsp > 0) {
		image_index = 2;
	} else if (vsp == 0) {
		image_index = 1;	
	} else {
		image_index = 0;
	}
} else {
	image_speed = 1;
	if (speed == 0)
	{
		sprite_index = spr_boss;
	} else {
		sprite_index = spr_boss_run;
	}
}
*/

if(speed != 0) {
	image_xscale = sign(speed);
}