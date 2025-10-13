extends Node3D

func ready():
	# Connect the animation_finished signal
	get_node("AnimationPlayer").play("door_open")
