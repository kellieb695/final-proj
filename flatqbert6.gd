extends Spatial


func _process(_delta):
	if Input.is_action_just_released("flip_world_cw"):
		rotation_degrees.y += 120
		#rotation_degress z(deg2rad(120))
	if Input.is_action_just_released("flip_world_ccw"):
		rotation_degrees.y -= 120
		#rotate_z(deg2rad(-120))
