/// @description Insert description here
// You can write your code in this editor
var player  = instance_nearest(x,y, obj_player);
//var dadBox = instance_nearest(x,y, obj_DadTextBox);
if(canStartDialogueDad)
{
	//instance_create_depth(1500,1588,0, obj_DadTextBox); // instantiates the third dialogue box
	player.inConvoDad = true;	
	player.canStartDialogueDad = false;
	canStartDialogueDad = false;
	//player.canTalktoDad = false;
	show_debug_message("creating textbox dad");
	
	if(DialogueDad1)
	{
		instance_create_depth(1550, 1850, 0, obj_DadText1);
		show_debug_message("keeping dialogue 1");
	}
	
	 if(DialogueDad2 == true)
	{
		instance_destroy(obj_DadText1);
		instance_create_depth(1550, 1500, -1, obj_DadText2);		
		show_debug_message("Dialogue 2 created");
	}
	
	 if(DialogueDadHelp1 == true)
	{
		instance_destroy(obj_DadText2);
		instance_create_depth(1550, 1500, -2, obj_DadTextHelp1);		
		show_debug_message("Help options created");	
		
	}
	
	 if(DialogueDad3A == true)
	{	
		instance_destroy(obj_DadTextHelp1);
		instance_create_depth(1550, 1850, -3, obj_DadText3A);		
		show_debug_message("Dialogue 3A created");
	}
	
	 if(DialogueDad3B == true)
	{		
		instance_destroy(obj_DadTextHelp1);
		instance_create_depth(1550, 1850, -3, obj_DadText3B);		
		show_debug_message("Dialogue 3A created");
		
		obj_player.inConvoDad = false;		
	}
	
	if(DialogueDad4 == true)
	{		
		instance_destroy(obj_DadText3A);
		instance_create_depth(1550, 1500, -4, obj_DadText4);		
		show_debug_message("Dialogue 4 created");	
	}
	
	if(DialogueDadHelp2 == true)
	{		
		instance_destroy(obj_DadText4);
		instance_create_depth(1550, 1500, -5, obj_DadTextHelp2);		
		show_debug_message("Options 2 created");	
	}
	
	if(DialogueDad5A == true)
	{		
		instance_destroy(obj_DadTextHelp2);
		instance_create_depth(1550, 1850, -6, obj_DadText5A);		
		show_debug_message("Dialogue 5A created");	
	}
	
	if(DialogueDad5B == true)
	{		
		instance_destroy(obj_DadTextHelp2);
		instance_create_depth(1550, 1850, -6, obj_DadText5B);		
		show_debug_message("Dialogue 5B created");	
	}
	
	if(DialogueDad5C == true)
	{		
		instance_destroy(obj_DadTextHelp2);
		instance_create_depth(1550, 1850, -6, obj_DadText5C);		
		show_debug_message("Dialogue 5C created");	
	}
	
	if(DialogueDad6A == true)
	{		
		instance_destroy(obj_DadText5A);
		instance_create_depth(1550, 1500, -7, obj_DadText6A);		
		show_debug_message("Dialogue 6A created");	
		obj_player.inConvoDad = false;	
	}
	
	if(DialogueDad6B == true)
	{		
		instance_destroy(obj_DadText5B);
		instance_create_depth(1550, 1500, -7, obj_DadText6B);		
		show_debug_message("Dialogue 6B created");	
		obj_player.inConvoDad = false;	
	}
	
	if(DialogueDad6C == true)
	{		
		instance_destroy(obj_DadText5C);
		instance_create_depth(1550, 1500, -7, obj_DadText6C);		
		show_debug_message("Dialogue 6B created");	
		obj_player.inConvoDad = false;	
	}
	
	if(DialogueDad7 == true)
	{	
		instance_create_depth(1550, 1500, -8, obj_DadText7);		
		show_debug_message("Dialogue 7 created");	
		obj_player.inConvoDad = false;	
	}	
}

if(distance_to_object(obj_player) > 31 && obj_player.inConvoDad == false && DialogueDad3B) //destroy dialogue box when out of range
		{
			instance_destroy(obj_DadText3B);
			show_debug_message("destroy dadtext3b");
		}	
		
if(distance_to_object(obj_player) > 31 && obj_player.inConvoDad == false && DialogueDad6A) //destroy dialogue box when out of range
		{
			instance_destroy(obj_DadText6A);
			DialogueDad6A = false;
			show_debug_message("destroy dadtext6A");
		}		
if(distance_to_object(obj_player) > 31 && obj_player.inConvoDad == false && DialogueDad6B) //destroy dialogue box when out of range
		{
			instance_destroy(obj_DadText6B);
			DialogueDad6B = false;
			show_debug_message("destroy dadtext6B");
		}	
if(distance_to_object(obj_player) > 31 && obj_player.inConvoDad == false && DialogueDad6C) //destroy dialogue box when out of range
		{
			instance_destroy(obj_DadText6C);
			DialogueDad6C = false;
			show_debug_message("destroy dadtext6C");
		}	
		
if(distance_to_object(obj_player) > 31 && obj_player.inConvoDad == false && DialogueDad7) //destroy dialogue box when out of range
		{
			instance_destroy(obj_DadText7);
			DialogueDad7 = false;
			show_debug_message("destroy dadtext7");
		}	

