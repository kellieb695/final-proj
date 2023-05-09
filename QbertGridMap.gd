extends GridMap

const Cube = preload("res://facesScenes/cubefaces.tscn")
const Player = preload("res://player/Player.tscn")
const Stair = preload("res://facesScenes/stairfaces.tscn")


func _ready():
	var cubes = get_used_cells_by_id(0)
	var stair = get_used_cells_by_id(1)
	basicTileReplace(cubes, Cube)
	basicTileReplace(stair, Stair)


func get_used_cells_by_id(id: int):
	var array = []
	var cells = get_used_cells()
	for i in cells:
		if (get_cell_item(i.x, i.y, i.z) == id):
			array.append(i)
	return array
	
func basicTileReplace(cellArr: Array, inst):
	var cellPos = Vector3()
	for i in cellArr:
		var newObject = newObject(i, cellPos, inst)
		
func newObject(cell: Vector3, cellPos: Vector3, inst):
	var newInst = inst.instance()
	cellPos = map_to_world(cell.x, cell.y, cell.z)
	newInst.translation = cellPos
	set_cell_item(cell.x, cell.y, cell.z, -1)
	add_child(newInst)
	return newInst
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("flip_world_cw"):
		var facing_vector = Vector3(1,1,1).normalized()
		transform.basis = transform.basis.rotated(facing_vector, 2 * PI / 3)
		
	if Input.is_action_just_released("flip_world_ccw"):
		var facing_vector = Vector3(1,1,1).normalized()
		transform.basis = transform.basis.rotated(facing_vector, -2 * PI / 3)
