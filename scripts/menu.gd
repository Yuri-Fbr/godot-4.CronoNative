extends Control
class_name MainMenu
var has_saved: bool = false

func _ready() -> void:
	#verifica se há algum save, caso não tiver, o botão "continue"
	# será desabilitado.
	if has_saved == false:
		$ButtonsContainer/continue.disabled = true
		$ButtonsContainer/continue/shadow.hide()
	#ação que será feita quando algum botão da do grupo button for precionado
	for _button in get_tree().get_nodes_in_group("button"):
		_button.pressed.connect(_on_button_pressed.bind(_button))

#função do button
func _on_button_pressed(_button : Button) -> void:
	#fará algo diferente com base no nome
	match _button.name:
		"new_game":
			get_tree().change_scene_to_file("res://scenes/jogo.tscn")
		
		"continue":
			pass
			
		"quit":
			get_tree().quit()
		
		



