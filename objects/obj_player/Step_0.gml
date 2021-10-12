/// @description Insert description here
// You can write your code in this editor
var npc2 = instance_nearest(x,y, obj_NPC2);
var dadBox = instance_nearest(x,y, obj_DadTextBox);
if(keyboard_check(ord("W"))) //move up
   {
		y-=movespeed;
		if(inConvoDad == false)
		{
			sprite_index = spr_player_up;		
			image_speed = 1.5;	
		}
		
   }
   
   
if(keyboard_check(ord("A"))) //move left 
   {
		x-=movespeed;
		if(inConvoDad == false)
		{
			sprite_index = spr_player_left;		
			image_speed = 1.5;
		}
   }
   
if(keyboard_check(ord("S"))) //move down
   {
		y+=movespeed;	
		
		if(inConvoDad == false)
		{
			sprite_index = spr_player_down;
			image_speed = 1.5;
		}
   }
   
if(keyboard_check(ord("D")))
   {
		x+=movespeed;
		if(inConvoDad == false)
		{
			sprite_index = spr_player_right; //move right
			image_speed = 1.5;
		}
   }
   
if keyboard_check_released(ord("W")) // stop moving up
   {
		sprite_index = spr_player_up;
		image_index = 0;
		image_speed = 0;
		//image_index = 8;
   }

if keyboard_check_released(ord("A")) // stop moving left
   {
		sprite_index = spr_player_left;
		image_index = 0;
		image_speed = 0;
		//image_index = 12;
		
   }

if keyboard_check_released(ord("S")) // stop moving down
   {
		sprite_index = spr_player_down;
		image_index = 0;
		image_speed = 0;
		//image_index = 0;
   }

if keyboard_check_released(ord("D")) // stop moving right
   {
		sprite_index = spr_player_right;
		image_index = 0;
		image_speed = 0;
		//image_index = 4;		
   }
   
   
cam_width = camera_get_view_width(view_camera[0]); //sets cam_width to the viewport width of camera 0
cam_height = camera_get_view_height(view_camera[0]); //sets cam_height to the viewport height of camera 0

x_follow = x -cam_width/2; //keeps the viewport center on the width
y_follow = y -cam_height/2; //keeps the viewport center on the height

//camera follow
if(x < cam_width/2)
{
	x_follow = 0;	
}

if(x > room_width - cam_width/2)
{
	x_follow = room_width - cam_width;	
}

if(y < cam_height/2)
{
	y_follow = 0;
}

if(y > room_height - cam_height/2)
{
	y_follow = room_height - cam_height;	
}

camera_set_view_pos(view_camera[0], x_follow, y_follow); //camera viewport will always follow the player

if(distance_to_object(obj_NPC1) < 30) //in range of Mrs. Friedman
{
	canTalktoOldLady = true;	
}

if(distance_to_object(obj_NPC1) > 31) //out of range of Mrs. Friedman
{	
	canTalktoOldLady = false;
	inConvoOldLady = false;
	//show_debug_message("destroy dialogue box");
}

if(distance_to_object(obj_NPC2) < 30) //in range of Jordan
{
	canTalktoDad = true;		
}

if(distance_to_object(obj_NPC2) > 31) //out of range of Jordan
{
	instance_destroy(obj_DadTextBox);
	canTalktoDad = false;
	inConvoDad = false;
	//show_debug_message("destroy dialogue box");
}


if(distance_to_object(obj_grocery) < 30) //in range of supermarket
{
	atSupermarket = true;
}

if(distance_to_object(obj_grocery) > 31) //out of range grocery
{
	instance_destroy(obj_supermarket);	
	atSupermarket = false;
}


if(canTalktoOldLady)
{	
   if keyboard_check_pressed(vk_space) //press space to advance to next dialogue
	{
		obj_NPC1.canStartDialogueOldLady = true;
		if(obj_NPC1.DialogueOldLady1 == false)
		{
			obj_NPC1.DialogueOldLady1 = true;	
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(obj_NPC1.DialogueOldLady1 && obj_NPC1.DialogueOldLady2 == false)
		{
			obj_NPC1.DialogueOldLady2 = true;
			show_debug_message("Old Lady 2");	
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(obj_NPC1.DialogueOldLady2 && obj_NPC1.DialogueOldLady3 == false)
		{
			obj_NPC1.DialogueOldLady3 = true;
			show_debug_message("Old Lady 3");	
			audio_play_sound(snd_dialogue_box, 1, false);
		}		
		
		else if(obj_NPC1.DialogueOldLady3 && obj_NPC1.DialogueOldLadyHelp1 == false)
		{
			obj_NPC1.DialogueOldLadyHelp1 = true;
			show_debug_message("Old Lady Help");	
		}		
		
		else if(obj_NPC1.DialogueOldLady4A && obj_NPC1.DialogueOldLady5A == false)
		{
			obj_NPC1.DialogueOldLady5A = true;
			show_debug_message("Old Lady 5A");	
			audio_play_sound(snd_dialogue_box, 1, false);
		}	
		
		else if(obj_NPC1.DialogueOldLady5A && obj_NPC1.DialogueSnowTutorial == false)
		{
			obj_NPC1.DialogueSnowTutorial = true;
			show_debug_message("Snow Tutorial");	
		}	
		
		else if(obj_NPC1.DialogueOldLady4B && obj_NPC1.DialogueOldLady5A == false)
		{
			obj_NPC1.DialogueOldLady5A = true;
			show_debug_message("Old Lady 5A");	
			audio_play_sound(snd_dialogue_box, 1, false);
		}	
		
		else if(obj_NPC1.DialogueOldLady4C && obj_NPC1.DialogueOldLady5B == false)
		{
			obj_NPC1.DialogueOldLady5B = true;
			show_debug_message("Old Lady 5B");	
			audio_play_sound(snd_dialogue_box, 1, false);
		}	
		
		else if(obj_NPC1.DialogueSnowTutorial && GameManager.PogChampOldLady && obj_NPC1.DialogueOldLady6 == false && GameManager.tookOldLadyMoney)
		{
			obj_NPC1.DialogueOldLady6 = true;
			GameManager.money +=5;
			show_debug_message("Old Lady 6");	
			audio_play_sound(snd_dialogue_box, 1, false);
			if(obj_NPC1.DialogueOldLady5A)
			{
				instance_destroy(obj_OldLadyText4B);	
			}
		}	
		
		else if(obj_NPC1.DialogueSnowTutorial && GameManager.PogChampOldLady && obj_NPC1.DialogueOldLady6 == false && GameManager.tookOldLadyMoney == false)
		{
			obj_NPC1.DialogueOldLady6B = true;
			GameManager.money +=5;
			show_debug_message("Old Lady 6");	
			audio_play_sound(snd_dialogue_box, 1, false);
			if(obj_NPC1.DialogueOldLady5A)
			{
				instance_destroy(obj_OldLadyText4B);	
			}
		}	
	}
	
	if(obj_NPC1.DialogueOldLadyHelp1)
	{
		if(keyboard_check_pressed(ord("1")))
		{
			obj_NPC1.canStartDialogueOldLady = true;
			obj_NPC1.DialogueOldLady4A = true;	
			audio_play_sound(snd_choice, 1, false);
			GameManager.tookOldLadyMoney = true;
		}
		
		else if(keyboard_check_pressed(ord("2")))
		{
			obj_NPC1.canStartDialogueOldLady = true;
			obj_NPC1.DialogueOldLady4B = true;	
			audio_play_sound(snd_choice, 1, false);
		}
		
		else if(keyboard_check_pressed(ord("3")))
		{
			obj_NPC1.canStartDialogueOldLady = true;
			obj_NPC1.DialogueOldLady4C = true;	
			audio_play_sound(snd_choice, 1, false);
		}
		
	}
	
}

if(canTalktoDad)
{
	if keyboard_check_pressed(vk_space)
	{
		//show_debug_message("press space for dialogue");
		obj_NPC2.canStartDialogueDad = true;
		if(obj_NPC2.DialogueDad1 == false) //bool if dad1 should be played
		{				
			//obj_DadTextBox.sprite_index = spr_DadText1;
			obj_NPC2.DialogueDad1 = true;
			show_debug_message("DadDialogue1");
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(obj_NPC2.DialogueDad1 && obj_NPC2.DialogueDad2 == false)
		{
			instance_destroy(obj_DadText1);
			obj_NPC2.DialogueDad2 = true;
			//obj_DadTextBox.sprite_index = spr_DadText2;			 			
			//obj_NPC2.DialogueDad1 = false;
			//obj_NPC2.DialogueDad2 = true;
			show_debug_message("Dad2");		
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(obj_NPC2.DialogueDad2 && obj_NPC2.DialogueDadHelp1 == false)
		{
			instance_destroy(obj_DadText2);
			obj_NPC2.DialogueDadHelp1 = true;
			//obj_DadTextBox.sprite_index = spr_DadText2;			 			
			//obj_NPC2.DialogueDad1 = false;
			//obj_NPC2.DialogueDad2 = true;
			show_debug_message("Options");		
		}
		
		
		else if(obj_NPC2.DialogueDad3A && obj_NPC2.DialogueDad4 == false)
		{
			instance_destroy(obj_DadText3A);
			obj_NPC2.DialogueDad4 = true;
			//obj_DadTextBox.sprite_index = spr_DadText2;			 			
			//obj_NPC2.DialogueDad1 = false;
			//obj_NPC2.DialogueDad2 = true;
			show_debug_message("Dialogue4");
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(obj_NPC2.DialogueDad4 && obj_NPC2.DialogueDadHelp2 == false)
		{
			instance_destroy(obj_DadText4);
			obj_NPC2.DialogueDadHelp2 = true;
			//obj_DadTextBox.sprite_index = spr_DadText2;			 			
			//obj_NPC2.DialogueDad1 = false;
			//obj_NPC2.DialogueDad2 = true;
			show_debug_message("Options 2");		
		}
		
		else if(obj_NPC2.DialogueDad5A && obj_NPC2.DialogueDad6A == false)
		{
			instance_destroy(obj_DadText5A);
			obj_NPC2.DialogueDad6A = true;
			//obj_DadTextBox.sprite_index = spr_DadText2;			 			
			//obj_NPC2.DialogueDad1 = false;
			//obj_NPC2.DialogueDad2 = true;
			show_debug_message("Dialogue 6A");	
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(obj_NPC2.DialogueDad5B && obj_NPC2.DialogueDad6B == false)
		{
			instance_destroy(obj_DadText5B);
			obj_NPC2.DialogueDad6B = true;
			//obj_DadTextBox.sprite_index = spr_DadText2;			 			
			//obj_NPC2.DialogueDad1 = false;
			//obj_NPC2.DialogueDad2 = true;
			show_debug_message("Dialogue 6B");
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(obj_NPC2.DialogueDad5C && obj_NPC2.DialogueDad6C == false)
		{
			instance_destroy(obj_DadText5C);
			obj_NPC2.DialogueDad6C = true;
			//obj_DadTextBox.sprite_index = spr_DadText2;			 			
			//obj_NPC2.DialogueDad1 = false;
			//obj_NPC2.DialogueDad2 = true;
			show_debug_message("Dialogue 6C");	
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(obj_NPC2.DialogueDad6A)
		{
			instance_destroy(obj_DadText6A);			
			show_debug_message("Done with first conversation with Dad");	
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(obj_NPC2.DialogueDad6B)
		{
			instance_destroy(obj_DadText5B);	
			instance_destroy(obj_DadText3B);
			show_debug_message("Done with first conversation with Dad");
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(obj_NPC2.DialogueDad6C)
		{
			instance_destroy(obj_DadText6C);			
			show_debug_message("Done with first conversation with Dad");	
			audio_play_sound(snd_dialogue_box, 1, false);
		}
		
		else if(global.boughtSupplies)
		{	
			obj_DadText6A.sprite_index = spr_DadText7;
			obj_DadText6B.sprite_index = spr_DadText7;
			obj_NPC2.DialogueDad7 = true;
			//instance_destroy(obj_DadText6A);
			show_debug_message("Dialogue 7");		
		}
		
	}	
	
	if(obj_NPC2.DialogueDadHelp1 && obj_NPC2.DialogueDadHelp2 == false)
	{
		if(keyboard_check_pressed(ord("1")))
		{
			obj_NPC2.canStartDialogueDad = true;
			obj_NPC2.DialogueDad3A = true;	
			show_debug_message("pressed one");
			audio_play_sound(snd_choice, 1, false);
		}
		
		else if(keyboard_check_pressed(ord("2")))
		{
			obj_NPC2.canStartDialogueDad = true;
			obj_NPC2.DialogueDad3B = true;	
			audio_play_sound(snd_choice, 1, false);
		}
		
	}
	
	if(obj_NPC2.DialogueDadHelp2)
	{		
		if(keyboard_check_pressed(ord("1")))
		{
			if(GameManager.tookDadMoney = false)
			{
			obj_NPC2.canStartDialogueDad = true;
			obj_NPC2.DialogueDad5A = true;	
			GameManager.money +=10;
			GameManager.tookDadMoney = true;
			show_debug_message("pressed one");
			audio_play_sound(snd_choice, 1, false);
			}
			
		}
		
		else if(keyboard_check_pressed(ord("2")))
		{
			obj_NPC2.canStartDialogueDad = true;
			obj_NPC2.DialogueDad5B = true;	
			audio_play_sound(snd_choice, 1, false);
		}
		
		else if(keyboard_check_pressed(ord("3")))
		{
			obj_NPC2.canStartDialogueDad = true;
			obj_NPC2.DialogueDad5C = true;	
			audio_play_sound(snd_choice, 1, false);
		}
	}
}

if(collideSnowblock)
{
	var snowblock = instance_nearest(x,y, obj_snow_block);
	if(keyboard_check((vk_space)))
	{
		if(instance_exists(snowblock))
		{
			snowblock.snowTimer += 1;				
		}		
		if(distance_to_object(snowblock) > 31)
		{
			collideSnowblock = false;	
		}
	}
	
}

if(atSupermarket)
{	
   if keyboard_check_pressed(vk_space) //if at super market and press space, show market menu
	{
		instance_create_depth(441, 2300, -1, obj_supermarket);
		canBuy = true;
	}
}

if(canBuy)
{
	if keyboard_check_pressed(ord("E")) //exit store
	{
		canBuy = false;
		instance_destroy(obj_supermarket);
		atSupermarket = false;
	}
	
	else if keyboard_check_pressed(ord("1")) //buy the 12 pack water
	{
		if(bought12packwater == false)
		{
			bought12packwater = true;
			if(GameManager.money -15 >=0)
			{
				GameManager.money -=15;
				global.boughtSupplies = true;
				show_debug_message("bought 12 pack water");				
			}
		}
	}
	
	else if keyboard_check_pressed(ord("2")) //buy the 10 pack handwarmer
	{
		if(bought10packhandwarmer == false)
		{
			bought10packhandwarmer = true;
			if(GameManager.money -6 >=0)
			{
				GameManager.money -= 6;
				global.boughtSupplies = true;				
				show_debug_message("bought 10 pack hand warmer");
			}
		}
	}
	
	else if keyboard_check_pressed(ord("3")) //buy the 8 pack water
	{
		if(bought8packwater == false)
		{
			bought8packwater = true;
			if(GameManager.money -10 >=0)
			{
				GameManager.money -= 10;
				global.boughtSupplies = true;				
				show_debug_message("bought 8 pack water");
			}
			
		}
	}
}