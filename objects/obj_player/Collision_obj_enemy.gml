if(!global.dead)
{
	if(obj_player.sprite_index == spr_player_punch)
	{
		show_debug_message(":3");
		with(other)
		{
			instance_destroy();	
		}
	}
	else if(obj_player.sprite_index == spr_player_sword_atk)
	{
		show_debug_message(":3");
		with(other)
		{
			instance_destroy();	
		}
	}
	else
	{
		global.dead = true;
		sprite_index = spr_player_death;
		alarm[1] = 180;	
		alarm[2] = room_speed;
	}
}