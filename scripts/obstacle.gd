extends Area2D

const scrollSpeed = 200
func _process(delta):
	position.y += scrollSpeed * delta

func _on_body_entered(body):
	if body.name == "Car":
		Global.score -= 5
		self.queue_free()
