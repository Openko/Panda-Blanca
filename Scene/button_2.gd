extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Langue.id_lang == 0:
		self.text = "Quitter"
	if Langue.id_lang == 1:
		self.text = "Marxar"
	pass


func _on_pressed():
	get_tree().quit()
	pass # Replace with function body.
