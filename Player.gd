extends KinematicBody

export var speed = 10.0

var velocity = Vector3.ZERO

func _physics_process(delta):
	var direction = Vector3.ZERO
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
		
	if Input.is_action_pressed("move_back"):
		direction.z += 1
	if Input.is_action_pressed("move_forward"):
		direction.z -= 1
		
	velocity.x = direction.x * speed
	velocity.z = direction.z * speed
	
	velocity = move_and_slide(velocity, Vector3.UP)
