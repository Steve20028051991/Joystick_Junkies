/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 364BD485
/// @DnDArgument : "x" "40"
/// @DnDArgument : "y" "50"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;draw_text(40, 50, string("Score: ") + string(__dnd_score));