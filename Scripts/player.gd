extends CharacterBody2D

# Executado a tofo tempo, a cada frame do jogo.
func _process(_delta):
	pass



@export
var speed = 100
var ball
# Assim que o player é criado no jogo, esse metofo e executado.
func _ready():
	ball = get_parent().get_node("Ball")
	
# Executado a todo tempo, a cada quadro fisico do jogo.
func _physics_process(delta):
	velocity.x = 0
	
	if Input.is_action_pressed("ui_left") and ball.started == true:
		velocity.x -= speed
	if Input.is_action_pressed("ui_right") and ball.started == true:
		velocity.x += speed
		
	move_and_collide(velocity * delta) # Delta = Quantidade de tempo passado do ultimo quadro.
	
	
