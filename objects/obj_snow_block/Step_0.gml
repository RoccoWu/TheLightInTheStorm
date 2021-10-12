/// @description Insert description here
// You can write your code in this editor
if(snowTimer > 90)
{
	audio_play_sound(snd_snow_Shoveling, 1, false);
	instance_destroy(id);	
}