extends Sprite

func fade() -> void:
	$AnimationPlayer.play("fade")
	yield($AnimationPlayer, "animation_finished")
