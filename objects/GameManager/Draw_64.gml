/// @description Insert description here
// You can write your code in this editor

draw_set_font (font_score); //sets the font
draw_set_color(c_blue); //makes the player one font blue
draw_text(window_get_width() -1100, window_get_height() - 650, string(GameManager.player1Score)); //draws player one's score at the top left of the screen

draw_set_color(c_red); //makes the player one font red
draw_text(window_get_width() - 150, window_get_height() - 650, string(GameManager.player2Score)); //draws player two's score at the top left of the screen