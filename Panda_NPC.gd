extends CharacterBody2D

var player
var is_player_in_range = false
@export var dialog_FR_1 : String
@export var dialog_FR_2 : String
@export var dialog_FR_3 : String
@export var dialog_CAT_1 : String
@export var dialog_CAT_2 : String
@export var dialog_CAT_3 : String
@export var dialog_ENG_1 : String
@export var dialog_ENG_2 : String
@export var dialog_ENG_3 : String

func _on_chat_detection_area_body_entered(body):
	if body.get_name() == "Player":
		is_player_in_range = true
	pass # Replace with function body.


func _on_chat_detection_area_body_exited(body):
	if body.get_name() == "Player":
		is_player_in_range = false
		print("exited")
		$DialogBox.visible = false
	pass # Replace with function body.

func _ready():
	print()
	if(Langue.id_lang == 0):
		$DialogBox/Text.text = dialog_FR_1
	elif(Langue.id_lang == 1):
		$DialogBox/Text.text = dialog_CAT_1
	$DialogBox.visible = false

func _process(delta):
	if Input.is_action_just_pressed("interact") && is_player_in_range :
		
		if $DialogBox.visible == false:
			print("coucou")
			$DialogBox.visible = true
		pass
