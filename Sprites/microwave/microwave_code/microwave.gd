extends Area2D

#textures
@onready var collision: CollisionShape2D = $CollisionShape2D
@onready var microwave_sprite: Sprite2D = $microwave_sprite
@export var texture_normal : Texture2D
@export var texture_hoover : Texture2D
@export var texture_cooking : Texture2D

#if 0 it's not cooking, if 1 it's cooking
var cooking_state = 0

#checks if it's inside, 0 = no, 1 = yes
var inside = 0

func _ready() -> void:
		collision_layer = 2
		collision_mask = 2

func _process(delta: float) -> void:
	if Input.is_action_just_released("left_mouse") and inside == 1:
		cooking_state = 1
		print("cooking")
		monitorable = false
	else:
		pass
	if cooking_state == 1:
		microwave_sprite.texture = texture_cooking

func _on_area_entered(area: Area2D) -> void:
	inside = 1
	microwave_sprite.texture = texture_hoover
	print("microwave_entered")

func _on_area_exited(area: Area2D) -> void:
	inside = 0
	if cooking_state == 0:
		microwave_sprite.texture = texture_normal
	else:
		pass
	print("microwave_exited")

	
