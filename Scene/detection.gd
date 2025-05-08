extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_detect_body_entered(body):
	
	if body.get_name() == "Player" && Langue.game_step ==1:
		get_parent().get_node("Player").get_node("Illu1").visible = true
		get_parent().get_node("Bambou").visible = false
		Langue.game_step = 2
		await get_tree().create_timer(3.0).timeout
		get_parent().get_node("Player").get_node("Illu1").visible = false
		print("trigger zone")
		
		
	pass # Replace with function body.
