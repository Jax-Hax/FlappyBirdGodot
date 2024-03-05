extends Node

var scene : PackedScene = preload("res://pipes.tscn")
var rng = RandomNumberGenerator.new()
signal kill_player
signal value_changed(value)

func _ready():
	spawn_pipes()
	
func spawn_pipes():
	var instance = scene.instantiate()
	instance.global_position.x = 1250.0
	instance.global_position.y = rng.randf_range(-200.0, 100.0)
	instance.pipe_collision.connect(kill_player_fn)
	add_child(instance)

func _on_timer_timeout():
	spawn_pipes()

func kill_player_fn():
	kill_player.emit()

func _on_h_slider_value_changed(value):
	Speed.speed = value
