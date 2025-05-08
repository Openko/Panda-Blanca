extends Node2D

@export var VillageMusic = false 
@export var JungleMusic = false 


# Called when the node enters the scene tree for the first time.
func _ready():
	$Music/Jungle.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	musicchange()
	pass


func musicchange():
	
	pass



func _on_area_jungle_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	
	$Music/Jungle.play()
	pass # Replace with function body.




func _on_area_village_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):

	pass # Replace with function body.
