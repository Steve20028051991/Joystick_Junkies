
if sprite_index = sCorpse{
	global.playerLives = global.playerLives
	global.playerScore = global.playerScore +1
}
else{
	global.playerLives--;
}
instance_destroy();