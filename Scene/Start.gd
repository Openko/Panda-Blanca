extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Langue.id_lang == 0:
		self.text = "Commencer"
	if Langue.id_lang == 1:
		self.text = "Començar"
	pass


func _on_pressed():
	get_tree().change_scene_to_file("res://Scene/Game.tscn")
	pass # Replace with function body.
