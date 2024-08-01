extends CharacterBody2D
class_name Puxaveis

const velocidade_de_empurrar = 100.0
var direction: int 
func _physics_process(_delta):
	
	move_and_slide()
	velocity.x = 0
	velocity.y = 0
#funcão para definir a direção	
func slide_objetc(direction):
	velocity.x = direction.x * velocidade_de_empurrar
	velocity.y = direction.y * velocidade_de_empurrar
