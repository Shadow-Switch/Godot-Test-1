extends ParallaxBackground
const scrollSpeed = 200
func _process(delta):
	scroll_offset.y += scrollSpeed * delta
