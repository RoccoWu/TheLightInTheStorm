/// @description Insert description here
// You can write your code in this editor
startimer--;
if(startimer = 0)
{
	instance_destroy(id);	
	show_debug_message("star destroyed");
}