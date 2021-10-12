/// @description Insert description here
// You can write your code in this editor

//gravity
//show_debug_message(hspeed);

if(vspeed > 0)
{
	falling = true;	
}

if(vspeed <0)
{
	sprite_index = spr_player1_jump;	
}

if(falling)
{
	sprite_index = spr_player1_fall;
	gravity = 1 * GameManager.timeSpeed;	
}

if(bounced) //if bounced then add the vspeed upwards
{
	falling = false;
	sprite_index = spr_player1_jump;
	vspeed = -25 * GameManager.timeSpeed;
	bounced = false;
	//falling = true;
}

if(vspeed > 0 && vspeed < 25)
{
	sprite_index = spr_player1_fall;	
}

//show_debug_message(vspeed);
//Player Control
if(keyboard_check(ord("A")))
{
	hspeed = -10 * GameManager.timeSpeed;	
	//image_xscale = -1;	
	image_xscale = sign(hspeed);
	faceLeft = true;
	faceRight = false;
}

else if(keyboard_check(ord("D")))
{
	hspeed = 10 * GameManager.timeSpeed;	
	//image_xscale = 1;	
	image_xscale = sign(hspeed);
	faceLeft = false;
	faceRight = true;
}

if(keyboard_check(vk_lshift))
{
	if(faceLeft && canBoost)
	{
		hspeed = -50 * GameManager.timeSpeed;
		canBoost = false;
	}
	
	else if(faceRight && canBoost)
	{
		hspeed = 50 * GameManager.timeSpeed;
		canBoost = false;
	}
}

if(canBoost == false)
{
	
	boostTimer--;	
}

if(boostTimer == 0)
{
	canBoost = true;
	boostTimer = 5;
}

/*else
{
	hspeed = 0;	
}*/

if(gotstomped) //if get stomp change the sprite
{
	sprite_index = spr_player1_RIP;
	vspeed = 25 * GameManager.timeSpeed;	
	canStomp = false;
}

if(canaddscore == false) 
{
	stomptimer--;	
}

if(stomptimer = 0)
{
	canaddscore = true;	
}

if (x - sprite_width * 0.5 <= 0)
{
	show_debug_message(x);
    //x = sprite_width;
	x = room_width + sprite_width * 0.5;
	show_debug_message("left bound");
	//audio_play_sound(snd_wall, 1, false);
	
}
if (x + sprite_width * 0.5 > room_width)
{
    x = 0 +  sprite_width * 0.5;
	//audio_play_sound(snd_wall, 1, false);
}
if(knocked_out)
{
	gotstomped = false;
	vspeed = 0 * GameManager.timeSpeed;
	if(respawn_timer > 0)
	{
		respawn_timer--;
		gravity = 0 * GameManager.timeSpeed; //stop player from moving
	}
	
	if(respawn_timer == 0)
	{
		gravity = 1 * GameManager.timeSpeed;
		knocked_out = false;
		y = room_height;
		//hspeed = random_range(-x_respawn_speed, x_respawn_speed);
		hspeed = 0 * GameManager.timeSpeed;
		hspeed = (random_range(-x_respawn_speed, x_respawn_speed)) * GameManager.timeSpeed;
		vspeed = -40 * GameManager.timeSpeed;
		respawn_timer = delay_timer;
		//canStomp = true;
		show_debug_message("p1 respawn");
		audio_play_sound(snd_launch, 1, false);		
	}
}

if(y > room_height && knocked_out == false)
{
	knocked_out = true;
	GameManager.player1Score--;
	show_debug_message("p1 knocked out");
}


if(place_meeting(x,sprite_get_bbox_bottom(0), obj_cloud))
{
	instance_destroy(obj_cloud);
	//global.number_of_clouds--;
}
