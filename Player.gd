extends KinematicBody

export var speed = 10.0
export var jump_impulse = 2.0
export var fall_acceleration = 1.0

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
	
	if is_on_floor() and Input.is_action_just_released("jump"):
		velocity.y += jump_impulse
		
	
	velocity.y -= fall_acceleration * delta
	velocity = move_and_slide(velocity, Vector3.UP)
