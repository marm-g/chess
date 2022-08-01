extends KinematicBody
export var isActive = 0

var mouseSensitivity:float = 0.3
var camRotX:float = 0.0

func _input(event):
	if event is InputEventMouseButton:
		print("Mouse click/unclick: ", event.position)
	elif event is InputEventMouseMotion:
		# Some basic first person camera code I copied
		rotate_y(deg2rad(-event.relative.x * mouseSensitivity))
		var xDelta = event.relative.y * mouseSensitivity
		if camRotX + xDelta > -90 and camRotX + xDelta < 90:
			$Camera.rotate_x(deg2rad(-xDelta))
			camRotX += xDelta
