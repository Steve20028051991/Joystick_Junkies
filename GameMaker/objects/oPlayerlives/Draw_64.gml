/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
/// @DnDVersion : 1
/// @DnDHash : 3EB6907B
/// @DnDApplyTo : all
/// @DnDArgument : "var" "lives"
with(all) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;lives = __dnd_lives;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 6215F2D1
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "sprite" "sLives"
/// @DnDSaveInfo : "sprite" "sLives"
var l6215F2D1_0 = sprite_get_width(sLives);var l6215F2D1_1 = 0;if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;for(var l6215F2D1_2 = __dnd_lives; l6215F2D1_2 > 0; --l6215F2D1_2) {	draw_sprite(sLives, 0, 30 + l6215F2D1_1, 10);	l6215F2D1_1 += l6215F2D1_0;}