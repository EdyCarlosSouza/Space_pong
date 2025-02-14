extends CharacterBody2D

var started = false
var start_speed = 500

func _physics_process(_delta):
	
	if Input.is_action_pressed("start") and started == false:
		start_game()
	move_and_collide(velocity * _delta)

func start_game():
	started = true
	velocity.y = -start_speed
