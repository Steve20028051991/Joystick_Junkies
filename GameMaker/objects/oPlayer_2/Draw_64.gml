for (var i = 0; i < global.playerLives; i++)
{
    // Spacing: 20 is the start X, i*24 provides the gap between icons
    draw_sprite(sLives, 0, 40 + i * 24, 30);
}
draw_text_color(40,50,$"SCORE : {global.playerScore}", c_white, c_white, c_white, c_white, 1);
draw_text_color(40,70,$"ENERGY: {global.energy}%", c_white, c_white, c_white, c_white, 1);
for (var i = 0; i < global.keysCollected; i++)
{
    // Spacing: 20 is the start X, i*24 provides the gap between icons
    draw_sprite(sKey, 0, 40 + i * 24, 90);
}
