# TODO(reno): This needs to be not a rigid body.
# They're not good for moving from point A to point B,
# so I think I want a KinematicBody instead.
extends RigidBody
export var isActive = 0

func _input(event):
	if event is InputEventMouseButton:
		print("Mouse click/unclick: ", event.position)


