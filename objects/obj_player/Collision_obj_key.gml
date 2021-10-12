/// @description Insert description here
// You can write your code in this editor
GameManager.haveKey = true;
instance_destroy(obj_key); //destroys key upon contact
audio_play_sound(snd_key_pickup, 1, false);