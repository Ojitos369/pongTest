extends CharacterBody2D


const SPEED = 600.0

func _physics_process(delta):
	var direction = Input.get_axis("ui_up", "ui_down")
	velocity.y = direction * SPEED

	move_and_slide()
