/// @description Insert description here
// You can write your code in this editor


if (knocked_out) return;
if(y < other.y + 0.2 ) //higher than the other player
{
	canStomp = true;	
}

else
{
	canStomp = false;	
}
if (canStomp && canaddscore) //if player 2 is above player 1 then add score
{
	vspeed = -25 * GameManager.timeSpeed;
	canaddscore = false;
    GameManager.player2Score ++;
	audio_play_sound(snd_stomp, 1, false);
	
}
if ( gotstomped == false && y > other.y) 
{
  canStomp = false;
  gotstomped = true;
  //GameManager.player2Score--;
  instance_create_depth(x,y,1,obj_stars);
  GameManager.shake = true;
  GameManager.slowmo = true;
} 

if( y == other.y)
{
	gotstomped = false;
	show_debug_message("nothing happens");
}