extends Node

var scene : PackedScene = preload("res://pipes.tscn")

func _ready():
	spawn_pipes()
	
func spawn_pipes():
	var instance = scene.instantiate()
	instance.global_position.x = 1250.0
	add_child(instance)

func _on_timer_timeout():
	spawn_pipes()
