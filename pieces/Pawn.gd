extends KinematicBody

signal piece_selected
var mouseDown = false

func _ready():
	connect("piece_selected", get_parent(), "select_piece", [self])

func _on_Pawn_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if mouseDown:
			emit_signal("piece_selected")
			mouseDown = false
		else:
			mouseDown = true
