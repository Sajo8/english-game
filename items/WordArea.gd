extends Area2D

func _on_WordArea_body_entered(body: Node) -> void:
	if body.name != "Player":
		return

	var last_number
	var words = get_tree().get_nodes_in_group("word")
	if words:
		last_number = words[-1].name[-1]
		for word in words:
			if word.name[-1] == name[-1]:
				word.fade()

	var memes = get_tree().get_nodes_in_group("meme")
	if memes:
		if name[-1] == last_number:
			for meme in memes:
				meme.fade()
