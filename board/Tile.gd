extends StaticBody

signal tile_selected

func _ready():
	connect("tile_selected", get_parent(), "select_tile", [self])

func _on_Tile_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		print("emitting")
		emit_signal("tile_selected")
