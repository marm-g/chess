extends StaticBody

var mouseDown = false
signal tile_selected

func _ready():
	connect("tile_selected", get_parent(), "select_tile", [self])

func _on_Tile_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		# TODO: this doesn't work if you select a tile, then drag away
		if mouseDown:
			emit_signal("tile_selected")
			mouseDown = false
		else:
			mouseDown = true
