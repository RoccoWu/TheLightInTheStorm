 /// @description Insert description here
// You can write your code in this editor

//cam_width = camera_get_view_width(view_camera[0]); //sets cam_width to the viewport width of camera 0
//cam_height = camera_get_view_height(view_camera[0]); //sets cam_height to the viewport height of camera 0


//y_follow = y -cam_height/2; //keeps the viewport center on the height

if(obj_player1.y > camera_get_view_height(view_camera[0]) && obj_player1.y > obj_player2.y) //if player 1 falls off camera range
{
	y_follow = lerp(y_follow, obj_player2.y + 1000, lerpSpeed * GameManager.timeSpeed);
}

else if(obj_player2.y > camera_get_view_height(view_camera[0]) && obj_player2.y > obj_player1.y) //if player 2 falls off camera range
{
	y_follow = lerp(y_follow, obj_player1.y + 1000, lerpSpeed * GameManager.timeSpeed);	
}

else if(obj_player1.y < obj_player2.y) //player 1 on top
{	
	y_follow = lerp(y_follow, (obj_player2.y - obj_player1.y)/2,lerpSpeed * GameManager.timeSpeed); //lerps to a position between player 1 and 2
}

else if(obj_player2.y < obj_player1.y) //player 2 on top
{
	y_follow = lerp(y_follow, (obj_player1.y - obj_player2.y)/2, lerpSpeed * GameManager.timeSpeed); //lerps to a position between player 1 and 2
}

else if(obj_player1.knocked_out && obj_player2.knocked_out)
{
	y_follow = lerp(y_follow, -57, lerpSpeed * GameManager.timeSpeed); //if both players are knocked out then just go to latest y_follow
}
//if players are dead

if(obj_player1.knocked_out == false && obj_player2.knocked_out)
{
	//view_object[0] = obj_player1;
	y_follow = lerp(y_follow, obj_player1.y - 1000, lerpSpeed * GameManager.timeSpeed);	
	//y_follow = clamp(y_follow, -1000, 350);
	show_debug_message("following p1");
}

else if(obj_player1.knocked_out && obj_player2.knocked_out == false)
{
	//view_object[0] = obj_player2;
	y_follow = lerp(y_follow, obj_player2.y - 1000, lerpSpeed * GameManager.timeSpeed);
	//y_follow = clamp(y_follow, -1000, 350);
	show_debug_message("following p2");
}

y_follow = min(y_follow, 315);

//y_follow = clamp(y_follow,0,315); //keeps camera from going off screen
camera_set_view_pos(view_camera[0], 0, y_follow); //camera viewport will always follow the player