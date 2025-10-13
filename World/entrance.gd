extends Node3D

var nearDoor = false
@onready var label = $PressFLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Area3D.body_entered.connect(_on_body_entered)
	$Area3D.body_exited.connect(_on_body_exited)
	label.visible = false


func _on_body_entered(body):
	if body.name == "Player":  # adjust if your player node has a different name
		nearDoor = true
		label.visible = true

func _on_body_exited(body):
	if body.name == "Player":
		nearDoor = false
		label.visible = false

func _process(_delta: float) -> void:
	if nearDoor and Input.is_action_just_pressed("interact"):
		get_tree().change_scene_to_file("res://World/door_scene.tscn")
