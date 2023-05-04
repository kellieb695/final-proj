extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("flip_world_cw"):
		rotation_degrees.y += 90
		rotation_degrees.z += 90
	if Input.is_action_just_released("flip_world_ccw"):
		rotation_degrees.x += 90
		rotation_degrees.z += 90
