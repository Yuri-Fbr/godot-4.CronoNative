#Depressao tem nome, e se chama esse código
extends CharacterBody2D

#region Variables
@onready var anim = $Animations
@export var speed: float = 200.0
@export var Inventory: Inventory
var is_moving: bool = false
var Direction: String = "none"
 #endregion
#Start();
func _ready() -> void:
	pass
#Update();
func _process(delta: float) -> void:
	move_and_slide()
	aplly_push_force()
	#region Movement Inputs
	
	

	if Input.is_action_pressed("Left"):
		velocity = Vector2.LEFT * speed
		is_moving = true
		Direction = "Left"
		
	elif Input.is_action_pressed("Right"):
		velocity = Vector2.RIGHT * speed
		is_moving = true
		Direction =  "Right"
	elif Input.is_action_pressed("Up"):
		velocity = Vector2.UP * speed
		is_moving = true
		Direction =  "Up"
		
	elif Input.is_action_pressed("Down"):
		velocity = Vector2.DOWN * speed
		is_moving = true
		Direction =  "Down"
	
	else:
		velocity = Vector2.ZERO
		is_moving = false
	#endregion
	
	#region Animations Update
	
	#Play Walking Animation
	if is_moving == true:
		if Direction == "Left":
			anim.play("Walk_L")
		elif Direction == "Right":
			anim.play("Walk_R")
		elif Direction == "Up":
			anim.play("Walk_U")
		elif Direction == "Down":
			anim.play("Walk_D")
			
	if is_moving == false:
		if Direction == "Left":
			anim.play("Idle_L")
		elif Direction == "Right":
			anim.play("Idle_R")
		elif Direction == "Up":
			anim.play("Idle_U")
		elif Direction == "Down":
			anim.play("Idle_D")
	#endregion
	

#region Pushables
func aplly_push_force():
	for objects in get_slide_collision_count():
		var colision = get_slide_collision(objects)
		if colision.get_collider() is Empurraveis:
			colision.get_collider().slide_objetc(-colision.get_normal())
			
#endregion
