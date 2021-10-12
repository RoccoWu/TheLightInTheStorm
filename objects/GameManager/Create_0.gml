/// @description Insert description here
// You can write your code in this editor
player1Score = 0;
player2Score = 0;
gameStart = false;
gameStartTimer = floor(3 * room_speed);
time_since_last_cloud = 0; //timer for when we last spawned a cloud.
time_between_clouds = 30;
global.number_of_clouds = instance_number(obj_cloud);
global.max_clouds = 20; // max number of clouds in the game at a time.
global.minimum_cloud_x_pos = 170; // minimum cloud position on the x axis
global.minimum_cloud_y_pos = 300; //minimum cloud position on the y axis
global.max_cloud_y_pos = 900; //maximum cloud position on the y axis
cloudArray[20] = obj_cloud;
audio_play_sound(snd_lava_flow, 1, true);
shake = false;
shakeRange = 20;
slowmo = false;
slowmoTimer = 1.2* room_speed;
timeSpeed = 1;
audio_play_sound(snd_mustafar, 1, true);