extends GridMap

const Cube = preload("res://facesScenes/cubefaces.tscn")
const Player = preload("res://player/Player.tscn")

const StairB = preload("res://facesScenes/stairfacesB.tscn")
const StairA = preload("res://facesScenes/stairfacesA.tscn")
const StairD = preload("res://facesScenes/stairfacesD.tscn")
const StairC = preload("res://facesScenes/stairfacesC.tscn")
const StairE = preload("res://facesScenes/stairfacesE.tscn")
const StairF = preload("res://facesScenes/stairfacesF.tscn")

var OGgridmap = self

func _ready():
	

	var cubes = get_used_cells_by_id(0)
	var player = get_used_cells_by_id(4)
	
	var stairB = get_used_cells_by_id(1)
	var stairA = get_used_cells_by_id(2)
	var stairD = get_used_cells_by_id(3)
	var stairC = get_used_cells_by_id(5)
	var stairE = get_used_cells_by_id(6)
	var stairF = get_used_cells_by_id(7)
	
	print(cubes)
	
	basicTileReplace(cubes, Cube)
	playerTileReplace(player, Player)
	
	basicTileReplace(stairB, StairB)
	basicTileReplace(stairA, StairA)
	basicTileReplace(stairD, StairD)
	basicTileReplace(stairC, StairC)
	basicTileReplace(stairE, StairE)
	basicTileReplace(stairF, StairF)
	


func get_used_cells_by_id(id: int):
	var array = []
	var cells = get_used_cells()
	for i in cells:
		if (get_cell_item(i.x, i.y, i.z) == id):
			array.append(i)
	return array
	
func playerTileReplace(cellArr: Array, inst):
	var cellPos = Vector3()
	for i in cellArr:
		var newObject = newObject(i, cellPos, inst)
		newObject.myGridMap = OGgridmap

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
	
	
func _process(delta):
	if Input.is_action_just_released("flip_world_cw"):
		var facing_vector = Vector3(1,1,1).normalized()
		transform.basis = transform.basis.rotated(facing_vector, 2 * PI / 3)
		
	if Input.is_action_just_released("flip_world_ccw"):
		var facing_vector = Vector3(1,1,1).normalized()
		transform.basis = transform.basis.rotated(facing_vector, -2 * PI / 3)
		
	if Input.is_action_just_released("restart"):
		get_tree().reload_current_scene()
