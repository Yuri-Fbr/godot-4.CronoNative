extends CharacterBody2D
class_name Empurraveis

const velocidade_de_empurrar = 100.0
func _physics_process(_delta):
	
	move_and_slide()
	
	velocity.y = 0
	velocity.x = 0
	
#funcão para definir a direção	
func slide_objetc(direction):
	velocity.x = int(direction.x) * velocidade_de_empurrar
	velocity.y = int(direction.y) * velocidade_de_empurrar
