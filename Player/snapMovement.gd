extends KinematicBody
var gridMapAroundMe:GridMap = null
var myCurrentCell:Vector3 = Vector3()
var targetCell

var move_rightVec = Vector3(2,-2,0)
var move_leftVec = Vector3(-2,2,0)
var move_forwardVec = Vector3(0,2,-2)
var move_backVec = Vector3(0,-2,2)

func _physics_process(delta):
	if Input.is_action_just_released("move_right"):
			print(gridMapAroundMe)
			targetCell = myCurrentCell + move_rightVec
			#if targetCell.is
			global_translate(move_rightVec)
			targetCell = myCurrentCell + move_rightVec
	if Input.is_action_just_released("move_left"):
			global_translate(move_leftVec)
			
	if Input.is_action_just_released("move_forward"):
			global_translate(move_forwardVec)
	if Input.is_action_just_released("move_back"):
			global_translate(move_backVec)
