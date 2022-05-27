extends KinematicBody2D

const WALK = 22
const JUMP_IMPULSE = -400
const GRAVITY = 20
var velocity = Vector2(0, 0)
var speed = WALK
var wall_jump = 400
var jump_wall = -400

func get_input():
	
	if Input.is_action_pressed("Run"):
		speed = WALK*1.5
	else:
		speed = WALK

	if Input.is_action_pressed("Right"):
		velocity.x += speed
		$Sprite.play("Walk")
		$Sprite.flip_h = false
	elif Input.is_action_pressed("Left"):
		velocity.x -= speed
		$Sprite.play("Walk")
		$Sprite.flip_h = true
	else:
		$Sprite.play("Idle")

	if Input.is_action_pressed("Drop"):
		pass

	if is_on_floor() and Input.is_action_just_pressed("Jump"):
		$Sprite.play("Hop")
		velocity.y = JUMP_IMPULSE
	if not is_on_floor() and not nextToWall():
			$Sprite.play("Fall")

	if not is_on_floor() and nextToWall():
		velocity.y = 15
		if nextToRightWall():
			$Sprite.play("WallSlide")
			if Input.is_action_just_pressed("Jump"):
				velocity.x -= wall_jump
				velocity.y = jump_wall
		if nextToLeftWall():
			$Sprite.play("WallSlide")
			$Sprite.flip_h = true
			if Input.is_action_just_pressed("Jump"):
				velocity.x += wall_jump
				velocity.y = jump_wall

func _physics_process(delta):
	get_input()
	velocity.y = velocity.y + GRAVITY
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x, 0, 0.2)

func nextToWall():
	return nextToRightWall() or nextToLeftWall()

func nextToRightWall():
	return $RightWall.is_colliding()
	
func nextToLeftWall():
	return $LeftWall.is_colliding()
