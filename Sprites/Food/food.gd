extends Area2D

#checks if it is on food
var inside = 0

var detection_running = true
@export var texture : Texture2D
@onready var mouse_drag: CollisionShape2D = $mouse_drag
@onready var food_sprite: Sprite2D = $food_sprite
@onready var food_2: Area2D = $"."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	food_sprite.texture = texture

@onready var spawn_object = preload("res://Sprites/Food/food.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("left_mouse") and inside == 1:
		position = get_global_mouse_position()
		detection_running = false
		mouse_drag.disabled = false
		if Input.is_action_just_released("left_mouse"):
			mouse_drag.disabled = true

func _on_mouse_entered() -> void:
	if detection_running == true:
		print("mouse entered")
		inside = 1

func _on_mouse_exited() -> void:
	inside = 0
	print("mouse exited")
	detection_running = true
