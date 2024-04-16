extends CharacterBody2D


const speed = 800.0
var ball

func _ready():
	ball = get_parent().find_child("Ball")
	
func _physics_process(delta):
	var move_to = _get_direccion()
	velocity.y += move_to * speed

	move_and_slide()

func _get_direccion():
	var dif = ball.position.y - position.y
	if abs(dif) > 60:
		if dif >= 1:
			return 1
		elif dif <= -1:
			return -1
	else:
		return 0
