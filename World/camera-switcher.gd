extends Area3D

@export var cameras: Array[Camera3D]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func PlayerEntered(body):
	if body.name == "Player":
		for i in range(0, cameras.size()):
			cameras[i].current = false
		get_parent().current = true


func _on_body_entered(body: Node3D) -> void:
	pass # Replace with function body.
