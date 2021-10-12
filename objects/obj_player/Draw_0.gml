/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_color(c_black); //makes the font black
draw_text(x_follow + cam_width - 100, y_follow + cam_height - 800, "Money: $" + string(GameManager.money)); //draws the player's money at the top right of the screen
