extends CharacterBody2D

@export var speed: float  = 300.0
const JUMP_VELOCITY: float = -400.0

func _physics_process(delta):
	var direction: float = Input.get_axis("Up", "Down")
	if direction:
		velocity.y = direction * speed
	else:
		velocity.y = move_toward(velocity.y, 0, speed)

	move_and_slide()
