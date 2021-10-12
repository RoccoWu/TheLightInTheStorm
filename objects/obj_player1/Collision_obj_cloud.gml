/// @description Insert description here
// You can write your code in this editor
if(vspeed > 0 && gotstomped == false)
{	
	bounced = true;
	falling = false;
	vspeed = -15;	
	other.alive = false;
	audio_play_sound(snd_jump, 1, false);
}