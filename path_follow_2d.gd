extends PathFollow2D

@onready var spawn_object = preload("res://Sprites/Food/food.tscn")

var progress_rate = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn():
	var obj = spawn_object.instantiate()
	add_child(obj)
	
func _on_spawn_food_pressed() -> void:
	#progress_rate += 0.2
	#progress_rate = progress
	spawn()
