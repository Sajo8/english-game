extends Node

func _ready() -> void:
	pass

func get_scene_path(scene: PackedScene) -> String:
	return scene.get_path()
