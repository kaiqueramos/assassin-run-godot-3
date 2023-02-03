extends Node2D

var gameOverMusicPlayed = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Global.gameover == true && gameOverMusicPlayed == false):
		gameOverMusicPlayed = true
		$GameOverMusic.play(0)
		$MainMusic.stop()
