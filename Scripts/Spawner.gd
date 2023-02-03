extends Position2D

var box = preload("res://Scenes/Box.tscn")
var stone = preload("res://Scenes/Stone.tscn")
export var min_pos: float
export var max_pos: float

func _on_Timer_timeout():
	if (Global.gameover == false):
		randomize()
		$"../Timer".wait_time = rand_range(1, 4)
		
		var rand_num = rand_range(0, 100)
		var obj
		if(rand_num < 50):
			obj = box.instance()
			var pos_y = rand_range(max_pos, min_pos)
			obj.position = Vector2(self.position.x, pos_y)
		else:
			obj = stone.instance()
			obj.position = Vector2(self.position.x, min_pos)
		
		
		get_parent().add_child(obj)
