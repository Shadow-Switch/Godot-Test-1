extends Node

var cupcake = preload("res://scens/cupcake.tscn")
var obstacle = preload("res://scens/obstacle.tscn")

func _on_timer_timeout():
	var cupcake_instance = cupcake.instantiate()
	cupcake_instance.position = Vector2(380 + randi() % 270, -50)
	add_child(cupcake_instance)
	await get_tree().create_timer(0.5).timeout
	var obstacle_instance = obstacle.instantiate()
	obstacle_instance.position = Vector2(380 + randi() % 270, -50)
	add_child(obstacle_instance)

func _process(delta):
	if Global.score < 0:
		get_tree().change_scene_to_file("res://scens/gameover.tscn")
