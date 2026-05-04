extends Control

@onready var score_view = $Label

func _process(delta):
	score_view.text = "Score : " + str(Global.score)
