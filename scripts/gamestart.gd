extends Node2D

func _on_button_pressed():
	Global.score = 0
	get_tree().change_scene_to_file("res://scens/game.tscn")
