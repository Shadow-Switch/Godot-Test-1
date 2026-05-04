extends CharacterBody2D

const speed = 400

func _physics_process(delta):
	# 키보드 누를 때
	if Input.is_action_pressed("위"):
		velocity.y = -speed
	if Input.is_action_pressed("아래"):
		velocity.y = +speed
	if Input.is_action_pressed("왼쪽"):
		velocity.x = -speed
	if Input.is_action_pressed("오른쪽"):
		velocity.x = +speed
	
	# 키보드 땔 때
	if Input.is_action_just_released("위"):
		velocity.y = 0
	if Input.is_action_just_released("아래"):
		velocity.y = 0
	if Input.is_action_just_released("왼쪽"):
		velocity.x = 0
	if Input.is_action_just_released("오른쪽"):
		velocity.x = 0
	
	 #도로 밖을 벗어나지 못하게 막기
	# 좌우 도로 (380 - 650)
	if position.x < 380:
		position.x = 380
	elif position.x > 650:
		position.x = 650
	# 상하 도로 (33 - 910)
	if position.y < 33:
		position.y = 33
	elif position.y > 910:
		position.y = 910
	move_and_slide()
