/// @description Insert description here
// You can write your code in this editor
if(GameManager.gameStart)
{
alarm[0] = mediumcloudTimer--;
alarm[1] = bigcloudTimer--;
alarm[2] = ginormouscloudTimer--;
}


if(place_meeting(x,sprite_get_bbox_top(0), obj_player1)) //allows player to jump through cloud from bottom
{
	//show_debug_message("jump top");	
}

if(alive == false)
{	
	
	if(clouddestroytimer < 0) //show the poof effect
	{
		show_debug_message("poof");
		instance_destroy(id);
		global.number_of_clouds--;
		clouddestroytimer= 0.6;	
	}
}
if(alive == false) 
{
	if(sprite_index == spr_cloud_small)
	{
		sprite_index = spr_small_poof;	
		clouddestroytimer--;
	}	
	else if(sprite_index == spr_cloud_medium)
	{
		sprite_index = spr_medium_poof;	
		clouddestroytimer--;
	}
	else if(sprite_index == spr_cloud_big)
	{
		sprite_index = spr_big_poof;	
		clouddestroytimer--;
	}
	else if(sprite_index == spr_cloud_ginormous)
	{
		sprite_index = spr_ginormous_poof;
		clouddestroytimer--;
	}	
	
	else if(sprite_index == spr_cloud_smallmelt)
	{
		sprite_index = spr_small_poof;	
		clouddestroytimer--;
	}	
	else if(sprite_index == spr_cloud_mediummelt)
	{
		sprite_index = spr_medium_poof;	
		clouddestroytimer--;
	}
	else if(sprite_index == spr_cloud_bigmelt)
	{
		sprite_index = spr_big_poof;	
		clouddestroytimer--;
	}
	else if(sprite_index == spr_cloud_ginormousmelt)
	{
		sprite_index = spr_ginormous_poof;
		clouddestroytimer--;
	}	
}

y+= 0.5 * GameManager.timeSpeed;

if( y > room_height) //when the rock goes out of the screen, destroy the rock
{
	instance_destroy(id);	
}