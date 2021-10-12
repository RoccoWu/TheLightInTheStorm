/// @description Insert description here
// You can write your code in this editor
var player  = instance_nearest(x,y, obj_player);
//var dadBox = instance_nearest(x,y, obj_DadTextBox);
if(canStartDialogueOldLady)
{
	player.inConvoOldLady = true;	
	player.canStartDialogueOldLady = false;
	canStartDialogueOldLady = false;
	show_debug_message("creating textbox dad");
	
	if(DialogueOldLady1)
	{
		instance_create_depth(2521, 1216, 0, obj_OldLadyText1);
		show_debug_message("keeping dialogue 1");
	}
	
	if(DialogueOldLady2 == true)
	{
		instance_destroy(obj_OldLadyText1);
		instance_create_depth(2521, 1550, -1, obj_OldLadyText2);		
		show_debug_message("Dialogue 2 created");
	}
	
	if(DialogueOldLady3 == true)
	{
		instance_destroy(obj_OldLadyText2);
		instance_create_depth(2521, 1216, -2, obj_OldLadyText3);		
		show_debug_message("Dialogue 3 created");
	}
	
	if(DialogueOldLadyHelp1 == true)
	{
		instance_destroy(obj_OldLadyText3);
		instance_create_depth(2521, 1216, -3, obj_OldLadyTextHelp1);		
		show_debug_message("Help created");
	}
	
	if(DialogueOldLady4A == true)
	{
		instance_destroy(obj_OldLadyTextHelp1);
		instance_create_depth(2521, 1550, -4, obj_OldLadyText4A);	
	}
	
	if(DialogueOldLady4B == true)
	{
		instance_destroy(obj_OldLadyTextHelp1);
		instance_create_depth(2521, 1550, -4, obj_OldLadyText4B);	
	}
	
	if(DialogueOldLady4C == true)
	{
		instance_destroy(obj_OldLadyTextHelp1);
		instance_create_depth(2521, 1550, -4, obj_OldLadyText4C);	
	}
	
	if(DialogueOldLady5A == true)
	{
		instance_destroy(obj_OldLadyText4A);
		instance_create_depth(2521, 1216, -5, obj_OldLadyText5A);			
	}
	
	if(DialogueSnowTutorial == true)
	{
		instance_destroy(obj_OldLadyText5A);
		instance_destroy(obj_OldLadyText4B);
		instance_create_depth(2521, 1216, -5, obj_SnowTutorial);	
		obj_player.inConvoOldLady = false;
	}
	
	if(DialogueOldLady5B == true)
	{
		instance_destroy(obj_OldLadyText4C);
		instance_create_depth(2521, 1216, -5, obj_OldLadyText5B);
		obj_player.inConvoOldLady = false;
	}	
	
	if(DialogueOldLady6 == true)
	{
		instance_create_depth(2521, 1216, -6, obj_OldLadyText6);
		obj_player.inConvoOldLady = false;
	}	
	
	if(DialogueOldLady6B == true)
	{
		instance_create_depth(2521, 1216, -6, obj_OldLadyText6B);
		obj_player.inConvoOldLady = false;
	}	
	
}

if(distance_to_object(obj_player) > 31 && obj_player.inConvoOldLady == false && obj_SnowTutorial) //destroy dialogue box when out of range
		{
			instance_destroy(obj_SnowTutorial);			
		}
		
if(distance_to_object(obj_player) > 31 && obj_player.inConvoOldLady == false && obj_OldLadyText5B) //destroy dialogue box when out of range
		{
			instance_destroy(obj_OldLadyText5B);			
		}
		
if(distance_to_object(obj_player) > 31 && obj_player.inConvoOldLady == false && obj_OldLadyText6) //destroy dialogue box when out of range
		{
			instance_destroy(obj_OldLadyText6);			
		}