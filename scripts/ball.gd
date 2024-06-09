extends CharacterBody2D

@export var speed: float = 100.00

func _ready() -> void:
	velocity.x = [-1, 1][randi() % 2] # Stole this from youtube. Basically just grabs either 1 or -1. Picks left or right at the start
	velocity.y = [-0.8, 0.8][randi() % 2]

func _physics_process(delta: float) -> void:
	var collision_object: KinematicCollision2D = move_and_collide(velocity * speed * delta)
	if collision_object:
		velocity = velocity.bounce(collision_object.get_normal())

func reset():
	position = Vector2(-2, -2)
	velocity.x = [-1, 1][randi() % 2] # Stole this from youtube. Basically just grabs either 1 or -1. Picks left or right at the start
	velocity.y = [-0.8, 0.8][randi() % 2]
