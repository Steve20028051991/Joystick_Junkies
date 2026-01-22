for (var i = 0; i < playerLives; i++)
{
    // Spacing: 20 is the start X, i*24 provides the gap between icons
    draw_sprite(sLives, 0, 20 + i * 24, 30);
}
draw_text_color(40,50,$"SCORE : {playerScore}", c_white, c_white, c_white, c_white, 1);