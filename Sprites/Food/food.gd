extends Area2D

#checks if it is on food
var mouse_inside = false
var detection_running = true
var inside_microwave = false
@export var texture : Texture2D
@onready var mouse_drag: CollisionShape2D = $mouse_drag
@onready var food_sprite: Sprite2D = $food_sprite
@onready var microwave_detector: Area2D = $microwave_detector


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	collision_layer = 3
	collision_mask = 3

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("left_mouse") and mouse_inside == true:
		position = get_global_mouse_position()
		detection_running = false
		if Input.is_action_just_released("left_mouse") and inside_microwave == true:
			queue_free()

	
func _on_mouse_entered() -> void:
	if detection_running == true:
		#print("mouse entered")
		mouse_inside = true
		

func _on_mouse_exited() -> void:
	mouse_inside = false
	#print("mouse exited")
	detection_running = true
