extends CharacterBody2D
@export var speed = 125
@onready var animations = $AnimationPlayer
@export_category("Objects")

@export var Inventory: Inventory

var heart : int = 4
var contato = false

#movimentação
func _handleInput():
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down" )
	velocity = moveDirection*speed
	
func _updateAnimation():
	var direction = "Down"
	if velocity.length() == 0:
		animations.play("Idle" + direction)
		animations.stop()
	else :
		if velocity.x < 0: direction = "Left"
		if velocity.x > 0: direction = "Right"
		elif velocity.y < 0: direction = "Up"

		animations.play("Walk" + direction)
func _physics_process(_delta): 
#define direção
	_handleInput()
	_updateAnimation()
	move_and_slide()
	aplly_push_force()
#força de empurrar o objeto
func aplly_push_force():
	for objects in get_slide_collision_count():
		var colision = get_slide_collision(objects)
		if colision.get_collider() is Puxaveis:
			colision.get_collider().slide_objetc(-colision.get_normal())
		












		



