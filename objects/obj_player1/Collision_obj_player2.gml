/// @description Insert description here
// You can write your code in this editor


if (knocked_out) return;
if(y < other.y + 0.2) //if higher than player 2
{
	canStomp = true;	
}

else
{
	canStomp = false;	
}
if (canStomp && canaddscore) //if player 1 is above player 2 then add score
{
	vspeed = -25 * GameManager.timeSpeed;
	canaddscore = false;
    GameManager.player1Score ++;
	audio_play_sound(snd_stomp, 1, false);		
}
if (gotstomped == false && y > other.y) 
{
  canStomp = false;
  gotstomped = true;
  //GameManager.player1Score--;
  instance_create_depth(x,y,1,obj_stars);
  GameManager.shake = true;
  GameManager.slowmo = true;
}

if( y == other.y)
{
	gotstomped = false;	
	show_debug_message("nothing happens");
}