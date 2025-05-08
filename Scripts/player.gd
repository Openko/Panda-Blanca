extends CharacterBody2D

signal MusicJungle
signal MusicVillage 




const SPEED = 400.0
const JUMP_VELOCITY = -850.0

@onready var animated_sprite_2D = $AnimatedSprite2D

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		if Langue.game_step != 2:
			animated_sprite_2D.play("Jump")
		if Langue.game_step == 2:
			animated_sprite_2D.play("Jump2")

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("Left", "Right")
	
	if direction > 0:
		animated_sprite_2D.flip_h = false
	elif direction < 0:
		animated_sprite_2D.flip_h = true
		
	if direction == 0 && is_on_floor() && Langue.game_step != 2:
		animated_sprite_2D.play("Idle")
	elif direction != 0 && is_on_floor() && Langue.game_step != 2:
		animated_sprite_2D.play("Move")
	
	if direction == 0 && is_on_floor() && Langue.game_step == 2:
		animated_sprite_2D.play("Idle2")
	elif direction != 0 && is_on_floor() && Langue.game_step == 2:
		animated_sprite_2D.play("Move2")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_area_village_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	MusicVillage.emit()

	pass # Replace with function body.


func _on_area_jungle_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	MusicJungle.emit()
	pass # Replace with function body.
