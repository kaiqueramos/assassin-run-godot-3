extends Area2D

export var speed : float = 10.0
var passed = false

func _process(delta):
	if(Global.gameover == false):
		self.position.x -= speed
		
		if(self.position.x <= -130):
			self.queue_free()
		var character = get_parent().find_node("CHARACTER")
		if(self.position.x < character.position.x && !passed):
			passed = true
			Global.score += 1

func _on_Box_body_entered(body):
	if(body.name == "CHARACTER"):
		Global.gameover = true
		if (Global.record < Global.score):
			Global.record = Global.score
			Global.save_record()
