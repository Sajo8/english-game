extends Control

export var scene: PackedScene

func _ready() -> void:
	# Maximise window
	OS.set_window_maximized(true)
	# Focus on the Play button on start
	$VBoxContainer/Play.grab_focus()

	Globals.add_powerup("double_jump")

func _on_Play_pressed() -> void:
	# Fade in, and go to Level1
	$AnimationPlayer.play("fade_in")
	yield($AnimationPlayer, "animation_finished")

	get_tree().change_scene(scene.get_path())

func _on_Kahoot_pressed() -> void:
	OS.shell_open("https://kahoot.com")
