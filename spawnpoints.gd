extends Node2D

#spawn managment
@onready var spawn_object = preload("res://Sprites/Food/food.tscn")
var spawn_count = 0
@onready var sp1: Marker2D = $spawnpoint
@onready var sp2: Marker2D = $spawnpoint2
@onready var sp3: Marker2D = $spawnpoint3
@onready var sp4: Marker2D = $spawnpoint4


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn():
	var obj = spawn_object.instantiate()
	if not sp1.filled:
		add_child(obj)
		obj.position = sp1.position
	elif not sp2.filled:
		add_child(obj)
		obj.position = sp2.position
	elif not sp3.filled:
		add_child(obj)
		obj.position = sp3.position
	elif not sp4.filled:
		add_child(obj)
		obj.position = sp4.position
	else: 
		check_full_list()
		
func check_full_list():
	var obj = spawn_object.instantiate()
	if not sp1.filled:
		add_child(obj)
		obj.position = sp1.position



func _on_spawn_food_pressed() -> void:
	spawn()

func _on_area_sp_1_area_entered(area: Area2D) -> void:
	sp1.filled = true
	print("SP1 FILLED")
func _on_area_sp_2_area_entered(area: Area2D) -> void:
	sp2.filled = true
	print("SP2 FILLED")
func _on_area_sp_3_area_entered(area: Area2D) -> void:
	sp3.filled = true
	print("SP3 FILLED")
func _on_area_sp_4_area_entered(area: Area2D) -> void:
	sp4.filled = true
	print("SP4 FILLED")

#Object isn't inside of spawnpoint = Empty
func _on_area_sp_1_area_exited(area: Area2D) -> void:
	sp1.filled = false
	print("SP1 EMPTY")
func _on_area_sp_2_area_exited(area: Area2D) -> void:
	sp2.filled = false
	print("SP2 EMPTY")
func _on_area_sp_3_area_exited(area: Area2D) -> void:
	sp3.filled = false
	print("SP3 EMPTY")
func _on_area_sp_4_area_exited(area: Area2D) -> void:
	sp4.filled = false
	print("SP4 EMPTY")
