/// @description Insert description here
// You can write your code in this editor
if(GameManager.haveKey == true)
{
	audio_play_sound(snd_door, 1, false);
	instance_destroy(id); //destroys self
}