extends Control


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Score.text = "Score: " + str(int(Global.score))
	
	if(Global.gameover == true):
		$GameOverContainer.visible = true


func _on_ButtonPlayAgain_pressed():
	Global.gameover = false
	Global.score = 0
	get_tree().reload_current_scene()


func _on_ButtonMenu_pressed():
	Global.gameover = false
	Global.score = 0
	get_tree().change_scene("res://Scenes/Menu.tscn")
