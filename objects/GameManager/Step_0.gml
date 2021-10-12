/// @description Insert description here
// You can write your code in this editor
alarm[0] = gameStartTimer--;
//show_debug_message(player1Score);
//show_debug_message(player2Score);

global.number_of_clouds = instance_number(obj_cloud);
time_since_last_cloud ++; //increase the timer since we last spawned a cloud

if(time_since_last_cloud > time_between_clouds || global.number_of_clouds< 5) //checks between the time since cloud was last spawn or if there are less than 4 clouds
{
	if(global.number_of_clouds	< global.max_clouds) // max clouds is 20 so if there are less than 20 than run
	{
	var cloudCandidatePos =	instance_create_depth(random_range(global.minimum_cloud_x_pos, room_width), random_range(global.minimum_cloud_y_pos, room_height), 1, obj_cloud); //creates the cloud
	
	with(cloudCandidatePos) //with each cloud created try to make them not overlap
	{
		var attempts = 0;
		//show_debug_message("Before clouds");
		while(instance_place(cloudCandidatePos.x, cloudCandidatePos.y, obj_cloud) && attempts < 100) //attempt numbers so it optimizes performance
		{
			show_debug_message("Clouds");			
			x = random_range(global.minimum_cloud_x_pos, room_width); //can create clouds from this x range
			y = random_range(global.minimum_cloud_y_pos, global.max_cloud_y_pos); // can create clouds from this y range
			attempts++;
		}	
		
	}
		
		//global.number_of_clouds++; //once a cloud is created add one cloud to the number of clouds in the game currently
		//cloudArray[global.number_of_clouds--] = obj_cloud;
		if(global.number_of_clouds > 0)
		{
			cloudArray[global.number_of_clouds - 1] = cloudCandidatePos;
		}
		
		time_since_last_cloud = 0;
		
	}
}

var i = 0;
for(;i < global.number_of_clouds; i +=1 )
{
	if(!instance_exists(cloudArray[i]))continue;
	if (cloudArray[i].y > camera_get_view_height(view_camera[0]))
	{		
		//then destroy array[clouds]
		//instance_destroy(cloudArray[i]);		
	}
	
}


global.number_of_clouds = instance_number(obj_cloud); //set the amount of clouds equal to how much they have in the room 

if(obj_cloud.y > camera_get_view_height(view_camera[0]))
{
	//instance_destroy();
}

//if(instance_number(obj_cloud) < 20)
//{
//	instance_create_depth(random_range(170, 1100), random_range(316, 896), 1, obj_cloud)
//}

/*if(obj_player1.y < room_height/2 || obj_player2.y < room_height/2)
{
	
}*/

effect_create_below(ef_rain, obj_player1.x, obj_player1.y, 1, c_orange);

if(obj_player1.gotstomped)
{
	GameManager.shake = true;
	alarm[1] = 30;	
}

else if(obj_player2.gotstomped)
{
	GameManager.shake = true;
	alarm[1] = 30;	
}

if(shake)
{
	camera_set_view_pos(view_camera[0],Camera.x + random_range(-shakeRange, shakeRange), Camera.y_follow + random_range(-shakeRange, shakeRange));	
}

if(slowmo)
{
	timeSpeed = 0.2;	
	slowmoTimer--;
	show_debug_message("enter slowmo");
}

if(slowmoTimer == 0)
{
	slowmo = false;
	slowmoTimer = 1 * room_speed;	
	timeSpeed = 1;
	show_debug_message("exit slowmo");
}