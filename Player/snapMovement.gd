extends KinematicBody

func _physics_process(delta):
	if Input.is_action_just_released("move_right"):
			global_translate(Vector3(2,-2,0))
	if Input.is_action_just_released("move_left"):
			global_translate(Vector3(-2,2,0))
			
	if Input.is_action_just_released("move_forward"):
			global_translate(Vector3(0,2,-2))
	if Input.is_action_just_released("move_back"):
			global_translate(Vector3(0,-2,2))
