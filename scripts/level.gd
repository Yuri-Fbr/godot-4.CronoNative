extends TileMap

func _ready() -> void:
	Dialogic.start('Epílogo')
	get_viewport().set_input_as_handled()
