if(!global.dead)
{
	if(obj_player.sprite_index == spr_player_punch and obj_player.sprite_index > 3 and obj_player.sprite_index < 6)
	{
		with(other)
		{
			instance_destroy();	
		}
	}
	else if(obj_player.sprite_index == spr_player_sword_atk and obj_player.sprite_index > 0 and obj_player.sprite_index < 5)
	{
		with(other)
		{
			instance_destroy();	
		}
	}
	else
	{
		global.dead = true;
		sprite_index = spr_player_death
		alarm[2] = 60;
		alarm[1] = 120;
	}
}