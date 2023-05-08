extends KinematicBody

var position = self.position
func _physics_process(delta):
	var direction = Vector3.ZERO
	if Input.is_action_pressed("move_right"):
		position -= 1
		position.y += 1
		position.z -= 1
	if Input.is_action_pressed("move_left"):
		position.x -= 1
		position.y += 1
		position.z -= 1
	if Input.is_action_pressed("move_back"):
		position.x += 1
		position.y += 1	
		direction.z += 1
	if Input.is_action_pressed("move_forward"):
		position.x += 1
		position.y += 1
		position.z -= 1
	
