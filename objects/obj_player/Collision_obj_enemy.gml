if(!global.dead)
{
	if(obj_player.sprite_index == spr_player_punch and obj_player.image_index > 3 and obj_player.image_index < 6)
	{
		show_debug_message(":3");
		with(other)
		{
			instance_destroy();	
		}
	}
	else if(obj_player.sprite_index == spr_player_sword_atk and obj_player.image_index > 0 and obj_player.image_index < 5)
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