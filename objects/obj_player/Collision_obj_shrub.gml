/// @description Insert description here
// You can write your code in this editor
if(obj_player.y > obj_shrub.y) //coming from bottom
{
	depth = 0;	
	//show_debug_message("coming from bottom");
}

if(obj_player.y < obj_shrub.y) //coming from top
{
	depth = 1000;	
	//show_debug_message("coming from top");
}