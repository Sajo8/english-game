extends Area2D

func _on_VideoArea_body_entered(body: Node) -> void:
	if body.name != "Player":
		return

	var videos = get_tree().get_nodes_in_group("video")
	if videos:
		var video = videos[0]
		video.fade()
		video.play()
		yield(video, "finished")
