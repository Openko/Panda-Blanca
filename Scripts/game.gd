extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Music/Jungle.play()
	get_node("Player").get_node("Illu2").visible = true
	await get_tree().create_timer(3.0).timeout
	get_node("Player").get_node("Illu2").visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Echap"):
		get_tree().quit()
	pass
