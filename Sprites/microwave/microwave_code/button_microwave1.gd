extends Button

@onready var upgrade_panel: Control = $"../upgrade_panel"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if upgrade_panel.visible == true:
		upgrade_panel.visible = false
		upgrade_panel.process_mode = Node.PROCESS_MODE_DISABLED
	else:
		upgrade_panel.visible = true
		upgrade_panel.process_mode = Node.PROCESS_MODE_ALWAYS
	
