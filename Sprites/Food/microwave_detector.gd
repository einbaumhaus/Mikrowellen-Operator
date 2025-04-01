extends Area2D


#if 0 it can't drop item into microwave, if 1 it can
var inside_microwave = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("left_mouse") and inside_microwave == 1:
		#print("MAXIMILIAN IS DEAD")
		get_parent().queue_free()

func _on_area_entered(area: Area2D) -> void:
	inside_microwave = 1
	print("microwave_entered")


func _on_area_exited(area: Area2D) -> void:
	inside_microwave = 0
	
