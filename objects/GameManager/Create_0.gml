/// @description Insert description here
// You can write your code in this editor
gameOver = false; // sets boolean of gameOver state to false
haveKey = false; //sets boolean to track if player has the key
money = 5;
talkingwithDad = false;
PogChampOldLady = false; //bool for if player clears the old lady's pathway
global.boughtSupplies = false;
tookDadMoney = false;
tookOldLadyMoney = false
audio_play_sound(snd_snow,1,true);
audio_stop_sound(music_main);
audio_play_sound(music_snowfall, 1, true);