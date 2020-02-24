extends Label

export var dark := true

func _ready() -> void:
	if dark:
		set_theme(load("res://GUI/themes/DarkLabelMid.tres"))
	else:
		set_theme(load("res://GUI/themes/WhiteLabelMid.tres"))

func fade() -> void:
	$AnimationPlayer.play("fade")
	yield($AnimationPlayer, "animation_finished")
