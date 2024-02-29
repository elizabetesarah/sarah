extends CharacterBody2D
var grav = 10
var speed = 200

func _process(delta):
	if !is_on_floor():
		velocity.y += grav
	if Input.is_action_pressed("right"):
		velocity.x = speed
		$pato.flip_h = false
	elif Input.is_action_pressed("Left"):
		velocity.x = -speed
		$pato.flip_h = true
	else:
		velocity.x = 0	
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y -= 300
	move_and_slide()
