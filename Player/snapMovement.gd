extends KinematicBody
var myGridMap:GridMap = null
var myStartingCell = Vector3(-3,5,-3)
var myCurrentCell:Vector3 = Vector3(-5,3,0)
var targetCell
var targetID

var move_rightVec = Vector3(2,-2,0)
var move_leftVec = Vector3(-2,2,0)
var move_forwardVec = Vector3(0,2,-2)
var move_backVec = Vector3(0,-2,2)

func _physics_process(delta):
	
	if Input.is_action_just_released("move_right"):
			#print(myGridMap)
			#print(myStartingCell)
			#print("My current cell:", myCurrentCell)
			#print("My target cell:", targetCell)
			targetCell = myCurrentCell + move_rightVec
			targetID = myGridMap.get_cell_item(targetCell.x, targetCell.y, targetCell.z)
			#print("My target cell ID:", targetID)
			if ((targetID == 1) or (targetID == 7) or (targetID == -1)):
				global_translate(move_rightVec) #literal movement
				myCurrentCell += move_rightVec
			
	if Input.is_action_just_released("move_left"):
			
			targetCell = myCurrentCell + move_leftVec
			if ((targetID == 1) or (targetID == 7) or (targetID == -1)):
				global_translate(move_leftVec) #literal movement
				myCurrentCell += move_leftVec
			
	if Input.is_action_just_released("move_forward"):
			targetCell = myCurrentCell + move_forwardVec
			if ((targetID == 2) or (targetID == 5) or (targetID == -1)):
				global_translate(move_forwardVec)
				myCurrentCell += move_forwardVec
				
	if Input.is_action_just_released("move_back"):
			targetCell = myCurrentCell + move_backVec
			if ((targetID == 2) or (targetID == 5) or (targetID == -1)):
				global_translate(move_backVec)
				myCurrentCell += move_backVec

			
