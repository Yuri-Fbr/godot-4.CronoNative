extends Area2D

var entered = false
func _on_body_entered(body: CharacterBody2D):
	entered = true
	
func _on_body_exited(body):
	entered = false 
	
func _process(delta):
	if entered == true:
		get_tree().change_scene_to_file("res://scenes/outerscene_2.tscn")
