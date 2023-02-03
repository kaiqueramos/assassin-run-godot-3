extends Node

var score = 0
var gameover = false
var file = "user://record.save"
var record

func _ready():
	self.load_record()

func load_record():
	var f = File.new()
	if (f.file_exists(file)):
		f.open(file, File.READ)
		record = f.get_var()
		f.close()
	else:
		record = 0
		
func save_record():
	var f = File.new()
	f.open(file, File.WRITE)
	f.store_var(record)
	f.close()
