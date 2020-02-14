extends Node2D

func _ready():
	# Set camera limit to the position of the last tile in the level
	$Player/Camera2D.limit_right = 4950

	# Set spawn coords for the sublevel at the starting
	Globals.red_respawn_position = Vector2(202, 1953)
	# If they just died, then set spawn coords at the start
	if Globals.player_died:
		Globals.blue_respawn_position = Vector2(374, 677)
		Globals.player_died = false

	# Set the player position to newly assigned spawn coords
	var player = get_tree().get_nodes_in_group("player")
	if player:
		if Globals.blue_respawn_position != Vector2():
			player[0].position = Globals.blue_respawn_position
