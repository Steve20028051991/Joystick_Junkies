/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 54F459A9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "oEnemy"
/// @DnDSaveInfo : "object" "oEnemy"
var l54F459A9_0 = instance_place(x + 0, y + 0, [oEnemy]);if ((l54F459A9_0 > 0)){	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 1CBCFE90
	/// @DnDApplyTo : {oPlayerlives}
	/// @DnDParent : 54F459A9
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(oPlayerlives) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;__dnd_lives += real(-1);
	}}