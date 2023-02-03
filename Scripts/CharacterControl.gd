extends KinematicBody2D

var speed : Vector2
export var jumpForce : float = -500
export var gravity = Vector2(0, 10)
var jump = Input.is_action_just_pressed("jump")
var is_exec_anim = false
var jumpAudioIsPlayed = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Global.gameover == false):
		jump = Input.is_action_just_pressed("jump")
		speed += gravity
		
		if(self.is_on_floor()):
			if(jump == true):
				speed.y = jumpForce
				$AnimationPlayer.play("Jump")
				$"../JumpAudio".play(0)
				
			else : 
				$AnimationPlayer.play("Run")
			
		self.move_and_slide(speed, Vector2.UP)
	else:
		if(is_exec_anim == false):
			$AnimationPlayer.play("Death")
			is_exec_anim = true
