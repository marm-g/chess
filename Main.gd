extends WorldEnvironment

signal movePiece

func _on_BPawn_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		$BPawn.isActive = 1


func _on_Floor_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if $BPawn.isActive == 1:
			$BPawn.position = Vector3(0,0,0)
			$BPawn.isActive = 0
