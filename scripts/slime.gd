#por tudo que é mais sagrado, não mexa aqui
extends CharacterBody2D
var _on_area: bool = false

func _on_area_2d_body_entered(body):
	_on_area = true

func _dialog(event: InputEvent):
	if Dialogic.current_timeline != null:
		return
	if _on_area == true:
		_input(event)
func _input(event: InputEvent):
	if Dialogic.current_timeline != null:
		return
	if event is InputEventKey and event.keycode == KEY_ENTER and event.pressed:
		Dialogic.start('introdução')
		get_viewport().set_input_as_handled()
		

		

