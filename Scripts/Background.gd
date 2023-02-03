extends Sprite

export var speed : float;

var xpos = 0.0;
var width;

# Called when the node enters the scene tree for the first time.
func _ready():
	width = self.texture.get_width();


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Global.gameover == false):
		xpos += 1.0 * speed;
	
		if(xpos >= width):
			xpos = 0;
	
		self.region_rect.position = Vector2(xpos, 0);
