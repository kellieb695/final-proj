extends KinematicBody

var position = self.position
func _physics_process(delta):
	var direction = Vector3.ZERO
	if Input.is_action_pressed("move_right"):
		position = Vector3(10,0,10)
	if Input.is_action_pressed("move_left"):
		position = Vector3(10,0,10)
	if Input.is_action_pressed("move_back"):
		position = Vector3(10,0,10)
	if Input.is_action_pressed("move_forward"):
		position = Vector3(10,0,10)
